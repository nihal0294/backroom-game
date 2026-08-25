"""Level 0 geometry-only blockout.

Room+corridor graph (not occupancy-fill). BoxMesh walls 0.12 m.
No kit walls, no fluorescents, no PBR, no props.
Source of truth: docs/levels/level-0-blueprint.md
"""

from __future__ import annotations

import math
import os
import sys
from collections import defaultdict
from dataclasses import dataclass, field

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
OUT_PATH = os.path.join(ROOT, "scenes", "levels", "level_0_test.tscn")
ASCII_GF = os.path.join(ROOT, "docs", "levels", "level-0-ascii-gf.txt")
ASCII_UF = os.path.join(ROOT, "docs", "levels", "level-0-ascii-uf.txt")

GRID = 0.6
WALL_T = 0.12
FLOOR_T = 0.10
CEIL_T = 0.10
ROOM_H = 3.0
UPPER_Y = 3.0
ROOF_Y = 6.0
RAIL_H = 1.10
OPEN_WIDTHS = (1.2, 1.5, 1.8, 1.8, 2.4, 2.4, 3.0)

# Stair: two flights of 9, rise 0.166667, tread 0.28
STEP_RISE = 1.5 / 9.0
STEP_TREAD = 0.28
STEPS_PER = 9
FLIGHT_RUN = STEPS_PER * STEP_TREAD  # 2.52
FLIGHT_RISE = 1.5
FLIGHT_W = 1.20
LANDING_D = 1.20
WELL = 4.8


def snap(m: float) -> float:
    return round(m / GRID) * GRID


def cell(m: float) -> int:
    return int(round(snap(m) / GRID))


def fmt(v: float) -> str:
    r = round(float(v), 5)
    if abs(r - round(r)) < 1e-9:
        return str(int(round(r)))
    return f"{r:.5f}".rstrip("0").rstrip(".")


def xform(x: float, y: float, z: float, yaw_deg: float = 0.0, pitch_deg: float = 0.0) -> str:
    yaw = math.radians(yaw_deg)
    pitch = math.radians(pitch_deg)
    cy, sy = math.cos(yaw), math.sin(yaw)
    cp, sp = math.cos(pitch), math.sin(pitch)
    xx, yx, zx = cy, 0.0, -sy
    xy, yy, zy = sy * sp, cp, cy * sp
    xz, yz, zz = sy * cp, -sp, cy * cp
    if abs(pitch_deg) < 1e-6:
        xy = zy = xz = yz = 0.0
        yy = 1.0
        xx, zx, xz, zz = cy, -sy, sy, cy
    vals = [xx, yx, zx, xy, yy, zy, xz, yz, zz, x, y, z]
    return "Transform3D(" + ", ".join(fmt(v) if abs(v) > 1e-9 else "0" for v in vals) + ")"


@dataclass
class Space:
    sid: str
    region: str
    floor: int
    kind: str
    cells: set = field(default_factory=set)
    rects: list = field(default_factory=list)


SPACES: dict[str, Space] = {}
OCC: dict[tuple[int, int, int], str] = {}  # (floor,i,j) -> sid
HOLES: set[tuple[int, int]] = set()  # UF cells with no floor (stair / DH)
LINKS: list[tuple[str, str, float | None]] = []
PARTITIONS: list[dict] = []
STAIRS: list[dict] = []
ERRORS: list[str] = []


def fill(sid: str, region: str, floor: int, x: float, z: float, w: float, d: float, kind: str = "room") -> None:
    x, z, w, d = snap(x), snap(z), snap(w), snap(d)
    if w <= 0 or d <= 0:
        ERRORS.append(f"empty rect {sid} {x},{z} {w}x{d}")
        return
    i0, j0 = cell(x), cell(z)
    i1, j1 = cell(x + w), cell(z + d)
    if sid not in SPACES:
        SPACES[sid] = Space(sid, region, floor, kind)
    sp = SPACES[sid]
    if sp.floor != floor:
        ERRORS.append(f"{sid} floor mismatch")
    sp.rects.append((x, z, w, d))
    for i in range(i0, i1):
        for j in range(j0, j1):
            key = (floor, i, j)
            prev = OCC.get(key)
            if prev and prev != sid:
                ERRORS.append(f"overlap {prev} AND {sid} cell=({i},{j}) m=({i * GRID:.1f},{j * GRID:.1f})")
                continue
            OCC[key] = sid
            sp.cells.add((i, j))


def hole(x: float, z: float, w: float, d: float) -> None:
    x, z, w, d = snap(x), snap(z), snap(w), snap(d)
    for i in range(cell(x), cell(x + w)):
        for j in range(cell(z), cell(z + d)):
            HOLES.add((i, j))
            uf = (1, i, j)
            if uf in OCC:
                sid = OCC.pop(uf)
                SPACES[sid].cells.discard((i, j))


def link(a: str, b: str, width: float | None = None) -> None:
    LINKS.append((a, b, width))


def partition(floor: int, x: float, z: float, axis: str, length: float, region: str) -> None:
    PARTITIONS.append(
        {"floor": floor, "x": snap(x), "z": snap(z), "axis": axis, "length": snap(length), "region": region}
    )


def pick_width(a: str, b: str, shared: float) -> float:
    h = abs(hash((a, b))) if a < b else abs(hash((b, a)))
    w = OPEN_WIDTHS[h % len(OPEN_WIDTHS)]
    max_w = max(1.2, shared - 0.6)
    return min(w, max_w)


def is_connector(kind: str) -> bool:
    return kind in ("corridor", "stairwell", "landing")


# ---------------------------------------------------------------------------
# Layout — Ground Floor (BR Movie Map)
# ---------------------------------------------------------------------------

def build_ground() -> None:
    A, B, C, D, E, F, G, H, I = (
        "GF_A_NORTH_CORRIDOR",
        "GF_B_WEST_COMPLEX",
        "GF_C_CENTRAL_MAZE",
        "GF_D_CENTRAL_ROOM",
        "GF_E_EAST_LARGE_ROOM",
        "GF_F_NORTHEAST_COMPLEX",
        "GF_G_SOUTHEAST_COMPLEX",
        "GF_H_SOUTH_CENTRAL",
        "GF_I_SOUTHWEST_BRANCH",
    )

    # 1. Long north spine + west hook
    fill("A_SPINE", A, 0, 6.0, 87.0, 114.0, 3.0, "corridor")
    fill("A_SPINE", A, 0, 6.0, 78.0, 3.0, 9.0, "corridor")

    fill("STAIR_A", A, 0, 12.0, 90.0, WELL, WELL, "stairwell")
    fill("STAIR_B", A, 0, 52.8, 90.0, WELL, WELL, "stairwell")
    STAIRS.append({"id": "STAIR_A", "x": 12.0, "z": 90.0, "yaw": 0.0, "gf": "A_SPINE", "uf": "UF_A_SPINE"})
    STAIRS.append({"id": "STAIR_B", "x": 52.8, "z": 90.0, "yaw": 0.0, "gf": "A_SPINE", "uf": "UF_A_SPINE"})

    fill("A_R01", A, 0, 19.2, 90.0, 7.2, 6.0, "room")
    fill("A_R02", A, 0, 36.0, 90.0, 7.2, 4.8, "room")
    fill("A_R03", A, 0, 62.4, 90.0, 7.2, 6.0, "room")
    fill("A_R04", A, 0, 90.0, 90.0, 7.2, 4.8, "room")
    fill("A_R_NDEAD", A, 0, 108.0, 90.0, 6.0, 4.8, "room")
    fill("A_R05", A, 0, 12.0, 78.0, 7.2, 9.0, "room")
    fill("A_R06", A, 0, 28.8, 81.0, 6.0, 6.0, "room")
    fill("A_R07", A, 0, 72.0, 78.0, 9.0, 9.0, "room")
    fill("A_STUB_E", A, 0, 120.0, 87.0, 6.0, 3.0, "corridor")  # short east stub of spine

    # 2–3. West vertical + west cluster + unmapped west dead-ends
    fill("B_VERT", B, 0, 6.0, 18.0, 3.0, 60.0, "corridor")  # z 18–78, meets A hook
    fill("B_COR_H", B, 0, 9.0, 60.0, 27.0, 2.4, "corridor")

    fill("B_DEAD_W1", B, 0, 0.0, 54.0, 6.0, 7.2, "room")
    fill("B_DEAD_W2", B, 0, 0.0, 42.0, 6.0, 6.0, "room")
    fill("B_DEAD_W3", B, 0, 0.0, 66.0, 6.0, 6.0, "room")

    fill("B_R01", B, 0, 9.0, 62.4, 9.0, 9.0, "room")
    fill("B_R02", B, 0, 18.0, 62.4, 10.8, 9.0, "room")
    fill("B_R08", B, 0, 9.0, 71.4, 7.2, 6.6, "room")
    fill("B_R03", B, 0, 9.0, 48.0, 9.0, 12.0, "room")
    fill("B_DHALL", B, 0, 18.0, 48.0, 10.8, 12.0, "double_height")
    fill("B_R05", B, 0, 9.0, 36.0, 10.8, 12.0, "room")
    fill("B_R06", B, 0, 19.8, 36.0, 9.0, 12.0, "room")
    fill("B_R07", B, 0, 28.8, 52.8, 7.2, 7.2, "room")
    fill("B_R09", B, 0, 28.8, 36.0, 7.2, 12.0, "room")
    fill("B_TO_C", B, 0, 28.8, 48.0, 7.2, 4.8, "corridor")
    fill("B_STUB_N", B, 0, 28.8, 71.4, 6.0, 3.0, "corridor")

    # double-height visual well (not a stair)
    hole(19.8, 49.8, 7.2, 8.4)

    # 4–5. Central maze (dense 4×4)
    add_maze("C", C, 0, 36.0, 48.0, 4, 4, 6.0, 6.0, 2.4)
    fill("C_TO_A", C, 0, 40.8, 79.2, 4.8, 7.8, "corridor")
    fill("C_R_N1", C, 0, 36.0, 79.2, 4.8, 7.8, "room")
    fill("C_R_N2", C, 0, 45.6, 79.2, 7.2, 7.8, "room")
    fill("C_TO_H", C, 0, 42.0, 45.0, 3.0, 3.0, "corridor")

    # 6. Central chamber
    fill("D_MAIN", D, 0, 67.2, 52.8, 15.0, 16.8, "room")
    fill("D_ALC_N", D, 0, 67.2, 69.6, 10.8, 4.8, "room")
    fill("D_ALC_E", D, 0, 82.2, 57.6, 4.8, 9.0, "room")
    fill("D_LINK_E", D, 0, 87.0, 60.0, 4.8, 3.0, "corridor")
    partition(0, 72.0, 57.6, "z", 7.2, D)
    link("C_R13", "D_MAIN", 1.8)
    link("C_R23", "D_MAIN", 2.4)
    link("C_R33", "D_ALC_N", 1.8)
    link("D_MAIN", "D_ALC_N", 3.0)
    link("D_MAIN", "D_ALC_E", 2.4)

    # 8. East large structured room
    fill("E_MAIN", E, 0, 91.8, 51.0, 24.0, 18.0, "room")
    partition(0, 99.0, 64.2, "z", 4.8, E)  # from north down
    partition(0, 108.0, 64.2, "z", 4.8, E)
    partition(0, 96.0, 51.0, "z", 4.8, E)  # from south up
    partition(0, 106.2, 51.0, "z", 4.8, E)
    link("D_LINK_E", "E_MAIN", 3.0)

    # 9. NE complex
    add_maze("F", F, 0, 96.0, 69.0, 3, 2, 6.0, 6.0, 2.4)
    fill("F_TO_A", F, 0, 102.0, 83.4, 3.0, 3.6, "corridor")
    fill("F_DEAD_NE", F, 0, 118.8, 72.0, 6.0, 8.4, "room")
    link("E_MAIN", "F_R00", 2.4)
    link("E_MAIN", "F_R01", 1.8)

    # 10–11. SE complex + long east arm
    add_maze("G", G, 0, 91.8, 21.0, 3, 3, 6.0, 6.0, 2.4)
    fill("G_TO_E", G, 0, 102.0, 43.8, 3.0, 7.2, "corridor")
    fill("G_EAST_ARM", G, 0, 114.6, 27.0, 21.6, 3.0, "corridor")
    fill("G_EAST_END", G, 0, 136.2, 25.2, 6.0, 6.6, "room")
    fill("G_DEAD_S", G, 0, 108.0, 15.0, 6.0, 6.0, "room")
    link("G_TO_E", "E_MAIN", 3.0)
    link("G_ALLEY", "G_EAST_ARM", 3.0)

    # 12–13. South-central + quadrangular hall
    fill("H_SQUARE", H, 0, 48.0, 15.0, 16.8, 16.8, "room")
    fill("H_R06", H, 0, 40.8, 15.0, 7.2, 16.8, "room")
    fill("H_R04", H, 0, 64.8, 15.0, 9.0, 16.8, "room")
    fill("H_R01", H, 0, 36.0, 33.0, 7.2, 9.0, "room")
    fill("H_R02", H, 0, 43.2, 31.8, 7.8, 10.2, "room")
    fill("H_R03", H, 0, 51.0, 31.8, 9.0, 10.2, "room")
    fill("H_R05", H, 0, 64.8, 31.8, 9.0, 10.2, "room")
    fill("H_COR_N", H, 0, 36.0, 42.0, 37.8, 3.0, "corridor")
    fill("H_TO_G", H, 0, 73.8, 27.0, 18.0, 2.4, "corridor")
    partition(0, 54.0, 15.0, "z", 9.0, H)
    link("H_SQUARE", "H_R02", 2.4)
    link("H_SQUARE", "H_R03", 3.0)
    link("H_SQUARE", "H_R04", 2.4)
    link("H_SQUARE", "H_R06", 1.8)
    link("H_TO_G", "G_ALLEY", 2.4)
    link("C_TO_H", "H_COR_N", 3.0)
    link("B_TO_C", "C_R00", 1.8)

    # 17 / SW branch + STAIR_C
    fill("STAIR_C", I, 0, 9.0, 30.0, WELL, WELL, "stairwell")
    STAIRS.append({"id": "STAIR_C", "x": 9.0, "z": 30.0, "yaw": 90.0, "gf": "B_VERT", "uf": "UF_I_LAND"})
    fill("I_SPAWN", I, 0, 13.8, 22.8, 9.0, 7.2, "room")
    fill("I_R01", I, 0, 13.8, 15.0, 7.2, 6.0, "room")
    fill("I_R02", I, 0, 25.2, 15.0, 7.8, 6.0, "room")
    fill("I_R03", I, 0, 22.8, 22.8, 10.2, 7.2, "room")
    fill("I_R04", I, 0, 13.8, 30.0, 6.0, 6.0, "room")
    fill("I_R05", I, 0, 0.0, 24.0, 6.0, 7.2, "room")
    fill("I_DEAD_SW", I, 0, 0.0, 12.0, 7.2, 6.0, "room")
    fill("I_COR_H", I, 0, 13.8, 21.0, 21.6, 1.8, "corridor")
    fill("I_TO_H", I, 0, 35.4, 21.0, 5.4, 1.8, "corridor")
    link("I_TO_H", "H_R06", 1.8)
    link("I_R04", "B_R05", 1.8)
    link("A_SPINE", "B_VERT", 3.0)
    link("A_SPINE", "C_TO_A", 3.0)
    link("A_SPINE", "F_TO_A", 3.0)
    link("B_VERT", "B_COR_H", 2.4)
    link("B_COR_H", "C_R10", 2.4)
    link("B_R07", "C_R10", 1.8)
    link("C_ALLEY", "C_TO_A", 2.4)
    link("C_ALLEY", "C_TO_H", 2.4)
    link("C_TO_A", "C_R_N1", 1.8)
    link("C_TO_A", "C_R_N2", 1.8)


# ---------------------------------------------------------------------------
# Layout — Upper Floor (17-days map)
# ---------------------------------------------------------------------------

def build_upper() -> None:
    A, B, C, D, E, F, G, H, I = (
        "UF_A_NORTH_BRANCH",
        "UF_B_WEST_SECTOR",
        "UF_C_CENTRAL_MAZE",
        "UF_D_TALL_ROOM",
        "UF_E_EAST_SECTOR",
        "UF_F_NORTHEAST",
        "UF_G_SOUTHEAST",
        "UF_H_SOUTH_BRANCH",
        "UF_I_SOUTHWEST",
    )

    # North branch (receives STAIR_A / STAIR_B on its north edge)
    fill("UF_A_SPINE", A, 1, 6.0, 85.8, 106.8, 4.2, "corridor")
    fill("UF_A_R01", A, 1, 19.2, 90.0, 7.2, 6.0, "room")
    fill("UF_A_R02", A, 1, 36.0, 90.0, 7.2, 5.4, "room")
    fill("UF_A_R03", A, 1, 62.4, 90.0, 7.2, 6.0, "room")
    fill("UF_A_R04", A, 1, 84.0, 90.0, 9.0, 4.8, "room")
    fill("UF_A_DEAD", A, 1, 108.0, 90.0, 7.2, 4.8, "room")
    fill("UF_A_R05", A, 1, 24.0, 76.8, 7.2, 8.4, "room")
    fill("UF_A_R06", A, 1, 48.0, 78.0, 9.0, 7.2, "room")
    fill("UF_A_DROP", A, 1, 72.0, 78.0, 6.0, 7.2, "room")

    # West sector — subdivided, not one hall
    fill("UF_B_COR", B, 1, 6.0, 42.0, 3.0, 43.8, "corridor")
    fill("UF_B_COR_H", B, 1, 9.0, 63.6, 24.0, 2.4, "corridor")
    fill("UF_B_R01", B, 1, 9.0, 66.0, 9.0, 10.8, "room")
    fill("UF_B_R02", B, 1, 18.0, 66.0, 10.8, 10.8, "room")
    fill("UF_B_R03", B, 1, 9.0, 51.6, 9.0, 12.0, "room")
    fill("UF_B_R05", B, 1, 9.0, 42.0, 9.0, 9.6, "room")
    fill("UF_B_R06", B, 1, 18.0, 42.0, 12.6, 6.0, "room")
    fill("UF_B_DEAD", B, 1, 0.0, 54.0, 6.0, 7.2, "room")
    fill("UF_B_STUB", B, 1, 28.8, 72.0, 6.0, 4.8, "room")

    # Tall room / balcony over GF double-height
    fill("UF_D_RING", D, 1, 18.0, 48.0, 10.8, 12.0, "room")
    hole(19.8, 49.8, 7.2, 8.4)

    # Central maze — denser than GF (5.4 rooms / 1.8 alleys)
    add_maze("UC", C, 1, 39.6, 45.6, 4, 4, 5.4, 5.4, 1.8)
    fill("UC_TO_A", C, 1, 45.6, 72.6, 2.4, 13.2, "corridor")
    fill("UC_TO_H", C, 1, 45.0, 42.0, 1.8, 3.6, "corridor")
    fill("UC_TO_E", C, 1, 66.6, 58.2, 6.0, 1.8, "corridor")
    fill("UF_D_TO_C", D, 1, 28.8, 51.0, 10.8, 1.8, "corridor")

    # East sector — several medium rooms, not one open hall
    fill("UF_E_COR", E, 1, 72.6, 48.0, 3.0, 24.0, "corridor")
    fill("UF_E_R01", E, 1, 75.6, 60.0, 12.0, 12.0, "room")
    fill("UF_E_R02", E, 1, 87.6, 60.0, 12.0, 10.8, "room")
    fill("UF_E_R03", E, 1, 75.6, 48.0, 10.8, 12.0, "room")
    fill("UF_E_R04", E, 1, 86.4, 48.0, 15.6, 12.0, "room")
    fill("UF_E_R05", E, 1, 99.6, 60.0, 10.8, 9.6, "room")
    fill("UF_E_COR_S", E, 1, 72.6, 45.6, 27.0, 2.4, "corridor")

    # NE
    add_maze("UF", F, 1, 99.6, 72.0, 3, 2, 5.4, 6.0, 1.8)
    fill("UF_F_DEAD", F, 1, 119.4, 76.8, 6.0, 7.2, "room")
    fill("UF_F_LINK", F, 1, 99.6, 69.6, 12.0, 2.4, "corridor")

    # SE + long east hall
    add_maze("UG", G, 1, 84.0, 21.6, 3, 2, 6.0, 6.0, 2.4)
    fill("UG_EAST_ARM", G, 1, 106.8, 27.6, 25.2, 3.0, "corridor")
    fill("UG_EAST_END", G, 1, 132.0, 25.2, 7.2, 7.2, "room")
    fill("UG_DEAD", G, 1, 96.0, 15.6, 6.0, 6.0, "room")
    fill("UG_TO_E", G, 1, 90.0, 36.0, 3.0, 9.6, "corridor")

    # South branch — pinch and re-widen
    fill("UF_H_COR", H, 1, 39.6, 36.0, 36.0, 6.0, "corridor")
    fill("UF_H_R01", H, 1, 39.6, 24.0, 7.2, 12.0, "room")
    fill("UF_H_R02", H, 1, 46.8, 24.0, 9.0, 12.0, "room")
    fill("UF_H_R03", H, 1, 55.8, 24.0, 7.2, 12.0, "room")
    fill("UF_H_R04", H, 1, 63.0, 24.0, 9.0, 10.8, "room")
    fill("UF_H_R05", H, 1, 48.0, 15.6, 10.8, 8.4, "room")
    fill("UF_H_R06", H, 1, 60.0, 15.6, 9.0, 8.4, "room")
    fill("UF_H_NARROW", H, 1, 72.0, 28.8, 12.0, 1.8, "corridor")
    fill("UF_H_WIDE", H, 1, 72.0, 21.6, 10.8, 7.2, "room")

    # SW + STAIR_C arrival
    fill("UF_I_LAND", I, 1, 13.8, 30.0, 7.2, 6.0, "landing")
    fill("UF_I_COR", I, 1, 6.0, 21.6, 3.0, 20.4, "corridor")
    fill("UF_I_S", I, 1, 9.0, 25.2, 4.8, 4.8, "corridor")
    fill("UF_I_N", I, 1, 9.0, 34.8, 4.8, 7.2, "corridor")
    fill("UF_I_R01", I, 1, 13.8, 21.6, 9.0, 8.4, "room")
    fill("UF_I_R02", I, 1, 22.8, 21.6, 9.0, 8.4, "room")
    fill("UF_I_R03", I, 1, 13.8, 15.0, 7.2, 6.6, "room")
    fill("UF_I_DEAD", I, 1, 0.0, 24.0, 6.0, 7.2, "room")
    fill("UF_I_TO_H", I, 1, 31.8, 24.0, 7.8, 2.4, "corridor")

    # stair holes (well interiors have no UF floor)
    hole(12.0, 90.0, WELL, WELL)
    hole(52.8, 90.0, WELL, WELL)
    hole(9.0, 30.0, WELL, WELL)

    link("UF_A_SPINE", "UC_TO_A", 2.4)
    link("UF_A_SPINE", "UF_B_COR", 3.0)
    link("UF_B_COR", "UF_B_COR_H", 2.4)
    link("UF_B_R03", "UF_D_RING", 1.8)
    link("UF_D_TO_C", "UC_ALLEY", 1.8)
    link("UC_ALLEY", "UC_TO_A", 2.4)
    link("UC_ALLEY", "UC_TO_H", 2.4)
    link("UC_ALLEY", "UC_TO_E", 2.4)
    link("UC_TO_E", "UF_E_COR", 2.4)
    link("UF_E_COR", "UF_E_COR_S", 2.4)
    link("UF_E_COR_S", "UG_TO_E", 2.4)
    link("UG_TO_E", "UG_ALLEY", 2.4)
    link("UG_ALLEY", "UG_EAST_ARM", 3.0)
    link("UC_TO_H", "UF_H_COR", 2.4)
    link("UF_H_NARROW", "UG_ALLEY", 1.8)
    link("UF_I_TO_H", "UF_H_R01", 1.8)
    link("UF_I_COR", "UF_B_COR", 3.0)
    link("UF_F_LINK", "UF_ALLEY", 2.4)
    link("UF_F_LINK", "UF_E_R05", 1.8)
    link("UF_E_R01", "UF_E_R02", 1.8)
    link("UF_E_R03", "UF_E_R04", 2.4)
    link("UF_H_R02", "UF_H_R05", 2.4)
    link("UF_H_R04", "UF_H_R06", 1.8)
    link("UF_H_R04", "UF_H_WIDE", 1.8)


def add_maze(
    prefix: str,
    region: str,
    floor: int,
    ox: float,
    oz: float,
    cols: int,
    rows: int,
    room_w: float,
    room_d: float,
    alley: float,
) -> None:
    alley_id = f"{prefix}_ALLEY"
    for r in range(rows):
        for c in range(cols):
            rx = ox + c * (room_w + alley)
            rz = oz + r * (room_d + alley)
            fill(f"{prefix}_R{r}{c}", region, floor, rx, rz, room_w, room_d, "room")
    for r in range(rows - 1):
        hz = oz + room_d + r * (room_d + alley)
        total_w = cols * room_w + (cols - 1) * alley
        fill(alley_id, region, floor, ox, hz, total_w, alley, "corridor")
    for c in range(cols - 1):
        vx = ox + room_w + c * (room_w + alley)
        for r in range(rows):
            rz = oz + r * (room_d + alley)
            fill(alley_id, region, floor, vx, rz, alley, room_d, "corridor")


# ---------------------------------------------------------------------------
# Openings
# ---------------------------------------------------------------------------

def shared_runs(a: Space, b: Space) -> list[tuple[str, float, float, float]]:
    """Return merged shared boundaries: (axis, pos, t0, t1).
    axis 'x' = wall along X at z=pos; axis 'z' = wall along Z at x=pos.
    """
    ca, cb = a.cells, b.cells
    raw: dict[tuple[str, float], list[tuple[float, float]]] = defaultdict(list)
    for i, j in ca:
        for di, dj, axis, pos, t0, t1 in (
            (0, -1, "x", j * GRID, i * GRID, (i + 1) * GRID),
            (0, 1, "x", (j + 1) * GRID, i * GRID, (i + 1) * GRID),
            (-1, 0, "z", i * GRID, j * GRID, (j + 1) * GRID),
            (1, 0, "z", (i + 1) * GRID, j * GRID, (j + 1) * GRID),
        ):
            if (i + di, j + dj) in cb:
                raw[(axis, pos)].append((t0, t1))
    runs: list[tuple[str, float, float, float]] = []
    for (axis, pos), segs in raw.items():
        segs.sort()
        cur0, cur1 = segs[0]
        for s0, s1 in segs[1:]:
            if s0 <= cur1 + 1e-6:
                cur1 = max(cur1, s1)
            else:
                runs.append((axis, pos, cur0, cur1))
                cur0, cur1 = s0, s1
        runs.append((axis, pos, cur0, cur1))
    return runs


def collect_openings() -> dict[tuple[str, float, float, float], None]:
    """Set of wall-edge keys that should be GAPS: (axis, pos, t0, t1) covering GRID-length pieces."""
    gaps: set[tuple[str, int, int, int]] = set()
    # discretize to grid edges: (axis, pos_i, t_i)

    def mark_interval(axis: str, pos: float, t0: float, t1: float) -> None:
        p = cell(pos)
        a0, a1 = cell(t0), cell(t1)
        for t in range(a0, a1):
            gaps.add((axis, p, t))

    pairs: set[tuple[str, str]] = set()
    # explicit links
    for a, b, w in LINKS:
        if a not in SPACES or b not in SPACES:
            ERRORS.append(f"link missing space {a}–{b}")
            continue
        if SPACES[a].floor != SPACES[b].floor:
            continue
        pairs.add(tuple(sorted((a, b))))  # type: ignore
        runs = shared_runs(SPACES[a], SPACES[b])
        if not runs:
            ERRORS.append(f"link has no shared edge {a}–{b}")
            continue
        runs.sort(key=lambda r: r[3] - r[2], reverse=True)
        axis, pos, t0, t1 = runs[0]
        shared = t1 - t0
        width = w if w is not None else pick_width(a, b, shared)
        width = min(width, shared)
        mid = (t0 + t1) * 0.5
        mark_interval(axis, pos, mid - width * 0.5, mid + width * 0.5)

    # auto room↔connector and connector↔connector
    ids = list(SPACES)
    for i, sa in enumerate(ids):
        a = SPACES[sa]
        for sb in ids[i + 1 :]:
            b = SPACES[sb]
            if a.floor != b.floor:
                continue
            pair = tuple(sorted((sa, sb)))
            if pair in pairs:
                continue
            if a.kind == "room" and b.kind == "room":
                continue
            if a.kind == "double_height" and b.kind == "room":
                # treat DH as room unless linked
                if not (is_connector(a.kind) or is_connector(b.kind)):
                    # DH ↔ connector still auto
                    if not (is_connector(a.kind) or is_connector(b.kind)):
                        pass
            aa_conn = is_connector(a.kind) or a.kind == "double_height"
            bb_conn = is_connector(b.kind) or b.kind == "double_height"
            # auto if at least one is a connector (or DH treated as room with connector)
            roomish = ("room", "double_height")
            if a.kind in roomish and b.kind in roomish:
                continue
            runs = shared_runs(a, b)
            if not runs:
                continue
            runs.sort(key=lambda r: r[3] - r[2], reverse=True)
            axis, pos, t0, t1 = runs[0]
            shared = t1 - t0
            if shared < 1.2 - 1e-6:
                continue
            if is_connector(a.kind) and is_connector(b.kind):
                width = min(shared, max(2.4, shared - 0.6))
            else:
                width = pick_width(sa, sb, shared)
            mid = (t0 + t1) * 0.5
            mark_interval(axis, pos, mid - width * 0.5, mid + width * 0.5)

    return gaps  # type: ignore


# ---------------------------------------------------------------------------
# Walls from occupancy
# ---------------------------------------------------------------------------

def owner(floor: int, i: int, j: int) -> str | None:
    return OCC.get((floor, i, j))


def walkable(floor: int, i: int, j: int) -> bool:
    if floor == 1 and (i, j) in HOLES:
        return False
    return (floor, i, j) in OCC


def build_wall_segments(gaps: set) -> list[dict]:
    """Merge collinear solid edges into segments."""
    # edge occupancy: (floor, axis, pos_cell, t_cell) -> True if wall
    edges: dict[tuple[int, str, int, int], str] = {}

    def consider(floor: int, i: int, j: int, ni: int, nj: int, axis: str, pos_i: int, t_i: int) -> None:
        a = owner(floor, i, j)
        if not a:
            return
        b = owner(floor, ni, nj)
        if b == a:
            return
        # opening?
        if (axis, pos_i, t_i) in gaps:
            return
        # if neighbor is walkable different space: interior wall
        # if neighbor empty: exterior wall
        edges[(floor, axis, pos_i, t_i)] = a

    max_i = max((i for f, i, j in OCC), default=0) + 2
    max_j = max((j for f, i, j in OCC), default=0) + 2
    min_i = min((i for f, i, j in OCC), default=0) - 1
    min_j = min((j for f, i, j in OCC), default=0) - 1

    for floor in (0, 1):
        for i in range(min_i, max_i):
            for j in range(min_j, max_j):
                if not owner(floor, i, j):
                    continue
                # -Z edge (axis x at z = j)
                consider(floor, i, j, i, j - 1, "x", j, i)
                # +Z edge (axis x at z = j+1)
                consider(floor, i, j, i, j + 1, "x", j + 1, i)
                # -X edge (axis z at x = i)
                consider(floor, i, j, i - 1, j, "z", i, j)
                # +X edge (axis z at x = i+1)
                consider(floor, i, j, i + 1, j, "z", i + 1, j)

    # merge
    segs: list[dict] = []
    used: set[tuple[int, str, int, int]] = set()
    for key in sorted(edges):
        if key in used:
            continue
        floor, axis, pos_i, t_i = key
        sid = edges[key]
        t1 = t_i + 1
        used.add(key)
        while (floor, axis, pos_i, t1) in edges and edges[(floor, axis, pos_i, t1)] == sid:
            used.add((floor, axis, pos_i, t1))
            t1 += 1
        length = (t1 - t_i) * GRID
        if length < 0.3:
            continue
        y_base = 0.0 if floor == 0 else UPPER_Y
        region = SPACES[sid].region
        segs.append(
            {
                "floor": floor,
                "axis": axis,
                "pos": pos_i * GRID,
                "t0": t_i * GRID,
                "t1": t1 * GRID,
                "y": y_base,
                "h": ROOM_H,
                "kind": "wall",
                "region": region,
                "sid": sid,
            }
        )

    # rails: UF walkable vs hole
    rail_edges: dict[tuple[str, int, int], str] = {}
    for i, j in HOLES:
        for ni, nj, axis, pos_i, t_i in (
            (i, j - 1, "x", j, i),
            (i, j + 1, "x", j + 1, i),
            (i - 1, j, "z", i, j),
            (i + 1, j, "z", i + 1, j),
        ):
            oid = owner(1, ni, nj)
            if not oid:
                continue
            if (axis, pos_i, t_i) in gaps:
                continue
            rail_edges[(axis, pos_i, t_i)] = oid
    used_r: set[tuple[str, int, int]] = set()
    for key in sorted(rail_edges):
        if key in used_r:
            continue
        axis, pos_i, t_i = key
        sid = rail_edges[key]
        t1 = t_i + 1
        used_r.add(key)
        while (axis, pos_i, t1) in rail_edges and rail_edges[(axis, pos_i, t1)] == sid:
            used_r.add((axis, pos_i, t1))
            t1 += 1
        length = (t1 - t_i) * GRID
        if length < 0.3:
            continue
        segs.append(
            {
                "floor": 1,
                "axis": axis,
                "pos": pos_i * GRID,
                "t0": t_i * GRID,
                "t1": t1 * GRID,
                "y": UPPER_Y,
                "h": RAIL_H,
                "kind": "rail",
                "region": SPACES[sid].region,
                "sid": sid,
            }
        )

    # 6 m shaft walls: hole vs true exterior void (no GF either)
    shaft_edges: dict[tuple[str, int, int], str] = {}
    for i, j in HOLES:
        gf_id = owner(0, i, j)
        for ni, nj, axis, pos_i, t_i in (
            (i, j - 1, "x", j, i),
            (i, j + 1, "x", j + 1, i),
            (i - 1, j, "z", i, j),
            (i + 1, j, "z", i + 1, j),
        ):
            if owner(1, ni, nj) or owner(0, ni, nj):
                continue
            if (axis, pos_i, t_i) in gaps:
                continue
            shaft_edges[(axis, pos_i, t_i)] = gf_id or "STAIRWELL"
    used_s: set[tuple[str, int, int]] = set()
    for key in sorted(shaft_edges):
        if key in used_s:
            continue
        axis, pos_i, t_i = key
        sid = shaft_edges[key]
        t1 = t_i + 1
        used_s.add(key)
        while (axis, pos_i, t1) in shaft_edges and shaft_edges[(axis, pos_i, t1)] == sid:
            used_s.add((axis, pos_i, t1))
            t1 += 1
        region = SPACES[sid].region if sid in SPACES else "STAIRWELLS"
        segs.append(
            {
                "floor": 0,
                "axis": axis,
                "pos": pos_i * GRID,
                "t0": t_i * GRID,
                "t1": t1 * GRID,
                "y": 0.0,
                "h": ROOF_Y,
                "kind": "shaft",
                "region": region,
                "sid": sid,
            }
        )

    # partitions (interior of a room)
    for p in PARTITIONS:
        axis = "z" if p["axis"] == "z" else "x"
        if axis == "z":
            # wall along Z at x, from z to z+length
            segs.append(
                {
                    "floor": p["floor"],
                    "axis": "z",
                    "pos": p["x"],
                    "t0": p["z"],
                    "t1": p["z"] + p["length"],
                    "y": 0.0 if p["floor"] == 0 else UPPER_Y,
                    "h": ROOM_H,
                    "kind": "wall",
                    "region": p["region"],
                    "sid": "partition",
                }
            )
        else:
            segs.append(
                {
                    "floor": p["floor"],
                    "axis": "x",
                    "pos": p["z"],
                    "t0": p["x"],
                    "t1": p["x"] + p["length"],
                    "y": 0.0 if p["floor"] == 0 else UPPER_Y,
                    "h": ROOM_H,
                    "kind": "wall",
                    "region": p["region"],
                    "sid": "partition",
                }
            )

    # merge stacked GF+UF coplanar full-height walls into 6 m
    # (optional visual cleanup — skip rails/shafts)
    return segs


# ---------------------------------------------------------------------------
# Stairs
# ---------------------------------------------------------------------------

def stair_pieces(st: dict) -> list[dict]:
    """Return box dicts in world space: {x,y,z,sx,sy,sz,yaw,pitch,mat,col} centers."""
    wx, wz, yaw = st["x"], st["z"], st["yaw"]
    cx, cz = wx + WELL * 0.5, wz + WELL * 0.5
    rad = math.radians(yaw)

    def rw(lx: float, lz: float) -> tuple[float, float]:
        # local 0..WELL, origin SW, rotate around well center
        dx, dz = lx - WELL * 0.5, lz - WELL * 0.5
        rx = dx * math.cos(rad) - dz * math.sin(rad)
        rz = dx * math.sin(rad) + dz * math.cos(rad)
        return cx + rx, cz + rz

    def rbox(lx: float, y: float, lz: float, sx: float, sy: float, sz: float, pitch: float = 0.0) -> dict:
        x, z = rw(lx, lz)
        return {
            "x": x,
            "y": y,
            "z": z,
            "sx": sx,
            "sy": sy,
            "sz": sz,
            "yaw": yaw,
            "pitch": pitch,
            "mat": "stair",
            "col": True,
        }

    out: list[dict] = []
    # local layout (yaw=0, entrance south / -Z of well... local z=0 is south)
    # Flight 1: x 0.42–1.62, z 0.42–2.94, walk +Z up
    f1x = 0.42 + FLIGHT_W * 0.5
    f2x = 0.42 + FLIGHT_W + 0.42 + FLIGHT_W * 0.5
    z0 = 0.42
    # visual steps flight 1
    for i in range(STEPS_PER):
        ly = i * STEP_RISE + STEP_RISE * 0.5
        lz = z0 + i * STEP_TREAD + STEP_TREAD * 0.5
        out.append(rbox(f1x, ly, lz, FLIGHT_W, STEP_RISE, STEP_TREAD))
        out[-1]["col"] = False
    # landing
    land_x = 0.42 + (FLIGHT_W + 0.42 + FLIGHT_W) * 0.5
    land_z = z0 + FLIGHT_RUN + LANDING_D * 0.5
    land_sx = FLIGHT_W + 0.42 + FLIGHT_W
    out.append(rbox(land_x, FLIGHT_RISE, land_z, land_sx, 0.12, LANDING_D))
    # visual steps flight 2 (walk −Z, y 1.5→3.0)
    for i in range(STEPS_PER):
        ly = FLIGHT_RISE + i * STEP_RISE + STEP_RISE * 0.5
        lz = z0 + FLIGHT_RUN - i * STEP_TREAD - STEP_TREAD * 0.5
        out.append(rbox(f2x, ly, lz, FLIGHT_W, STEP_RISE, STEP_TREAD))
        out[-1]["col"] = False
    # ramp 1: along +Z, pitch so +Z rises
    hyp = math.hypot(FLIGHT_RUN, FLIGHT_RISE)
    ang = math.degrees(math.atan2(FLIGHT_RISE, FLIGHT_RUN))
    r1z = z0 + FLIGHT_RUN * 0.5
    r1y = FLIGHT_RISE * 0.5
    out.append(rbox(f1x, r1y, r1z, FLIGHT_W, 0.14, hyp, pitch=-ang))
    out[-1]["mat"] = "stair"
    out[-1]["invisible"] = True
    # ramp 2: along −Z as y rises → pitch opposite
    r2z = z0 + FLIGHT_RUN * 0.5
    r2y = FLIGHT_RISE + FLIGHT_RISE * 0.5
    out.append(rbox(f2x, r2y, r2z, FLIGHT_W, 0.14, hyp, pitch=ang))
    out[-1]["invisible"] = True
    # solid under landing so the player cannot crawl in
    out.append(rbox(land_x, FLIGHT_RISE * 0.5, land_z, land_sx, FLIGHT_RISE, LANDING_D))
    out[-1]["mat"] = "stair"
    # GF floor of well (in case space floor is split)
    out.append(rbox(WELL * 0.5, -FLOOR_T * 0.5, WELL * 0.5, WELL, FLOOR_T, WELL))
    out[-1]["mat"] = "floor"
    return out


def headroom_report() -> list[str]:
    lines = []
    ceiling_y = ROOF_Y
    min_clear = 999.0
    for st in STAIRS:
        for i in range(STEPS_PER * 2 + 1):
            if i < STEPS_PER:
                y = i * STEP_RISE
            elif i == STEPS_PER:
                y = FLIGHT_RISE
            else:
                y = FLIGHT_RISE + (i - STEPS_PER) * STEP_RISE
            clear = ceiling_y - y
            min_clear = min(min_clear, clear)
            above_head = clear - 1.80
            if clear < 2.10 - 1e-6:
                lines.append(f"FAIL {st['id']} y={y:.2f} clearance={clear:.2f}")
        lines.append(
            f"{st['id']}: min tread-to-ceiling along flights = {min(ceiling_y - 0.0, ceiling_y - FLIGHT_RISE, ceiling_y - 3.0):.2f} m "
            f"(landing 4.50, top 3.00, bottom 6.00)"
        )
    lines.append(f"minimum tread-to-ceiling on stairs: {min(3.0, min_clear):.2f} m (required ≥ 2.10)")
    return lines


# ---------------------------------------------------------------------------
# ASCII + stats
# ---------------------------------------------------------------------------

def bounds():
    cells = [(i, j) for f, i, j in OCC]
    if not cells:
        return 0, 0, 1, 1
    is_ = [c[0] for c in cells]
    js = [c[1] for c in cells]
    return min(is_), min(js), max(is_), max(js)


def ascii_map(floor: int, path: str) -> str:
    i0, j0, i1, j1 = bounds()
    # 3 m per glyph = 5 cells
    step = 5
    region_char = {}
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    n = 0
    for sp in SPACES.values():
        if sp.region not in region_char:
            region_char[sp.region] = letters[n % 26]
            n += 1
    rows = []
    for j in range(j1, j0 - 1, -step):
        row = []
        for i in range(i0, i1 + 1, step):
            ch = "."
            sid = owner(floor, i, j)
            if floor == 1 and (i, j) in HOLES:
                ch = "*"
            elif sid:
                sp = SPACES[sid]
                if sp.kind == "stairwell":
                    ch = "S"
                elif sp.kind == "double_height":
                    ch = "*"
                elif sp.kind == "corridor":
                    ch = "="
                else:
                    ch = region_char.get(sp.region, "?")
            row.append(ch)
        rows.append("".join(row))
    header = (
        f"floor={floor}  1 glyph ≈ 3.0 m  origin SW  north=up\n"
        f"legend: .=void  ==corridor  S=stair  *=hole/DH  letter=region\n"
        + " ".join(f"{c}={r}" for r, c in region_char.items())
        + "\n"
    )
    text = header + "\n".join(rows) + "\n"
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        f.write(text)
    return text


def stats() -> dict:
    rooms_gf = [s for s in SPACES.values() if s.floor == 0 and s.kind in ("room", "double_height")]
    rooms_uf = [s for s in SPACES.values() if s.floor == 1 and s.kind in ("room", "double_height", "landing")]
    corr_gf = [s for s in SPACES.values() if s.floor == 0 and s.kind == "corridor"]
    # intersections: corridor cell with 3+ walkable neighbors
    inter = {0: 0, 1: 0}
    for floor in (0, 1):
        for (f, i, j), sid in OCC.items():
            if f != floor:
                continue
            if SPACES[sid].kind != "corridor":
                continue
            n = 0
            for di, dj in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                if walkable(floor, i + di, j + dj):
                    n += 1
            if n >= 3:
                inter[floor] += 1
    # loops: maze faces
    loops_gf = (4 - 1) * (4 - 1) + (3 - 1) * (2 - 1) + (3 - 1) * (3 - 1) + 2  # C + F + G + B/H
    loops_uf = (4 - 1) * (4 - 1) + (3 - 1) * (2 - 1) + (3 - 1) * (2 - 1) + 2
    # walkable AABB
    def aabb(floor):
        cells = [(i, j) for f, i, j in OCC if f == floor]
        if not cells:
            return 0, 0
        xs = [i * GRID for i, _ in cells]
        zs = [j * GRID for _, j in cells]
        return max(xs) + GRID - min(xs), max(zs) + GRID - min(zs)

    gw, gd = aabb(0)
    uw, ud = aabb(1)
    # density: walkable cells whose 4-neighborhood is not all walkable same-space (near architecture)
    near = {0: 0, 1: 0}
    tot = {0: 0, 1: 0}
    for (f, i, j), sid in OCC.items():
        tot[f] += 1
        if any(owner(f, i + di, j + dj) != sid for di, dj in ((1, 0), (-1, 0), (0, 1), (0, -1), (0, 0))):
            near[f] += 1
        else:
            # interior cell: still "near" if within 2.4 m of a different owner / void
            found = False
            reach = int(2.4 / GRID)
            for di in range(-reach, reach + 1):
                for dj in range(-reach, reach + 1):
                    if owner(f, i + di, j + dj) != sid:
                        found = True
                        break
                if found:
                    break
            if found:
                near[f] += 1
    return {
        "rooms_gf": len(rooms_gf),
        "rooms_uf": len(rooms_uf),
        "corr_gf": len(corr_gf),
        "inter_gf": inter[0],
        "inter_uf": inter[1],
        "loops_gf": loops_gf,
        "loops_uf": loops_uf,
        "gf_size": (gw, gd),
        "uf_size": (uw, ud),
        "near_gf": near[0] / max(1, tot[0]),
        "near_uf": near[1] / max(1, tot[1]),
        "walk_gf": tot[0],
        "walk_uf": tot[1],
        "spaces": len(SPACES),
        "regions_gf": sorted({s.region for s in SPACES.values() if s.floor == 0}),
        "regions_uf": sorted({s.region for s in SPACES.values() if s.floor == 1}),
    }


# ---------------------------------------------------------------------------
# Emit tscn
# ---------------------------------------------------------------------------

MATS = {
    "wall": ("WALL_PLACEHOLDER", "Color(0.76, 0.70, 0.45, 1)"),
    "floor": ("FLOOR_PLACEHOLDER", "Color(0.70, 0.60, 0.32, 1)"),
    "ceil": ("CEILING_PLACEHOLDER", "Color(0.86, 0.83, 0.72, 1)"),
    "stair": ("STAIR_PLACEHOLDER", "Color(0.62, 0.55, 0.36, 1)"),
    "rail": ("WALL_PLACEHOLDER", "Color(0.76, 0.70, 0.45, 1)"),
    "shaft": ("WALL_PLACEHOLDER", "Color(0.76, 0.70, 0.45, 1)"),
}


class Emitter:
    def __init__(self) -> None:
        self.meshes: dict[tuple, str] = {}
        self.shapes: dict[tuple, str] = {}
        self.sub: list[str] = []
        self.nodes: list[str] = []
        self.n = 0
        self.parent_created: set[str] = set()

    def _size_id(self, kind: str, sx: float, sy: float, sz: float) -> str:
        key = (kind, round(sx, 4), round(sy, 4), round(sz, 4))
        if key in self.meshes:
            return self.meshes[key]
        mid = f"{kind}_{len(self.meshes)}"
        self.meshes[key] = mid
        if kind == "mesh":
            self.sub.append(f'[sub_resource type="BoxMesh" id="{mid}"]')
            self.sub.append(f"size = Vector3({fmt(sx)}, {fmt(sy)}, {fmt(sz)})")
            self.sub.append("")
        else:
            self.sub.append(f'[sub_resource type="BoxShape3D" id="{mid}"]')
            self.sub.append(f"size = Vector3({fmt(sx)}, {fmt(sy)}, {fmt(sz)})")
            self.sub.append("")
        return mid

    def ensure_parent(self, path: str) -> None:
        if path in self.parent_created or path in (".", ""):
            return
        if "/" in path:
            parent, name = path.rsplit("/", 1)
            self.ensure_parent(parent)
            p = parent if parent != "." else "."
            self.nodes.append(f'[node name="{name}" type="Node3D" parent="{p}"]')
        else:
            self.nodes.append(f'[node name="{path}" type="Node3D" parent="."]')
        self.nodes.append("")
        self.parent_created.add(path)

    def box(
        self,
        parent: str,
        name: str,
        x: float,
        y: float,
        z: float,
        sx: float,
        sy: float,
        sz: float,
        mat: str,
        col: bool = True,
        yaw: float = 0.0,
        pitch: float = 0.0,
        invisible: bool = False,
    ) -> None:
        self.ensure_parent(parent)
        self.n += 1
        mid = self._size_id("mesh", sx, sy, sz)
        sid = self._size_id("shape", sx, sy, sz)
        xf = xform(x, y, z, yaw, pitch)
        self.nodes.append(f'[node name="{name}" type="StaticBody3D" parent="{parent}"]')
        self.nodes.append(f"transform = {xf}")
        self.nodes.append("")
        if not invisible:
            self.nodes.append(f'[node name="Mesh" type="MeshInstance3D" parent="{parent}/{name}"]')
            self.nodes.append(f'mesh = SubResource("{mid}")')
            self.nodes.append(f'surface_material_override/0 = SubResource("{MATS[mat][0]}")')
            self.nodes.append("")
        if col:
            self.nodes.append(f'[node name="Col" type="CollisionShape3D" parent="{parent}/{name}"]')
            self.nodes.append(f'shape = SubResource("{sid}")')
            self.nodes.append("")


def emit_floors(em: Emitter) -> None:
    for sp in SPACES.values():
        parent = ("GroundFloor/" if sp.floor == 0 else "UpperFloor/") + sp.region
        y_floor = (0.0 if sp.floor == 0 else UPPER_Y) - FLOOR_T * 0.5
        y_ceil = (ROOM_H if sp.floor == 0 else ROOF_Y) + CEIL_T * 0.5
        skip_ceil = sp.kind in ("stairwell", "double_height") and sp.floor == 0
        # UF ceiling always, including over holes handled separately
        for idx, (x, z, w, d) in enumerate(sp.rects):
            # skip UF floor pieces that are entirely holes — hole() already removed cells;
            # rects may still cover holes. Split per-cell would be heavy: emit rect then
            # that's wrong if hole is inside UF_D_RING.
            if sp.floor == 1 and _rect_has_hole(x, z, w, d):
                for rx, rz, rw, rd in _split_rect_holes(x, z, w, d):
                    cx, cz = rx + rw * 0.5, rz + rd * 0.5
                    em.box(parent, f"{sp.sid}_F{idx}_{cell(rx)}_{cell(rz)}", cx, y_floor, cz, rw, FLOOR_T, rd, "floor")
            else:
                cx, cz = x + w * 0.5, z + d * 0.5
                em.box(parent, f"{sp.sid}_F{idx}", cx, y_floor, cz, w, FLOOR_T, d, "floor")
            if not skip_ceil:
                cx, cz = x + w * 0.5, z + d * 0.5
                ceil_parent = "GroundFloor/_Ceilings" if sp.floor == 0 else "UpperFloor/_Ceilings"
                em.box(ceil_parent, f"{sp.sid}_C{idx}", cx, y_ceil, cz, w, CEIL_T, d, "ceil")
    # Roofs over stair wells (no UF space owns those cells)
    for st in STAIRS:
        cx = st["x"] + WELL * 0.5
        cz = st["z"] + WELL * 0.5
        em.box(
            "Stairwells/_Ceilings",
            f"{st['id']}_Roof",
            cx,
            ROOF_Y + CEIL_T * 0.5,
            cz,
            WELL,
            CEIL_T,
            WELL,
            "ceil",
        )
    # Roof over the GF double-height volume (UF ring ceiling already covers the hole
    # if UF_D_RING rect includes it; skip a second coplanar slab).


def _rect_has_hole(x: float, z: float, w: float, d: float) -> bool:
    for i in range(cell(x), cell(x + w)):
        for j in range(cell(z), cell(z + d)):
            if (i, j) in HOLES:
                return True
    return False


def _split_rect_holes(x: float, z: float, w: float, d: float) -> list[tuple[float, float, float, float]]:
    """Emit 0.6 m floor tiles that are not holes (only used for rects that contain holes)."""
    out = []
    for i in range(cell(x), cell(x + w)):
        for j in range(cell(z), cell(z + d)):
            if (i, j) in HOLES:
                continue
            out.append((i * GRID, j * GRID, GRID, GRID))
    return _merge_rect_tiles(out)


def _merge_rect_tiles(tiles: list[tuple[float, float, float, float]]) -> list[tuple[float, float, float, float]]:
    """Greedy merge of GRID tiles into larger rectangles (row then col)."""
    if not tiles:
        return []
    cells = {(cell(x), cell(z)) for x, z, w, d in tiles}
    used = set()
    rects = []
    for i, j in sorted(cells):
        if (i, j) in used:
            continue
        w = 1
        while (i + w, j) in cells and (i + w, j) not in used:
            w += 1
        d = 1
        grow = True
        while grow:
            for ii in range(i, i + w):
                if (ii, j + d) not in cells or (ii, j + d) in used:
                    grow = False
                    break
            if grow:
                d += 1
        for ii in range(i, i + w):
            for jj in range(j, j + d):
                used.add((ii, jj))
        rects.append((i * GRID, j * GRID, w * GRID, d * GRID))
    return rects


def emit_walls(em: Emitter, segs: list[dict]) -> None:
    n = 0
    for s in segs:
        n += 1
        length = s["t1"] - s["t0"]
        mid = (s["t0"] + s["t1"]) * 0.5
        y = s["y"] + s["h"] * 0.5
        mat = "rail" if s["kind"] == "rail" else "wall"
        if s["region"].startswith("GF"):
            parent = f"GroundFloor/{s['region']}"
        elif s["region"].startswith("UF"):
            parent = f"UpperFloor/{s['region']}"
        else:
            parent = "Stairwells"
        if s["kind"] == "shaft":
            parent = "Stairwells"
        if s["axis"] == "x":
            em.box(parent, f"W{n}", mid, y, s["pos"], length, s["h"], WALL_T, mat)
        else:
            em.box(parent, f"W{n}", s["pos"], y, mid, WALL_T, s["h"], length, mat)


def emit_stairs(em: Emitter) -> None:
    for st in STAIRS:
        parent = f"Stairwells/{st['id']}"
        em.ensure_parent(parent)
        for i, p in enumerate(stair_pieces(st)):
            em.box(
                parent,
                f"P{i}",
                p["x"],
                p["y"],
                p["z"],
                p["sx"],
                p["sy"],
                p["sz"],
                p["mat"],
                col=p.get("col", True),
                yaw=p.get("yaw", 0.0),
                pitch=p.get("pitch", 0.0),
                invisible=p.get("invisible", False),
            )


def emit_labels(em: Emitter, st: dict) -> None:
    # region labels at bbox centers
    for floor, y in ((0, 3.15), (1, 6.15)):
        regions: dict[str, list] = defaultdict(list)
        for sp in SPACES.values():
            if sp.floor != floor:
                continue
            for i, j in sp.cells:
                regions[sp.region].append((i * GRID + GRID * 0.5, j * GRID + GRID * 0.5))
        root = "GroundFloor" if floor == 0 else "UpperFloor"
        for region, pts in regions.items():
            cx = sum(p[0] for p in pts) / len(pts)
            cz = sum(p[1] for p in pts) / len(pts)
            em.ensure_parent(f"{root}/{region}")
            # face +Y so an ortho cam looking down can read them
            em.nodes.append(f'[node name="RegionLabel" type="Label3D" parent="{root}/{region}"]')
            em.nodes.append(
                f"transform = Transform3D(-1, 0, 0, 0, 0, 1, 0, -1, 0, {fmt(cx)}, {fmt(y)}, {fmt(cz)})"
            )
            em.nodes.append(f'text = "{region}"')
            em.nodes.append("font_size = 48")
            em.nodes.append("pixel_size = 0.04")
            em.nodes.append("modulate = Color(0.55, 0.12, 0.12, 1)")
            em.nodes.append("outline_modulate = Color(0, 0, 0, 1)")
            em.nodes.append("outline_size = 6")
            em.nodes.append("no_depth_test = true")
            em.nodes.append('groups = PackedStringArray("region_label")')
            em.nodes.append("")


def write_tscn(em: Emitter, st: dict) -> None:
    spawn_sp = SPACES["I_SPAWN"]
    sx = sum(i * GRID + GRID * 0.5 for i, j in spawn_sp.cells) / len(spawn_sp.cells)
    sz = sum(j * GRID + GRID * 0.5 for i, j in spawn_sp.cells) / len(spawn_sp.cells)

    i0, j0, i1, j1 = bounds()
    cx = (i0 + i1) * 0.5 * GRID
    cz = (j0 + j1) * 0.5 * GRID
    span_z = (j1 - j0 + 1) * GRID
    span_x = (i1 - i0 + 1) * GRID
    ortho = max(span_z, span_x * 9.0 / 16.0) + 20.0

    env = """[sub_resource type="Environment" id="Environment_level0"]
background_mode = 1
background_color = Color(0.18, 0.17, 0.14, 1)
ambient_light_source = 2
ambient_light_color = Color(0.82, 0.78, 0.62, 1)
ambient_light_energy = 0.55
tonemap_mode = 2
"""
    mat_block = []
    for _key, (mid, col) in MATS.items():
        if any(mid in line for line in mat_block):
            continue
        mat_block.append(f'[sub_resource type="StandardMaterial3D" id="{mid}"]')
        mat_block.append(f"albedo_color = {col}")
        mat_block.append("roughness = 0.88")
        mat_block.append("metallic = 0.0")
        mat_block.append("")

    header = [
        "[gd_scene load_steps=PLACEHOLDER format=3]",
        "",
        '[ext_resource type="PackedScene" path="res://scenes/player.tscn" id="1_player"]',
        '[ext_resource type="Script" path="res://scripts/debug/level_0_debug_view.gd" id="2_debug"]',
        "",
        env,
        *mat_block,
        *em.sub,
        '[node name="Level0" type="Node3D"]',
        'script = ExtResource("2_debug")',
        "",
        '[node name="WorldEnvironment" type="WorldEnvironment" parent="."]',
        'environment = SubResource("Environment_level0")',
        "",
        '[node name="DebugSun" type="DirectionalLight3D" parent="."]',
        "transform = Transform3D(0.866, -0.354, 0.354, 0, 0.707, 0.707, -0.5, -0.612, 0.612, 40, 50, 20)",
        "light_energy = 0.65",
        "shadow_enabled = false",
        "",
        '[node name="Player" parent="." instance=ExtResource("1_player")]',
        f"transform = {xform(sx, 0.0, sz)}",
        "",
        '[node name="GroundFloor" type="Node3D" parent="."]',
        "",
        '[node name="UpperFloor" type="Node3D" parent="."]',
        "",
        '[node name="Stairwells" type="Node3D" parent="."]',
        "",
        '[node name="SharedVerticalSpaces" type="Node3D" parent="."]',
        "",
        '[node name="DebugViews" type="Node3D" parent="."]',
        "",
        '[node name="TopDownGround" type="Camera3D" parent="DebugViews"]',
        # Look down (-Y). Local X = -world X so north (+Z) is up in the image.
        f"transform = Transform3D(-1, 0, 0, 0, 0, 1, 0, 1, 0, {fmt(cx)}, 90, {fmt(cz)})",
        "projection = 1",
        f"size = {fmt(ortho)}",
        "near = 0.05",
        "far = 200.0",
        "current = false",
        "",
        '[node name="TopDownUpper" type="Camera3D" parent="DebugViews"]',
        f"transform = Transform3D(-1, 0, 0, 0, 0, 1, 0, 1, 0, {fmt(cx)}, 90, {fmt(cz)})",
        "projection = 1",
        f"size = {fmt(ortho)}",
        "near = 0.05",
        "far = 200.0",
        "current = false",
        "",
    ]
    em.parent_created.update(
        {
            ".",
            "GroundFloor",
            "UpperFloor",
            "Stairwells",
            "SharedVerticalSpaces",
            "DebugViews",
        }
    )

    text = "\n".join(header) + "\n" + "\n".join(em.nodes) + "\n"
    n_ext = sum(1 for line in text.splitlines() if line.startswith("[ext_resource"))
    n_sub = sum(1 for line in text.splitlines() if line.startswith("[sub_resource"))
    text = text.replace("load_steps=PLACEHOLDER", f"load_steps={n_ext + n_sub}", 1)
    os.makedirs(os.path.dirname(OUT_PATH), exist_ok=True)
    with open(OUT_PATH, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)


def main() -> int:
    build_ground()
    build_upper()
    if ERRORS:
        overlap = [e for e in ERRORS if e.startswith("overlap")]
        pairs: dict[str, int] = {}
        for e in overlap:
            # "overlap A AND B cell=..."
            pair = e.split(" cell=")[0]
            pairs[pair] = pairs.get(pair, 0) + 1
        print(f"{len(ERRORS)} layout issues ({len(overlap)} overlap cells, {len(pairs)} pairs)")
        for pair, n in sorted(pairs.items(), key=lambda kv: -kv[1])[:60]:
            print(f"  {pair}  x{n}")
        other = [e for e in ERRORS if not e.startswith("overlap")]
        for e in other[:40]:
            print(" ", e)
        err_path = os.path.join(ROOT, "docs", "levels", "level-0-overlap-log.txt")
        os.makedirs(os.path.dirname(err_path), exist_ok=True)
        with open(err_path, "w", encoding="utf-8") as f:
            f.write("\n".join(ERRORS))
        if overlap:
            print("FATAL: overlaps — refusing to write scene")
            return 1
    gaps = collect_openings()
    segs = build_wall_segments(gaps)
    em = Emitter()
    em.parent_created.update(
        {".", "GroundFloor", "UpperFloor", "Stairwells", "SharedVerticalSpaces", "DebugViews"}
    )
    emit_floors(em)
    emit_walls(em, segs)
    emit_stairs(em)
    st = stats()
    emit_labels(em, st)
    write_tscn(em, st)
    ascii_map(0, ASCII_GF)
    ascii_map(1, ASCII_UF)
    print("wrote", OUT_PATH)
    print("GF AABB m:", tuple(round(x, 1) for x in st["gf_size"]), "walk cells", st["walk_gf"])
    print("UF AABB m:", tuple(round(x, 1) for x in st["uf_size"]), "walk cells", st["walk_uf"])
    print("GF rooms", st["rooms_gf"], "UF rooms", st["rooms_uf"], "spaces", st["spaces"])
    print("GF intersections(cells~)", st["inter_gf"], "UF", st["inter_uf"])
    print("GF loops~", st["loops_gf"], "UF loops~", st["loops_uf"])
    print("near-architecture GF", f"{st['near_gf']*100:.0f}%", "UF", f"{st['near_uf']*100:.0f}%")
    print("GF regions", ", ".join(st["regions_gf"]))
    print("UF regions", ", ".join(st["regions_uf"]))
    for line in headroom_report():
        print(line)
    print("walls/boxes emitted:", em.n)
    if ERRORS:
        print("non-fatal issues:", len(ERRORS))
    return 0


if __name__ == "__main__":
    sys.exit(main())
