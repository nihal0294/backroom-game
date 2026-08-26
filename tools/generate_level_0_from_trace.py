#!/usr/bin/env python3
"""Build Level 0 pilot sector from the master-map trace.

Not a layout generator: occupancy comes from the PNG floor mask.
"""
from __future__ import annotations

import json
import math
import os
from collections import defaultdict
from pathlib import Path

import cv2
import numpy as np
from PIL import Image

from level_0_annotations import ANNOTATIONS, CANON_CONFLICTS, ELEVATION, PILOT, STAIRS

ROOT = Path(__file__).resolve().parents[1]
REF = ROOT / "docs" / "reference" / "level-0" / "level-0-final-map.png"
MASK = ROOT / "docs" / "reference" / "level-0" / "level-0-floor-mask.png"
TRACE = ROOT / "docs" / "levels" / "level-0-final-trace.json"
SECTOR_DIR = ROOT / "scenes" / "levels" / "level_0"
SECTOR_PATH = SECTOR_DIR / "sector_001.tscn"
MAIN_PATH = ROOT / "scenes" / "levels" / "level_0_test.tscn"
AUDIT_PATH = ROOT / "docs" / "levels" / "level-0-pilot-audit.json"
OVERLAY_PATH = ROOT / "docs" / "reference" / "level-0" / "level-0-pilot-overlay.png"

SNAP = 0.5
WALL_T = 0.12
FLOOR_T = 0.10
CEIL_T = 0.10
ROOM_H = 3.0
EMPTY = 0
FLOOR = 1
WATER = 2
GREEN = 3
GREY = 4
PINK = 5


def fmt(v: float) -> str:
    r = round(float(v), 5)
    if abs(r - round(r)) < 1e-9:
        return str(int(round(r)))
    s = f"{r:.5f}".rstrip("0").rstrip(".")
    return s


def xform(x: float, y: float, z: float) -> str:
    return f"Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, {fmt(x)}, {fmt(y)}, {fmt(z)})"


def snap_m(v: float) -> float:
    return round(v / SNAP) * SNAP


def load_trace() -> dict:
    return json.loads(TRACE.read_text(encoding="utf-8"))


def patch_trace(trace: dict) -> dict:
    mpp = trace["scale"]["meters_per_pixel"]
    trace["scale"]["snap_m"] = SNAP

    def to_m(px):
        return [snap_m(px[0] * mpp), snap_m(px[1] * mpp)]

    anns = []
    for a in ANNOTATIONS:
        item = dict(a)
        item["m"] = to_m(a["px"])
        anns.append(item)
    trace["annotations"] = anns
    stairs = []
    for s in STAIRS:
        item = dict(s)
        item["m"] = to_m(s["px"])
        stairs.append(item)
    trace["stairs"] = stairs
    elev = []
    for e in ELEVATION:
        item = dict(e)
        box = e["px_box"]
        item["m_box"] = [
            snap_m(box[0] * mpp),
            snap_m(box[1] * mpp),
            snap_m(box[2] * mpp),
            snap_m(box[3] * mpp),
        ]
        elev.append(item)
    trace["elevation_regions"] = elev
    pb = PILOT["px_box"]
    trace["pilot"] = {
        **PILOT,
        "m_box": [
            snap_m(pb[0] * mpp),
            snap_m(pb[1] * mpp),
            snap_m(pb[2] * mpp),
            snap_m(pb[3] * mpp),
        ],
    }
    trace["canon_conflicts"] = CANON_CONFLICTS
    # Coarser sector grid for future work (~160 m).
    aabb = trace["scale"]["estimated_level_aabb_m"]
    span_x = aabb[2] - aabb[0]
    span_z = aabb[3] - aabb[1]
    nx = max(1, int(math.ceil(span_x / 160.0)))
    nz = max(1, int(math.ceil(span_z / 160.0)))
    sectors = []
    sid = 2
    dx = span_x / nx
    dz = span_z / nz
    for iz in range(nz):
        for ix in range(nx):
            sectors.append({
                "id": f"sector_{sid:03d}",
                "grid": [ix, iz],
                "m_box": [
                    snap_m(aabb[0] + ix * dx),
                    snap_m(aabb[1] + iz * dz),
                    snap_m(aabb[0] + (ix + 1) * dx),
                    snap_m(aabb[1] + (iz + 1) * dz),
                ],
                "built": False,
            })
            sid += 1
    trace["sectors"] = [
        {
            "id": "sector_001",
            "name": PILOT["name"],
            "px_box": PILOT["px_box"],
            "m_box": trace["pilot"]["m_box"],
            "built": True,
            "pilot": True,
        }
    ] + sectors
    trace["pilot_sector_id"] = "sector_001"
    TRACE.write_text(json.dumps(trace, indent=2), encoding="utf-8")
    return trace


def extract_color_masks(rgb: np.ndarray, floor: np.ndarray) -> dict:
    bgr = cv2.cvtColor(rgb, cv2.COLOR_RGB2BGR)
    hsv = cv2.cvtColor(bgr, cv2.COLOR_BGR2HSV)
    H, S, V = hsv[:, :, 0], hsv[:, :, 1], hsv[:, :, 2]
    water = ((H >= 85) & (H <= 130) & (S >= 40) & (V >= 80) & (floor > 0)).astype(np.uint8) * 255
    green = ((H >= 35) & (H <= 85) & (S >= 40) & (V >= 70) & (floor > 0)).astype(np.uint8) * 255
    pink = ((((H <= 10) | (H >= 155)) & (S >= 30) & (V >= 120) & (floor > 0) & (water == 0))).astype(np.uint8) * 255
    grey = ((S < 35) & (V >= 110) & (V < 210) & (floor > 0) & (water == 0)).astype(np.uint8) * 255
    return {"water": water, "green": green, "pink": pink, "grey": grey}


def build_grid(floor, colors, mpp, px_box):
    x0, y0, x1, y1 = px_box
    wx0, wz0 = snap_m(x0 * mpp), snap_m(y0 * mpp)
    wx1, wz1 = snap_m(x1 * mpp), snap_m(y1 * mpp)
    nx = int(round((wx1 - wx0) / SNAP))
    nz = int(round((wz1 - wz0) / SNAP))
    grid = np.zeros((nz, nx), np.uint8)
    h, w = floor.shape
    for iz in range(nz):
        py = int((wz0 + (iz + 0.5) * SNAP) / mpp)
        if py < 0 or py >= h:
            continue
        for ix in range(nx):
            px = int((wx0 + (ix + 0.5) * SNAP) / mpp)
            if px < 0 or px >= w:
                continue
            if floor[py, px] == 0:
                continue
            if colors["water"][py, px]:
                grid[iz, ix] = WATER
            elif colors["green"][py, px]:
                grid[iz, ix] = GREEN
            elif colors["pink"][py, px]:
                grid[iz, ix] = PINK
            elif colors["grey"][py, px]:
                grid[iz, ix] = GREY
            else:
                grid[iz, ix] = FLOOR
    # Close 1-cell pinholes so greedy meshing can form rooms without
    # changing the silhouette at 0.5 m.
    occ = (grid != EMPTY).astype(np.uint8)
    k = np.ones((3, 3), np.uint8)
    occ2 = cv2.morphologyEx(occ, cv2.MORPH_CLOSE, k, iterations=1)
    filled = (occ2 == 1) & (occ == 0)
    grid[filled] = FLOOR
    # Impassably narrow pinch near annotation A106 if still too wide.
    pinch_px = (1820, 2360)
    cx = int((pinch_px[0] * mpp - wx0) / SNAP)
    cz = int((pinch_px[1] * mpp - wz0) / SNAP)
    if 0 <= cz < nz and 0 <= cx < nx:
        # 0.5 m empty cell: player capsule diameter is 0.64 m, so this blocks.
        if 0 <= cx < nx:
            grid[cz, cx] = EMPTY
            if 0 <= cz - 1 < nz:
                grid[cz - 1, cx] = EMPTY
    return grid, wx0, wz0, nx, nz


def greedy_rects(grid: np.ndarray, wanted: set[int]):
    nz, nx = grid.shape
    used = np.zeros_like(grid, dtype=bool)
    rects = []
    for z in range(nz):
        for x in range(nx):
            t = int(grid[z, x])
            if t not in wanted or used[z, x]:
                continue
            w = 1
            while x + w < nx and int(grid[z, x + w]) == t and not used[z, x + w]:
                w += 1
            h = 1
            grow = True
            while z + h < nz and grow:
                for xx in range(x, x + w):
                    if int(grid[z + h, xx]) != t or used[z + h, xx]:
                        grow = False
                        break
                if grow:
                    h += 1
            used[z:z + h, x:x + w] = True
            rects.append((x, z, w, h, t))
    return rects


def wall_segments(grid: np.ndarray):
    """Axis-aligned wall segments in cell space (x,z,axis,length)."""
    nz, nx = grid.shape
    occ = grid != EMPTY
    segs = []
    # horizontal walls (along X) between z and z+1
    for z in range(nz + 1):
        x = 0
        while x < nx:
            up = occ[z - 1, x] if z > 0 else False
            dn = occ[z, x] if z < nz else False
            if up != dn:
                x0 = x
                while x < nx:
                    up2 = occ[z - 1, x] if z > 0 else False
                    dn2 = occ[z, x] if z < nz else False
                    if up2 == dn2 or up2 != up:
                        break
                    x += 1
                segs.append(("x", x0, z, x - x0))
            else:
                x += 1
    # vertical walls (along Z) between x and x+1
    for x in range(nx + 1):
        z = 0
        while z < nz:
            lf = occ[z, x - 1] if x > 0 else False
            rt = occ[z, x] if x < nx else False
            if lf != rt:
                z0 = z
                while z < nz:
                    lf2 = occ[z, x - 1] if x > 0 else False
                    rt2 = occ[z, x] if x < nx else False
                    if lf2 == rt2 or lf2 != lf:
                        break
                    z += 1
                segs.append(("z", x, z0, z - z0))
            else:
                z += 1
    return segs


def in_box_m(mx, mz, box):
    return box[0] <= mx <= box[2] and box[1] <= mz <= box[3]


def main() -> None:
    print("patching trace annotations")
    trace = load_trace()
    trace = patch_trace(trace)
    mpp = trace["scale"]["meters_per_pixel"]
    print("mpp", mpp)
    rgb = np.array(Image.open(REF).convert("RGB"))
    floor = np.array(Image.open(MASK))
    if floor.ndim == 3:
        floor = floor[:, :, 0]
    floor_bin = (floor > 127).astype(np.uint8) * 255
    colors = extract_color_masks(rgb, floor_bin)
    px_box = PILOT["px_box"]
    grid, wx0, wz0, nx, nz = build_grid(floor_bin, colors, mpp, px_box)
    print("pilot grid", nx, nz, "occupied", int((grid != EMPTY).sum()))

    floor_rects = greedy_rects(grid, {FLOOR, WATER, GREEN, GREY, PINK})
    print("floor rects", len(floor_rects))
    walls = wall_segments(grid)
    print("wall segs", len(walls))

    # Overlap audit of greedy rects
    cover = np.zeros_like(grid, dtype=np.int16)
    for x, z, w, h, t in floor_rects:
        cover[z:z + h, x:x + w] += 1
    overlap = int((cover > 1).sum())
    missing = int(((grid != EMPTY) & (cover == 0)).sum())
    extra = int(((grid == EMPTY) & (cover > 0)).sum())
    print("audit overlap", overlap, "missing", missing, "extra", extra)

    # Spawn: beige cell with clearance, looking +Z into the cluster (not the north wall).
    spawn = None
    spawn_yaw_180 = True
    for z in range(nz // 6, nz // 2):
        for x in range(nx // 5, (nx * 3) // 5):
            if grid[z, x] != FLOOR:
                continue
            patch = grid[z - 3:z + 4, x - 3:x + 4]
            if patch.shape != (7, 7):
                continue
            if (patch == EMPTY).any():
                continue
            spawn = (wx0 + (x + 0.5) * SNAP, wz0 + (z + 0.5) * SNAP)
            break
        if spawn:
            break
    if spawn is None:
        spawn = (wx0 + nx * SNAP * 0.4, wz0 + nz * SNAP * 0.28)
    print("spawn", spawn)

    m_box = trace["pilot"]["m_box"]
    elev_m = {e["id"]: e for e in trace["elevation_regions"]}

    # Mesh cache
    meshes = {}  # size tuple -> id
    shapes = {}
    nodes = []
    ext = [
        ('PackedScene', 'res://scenes/player.tscn', '1_player'),
        ('Script', 'res://scripts/debug/level_0_debug_view.gd', '2_debug'),
        ('PackedScene', 'res://scenes/environment/fluorescent_fixture.tscn', '3_fix'),
        ('Material', 'res://resources/materials/level_0/wall_main.tres', 'mat_wall'),
        ('Material', 'res://resources/materials/level_0/carpet_main.tres', 'mat_carpet'),
        ('Material', 'res://resources/materials/level_0/carpet_green.tres', 'mat_green'),
        ('Material', 'res://resources/materials/level_0/carpet_pink.tres', 'mat_pink'),
        ('Material', 'res://resources/materials/level_0/concrete_floor.tres', 'mat_conc'),
        ('Material', 'res://resources/materials/level_0/ceiling_base.tres', 'mat_ceil'),
        ('Material', 'res://resources/materials/level_0/water_dirty.tres', 'mat_water'),
        ('Material', 'res://resources/materials/level_0/void_black.tres', 'mat_void'),
        ('Material', 'res://resources/materials/level_0/stair.tres', 'mat_stair'),
        ('Material', 'res://resources/materials/level_0/trim.tres', 'mat_trim'),
    ]

    def mesh_id(sx, sy, sz):
        key = (round(sx, 3), round(sy, 3), round(sz, 3))
        if key not in meshes:
            meshes[key] = f"mesh_{len(meshes)}"
            shapes[key] = f"shape_{len(shapes)}"
        return meshes[key], shapes[key]

    def add_box(parent, name, cx, cy, cz, sx, sy, sz, mat, collide=True):
        mid, sid = mesh_id(sx, sy, sz)
        nodes.append((parent, name, cx, cy, cz, sx, sy, sz, mat, collide, mid, sid))

    mat_for = {
        FLOOR: "mat_carpet",
        WATER: "mat_conc",
        GREEN: "mat_green",
        GREY: "mat_conc",
        PINK: "mat_pink",
    }

    low_box = elev_m["E02"]["m_box"]
    none_box = elev_m["E03"]["m_box"]
    poor_box = elev_m["E04"]["m_box"]
    orange_box = elev_m["E05"]["m_box"]

    water_nodes = []
    fixture_spots = []

    for x, z, w, h, t in floor_rects:
        sx = w * SNAP
        sz = h * SNAP
        cx = wx0 + (x + w / 2) * SNAP
        cz = wz0 + (z + h / 2) * SNAP
        fy = -0.30 if t == WATER else 0.0
        add_box("Floors", f"F_{x}_{z}", cx, fy - FLOOR_T / 2, cz, sx, FLOOR_T, sz, mat_for[t], True)
        if t == WATER:
            water_nodes.append((cx, -0.08, cz, sx * 0.98, 0.06, sz * 0.98))
        # ceiling
        mx, mz = cx, cz
        if in_box_m(mx, mz, none_box):
            pass
        else:
            ch = 1.15 if in_box_m(mx, mz, low_box) else ROOM_H
            add_box("Ceilings", f"C_{x}_{z}", cx, ch + CEIL_T / 2, cz, sx, CEIL_T, sz, "mat_ceil", False)
        if t != WATER and not in_box_m(mx, mz, none_box):
            fixture_spots.append((cx, cz, t, in_box_m(mx, mz, poor_box), in_box_m(mx, mz, orange_box), ch if not in_box_m(mx, mz, none_box) else ROOM_H))

    for kind, a, b, length in walls:
        if kind == "x":
            sx = length * SNAP
            sz = WALL_T
            cx = wx0 + (a + length / 2) * SNAP
            cz = wz0 + b * SNAP
        else:
            sx = WALL_T
            sz = length * SNAP
            cx = wx0 + a * SNAP
            cz = wz0 + (b + length / 2) * SNAP
        h = 12.0 if in_box_m(cx, cz, none_box) else ROOM_H
        mat = "mat_void" if h > 4 else "mat_wall"
        add_box("Walls", f"W_{kind}_{a}_{b}", cx, h / 2, cz, sx, h, sz, mat, True)

    for i, (cx, cy, cz, sx, sy, sz) in enumerate(water_nodes):
        add_box("Water", f"Water_{i}", cx, cy, cz, sx, sy, sz, "mat_water", False)

    # Fan in round room (A107)
    fan_m = [snap_m(1860 * mpp), snap_m(2400 * mpp)]
    add_box("Special", "FanHousing", fan_m[0], 2.72, fan_m[1], 2.4, 0.12, 2.4, "mat_trim", True)
    add_box("Special", "FanBladeA", fan_m[0], 2.62, fan_m[1], 2.2, 0.04, 0.28, "mat_trim", False)
    add_box("Special", "FanBladeB", fan_m[0], 2.62, fan_m[1], 0.28, 0.04, 2.2, "mat_trim", False)

    # Long stairway down ST01: flight of 8, rise 0.15, tread 0.32, heading +Z
    st = [snap_m(2080 * mpp), snap_m(1980 * mpp)]
    rise, tread, nstep = 0.15, 0.32, 10
    for i in range(nstep):
        add_box(
            "Stairs",
            f"Step_{i}",
            st[0],
            rise * i + rise / 2,
            st[1] + i * tread,
            1.4,
            rise,
            tread,
            "mat_stair",
            True,
        )
    # Lower landing at theatre
    add_box("Stairs", "LandingLow", st[0], -0.05, st[1] + nstep * tread + 1.0, 2.4, 0.1, 2.0, "mat_carpet", True)

    # Fixtures: keep ~5.5 m spacing; poor lighting much sparser
    placed = []
    n_fix = 0
    n_flicker = 0
    n_off = 0
    n_orange = 0
    for cx, cz, t, poor, orange, ch in fixture_spots:
        if orange:
            continue
        spacing = 9.5 if poor else 5.6
        if any((cx - px) ** 2 + (cz - pz) ** 2 < spacing * spacing for px, pz in placed):
            continue
        # skip tiny rooms
        placed.append((cx, cz))
        n_fix += 1

    # Optimized output is tools/build_level_0_optimized.py (batched ArrayMesh).
    # Do not emit thousands of BoxMesh nodes into the main scene.
    print("Refusing to write a 90k-line tscn.")
    print("Run: python tools/build_level_0_optimized.py")
    return

    # Write sector + main as one scene (pilot-only milestone: sector instanced)
    SECTOR_DIR.mkdir(parents=True, exist_ok=True)

    lines = []
    lines.append(f"[gd_scene load_steps={len(ext) + len(meshes) + 2} format=3]\n")
    for typ, path, eid in ext:
        lines.append(f'[ext_resource type="{typ}" path="{path}" id="{eid}"]\n')
    lines.append("\n")
    lines.append("[sub_resource type=\"Environment\" id=\"Environment_level0\"]\n")
    lines.append("background_mode = 1\n")
    lines.append("background_color = Color(0.04, 0.04, 0.035, 1)\n")
    lines.append("ambient_light_source = 2\n")
    lines.append("ambient_light_color = Color(0.55, 0.5, 0.38, 1)\n")
    lines.append("ambient_light_energy = 0.11\n")
    lines.append("tonemap_mode = 2\n")
    lines.append("tonemap_exposure = 0.92\n")
    lines.append("ssao_enabled = true\n")
    lines.append("ssao_radius = 0.85\n")
    lines.append("ssao_intensity = 0.85\n")
    lines.append("glow_enabled = true\n")
    lines.append("glow_normalized = true\n")
    lines.append("glow_intensity = 0.32\n")
    lines.append("fog_enabled = true\n")
    lines.append("fog_light_color = Color(0.55, 0.5, 0.38, 1)\n")
    lines.append("fog_density = 0.0045\n")
    lines.append("\n")
    for (sx, sy, sz), mid in meshes.items():
        sid = shapes[(sx, sy, sz)]
        lines.append(f"[sub_resource type=\"BoxMesh\" id=\"{mid}\"]\n")
        lines.append(f"size = Vector3({fmt(sx)}, {fmt(sy)}, {fmt(sz)})\n\n")
        lines.append(f"[sub_resource type=\"BoxShape3D\" id=\"{sid}\"]\n")
        lines.append(f"size = Vector3({fmt(sx)}, {fmt(sy)}, {fmt(sz)})\n\n")

    lines.append("[node name=\"Level0\" type=\"Node3D\"]\n")
    lines.append("script = ExtResource(\"2_debug\")\n\n")
    lines.append("[node name=\"WorldEnvironment\" type=\"WorldEnvironment\" parent=\".\"]\n")
    lines.append("environment = SubResource(\"Environment_level0\")\n\n")
    lines.append("[node name=\"Sector001\" type=\"Node3D\" parent=\".\"]\n\n")
    for grp in ("Floors", "Walls", "Ceilings", "Water", "Stairs", "Special", "Fixtures"):
        lines.append(f"[node name=\"{grp}\" type=\"Node3D\" parent=\"Sector001\"]\n\n")

    for parent, name, cx, cy, cz, sx, sy, sz, mat, collide, mid, sid in nodes:
        p = f"Sector001/{parent}"
        lines.append(f"[node name=\"{name}\" type=\"MeshInstance3D\" parent=\"{p}\"]\n")
        lines.append(f"transform = {xform(cx, cy, cz)}\n")
        lines.append(f"mesh = SubResource(\"{mid}\")\n")
        lines.append(f"surface_material_override/0 = ExtResource(\"{mat}\")\n")
        if parent == "Ceilings":
            lines.append("cast_shadow = 0\n")
        lines.append("\n")
        if collide:
            lines.append(f"[node name=\"Col\" type=\"StaticBody3D\" parent=\"{p}/{name}\"]\n\n")
            lines.append(f"[node name=\"Shape\" type=\"CollisionShape3D\" parent=\"{p}/{name}/Col\"]\n")
            lines.append(f"shape = SubResource(\"{sid}\")\n\n")

    # Place fixtures
    fi = 0
    flicker_left = 1
    off_left = 2
    for cx, cz in placed:
        poor = in_box_m(cx, cz, poor_box)
        y = 2.92
        lines.append(f"[node name=\"Fix_{fi:03d}\" parent=\"Sector001/Fixtures\" instance=ExtResource(\"3_fix\")]\n")
        lines.append(f"transform = {xform(cx, y, cz)}\n")
        if poor and flicker_left:
            lines.append("flicker = true\n")
            flicker_left -= 1
            n_flicker += 1
        elif poor and off_left:
            lines.append("powered = false\n")
            off_left -= 1
            n_off += 1
        lines.append("\n")
        fi += 1

    # Orange emergency bulb
    ox = (orange_box[0] + orange_box[2]) / 2
    oz = (orange_box[1] + orange_box[3]) / 2
    lines.append("[node name=\"OrangeBulb\" type=\"OmniLight3D\" parent=\"Sector001/Fixtures\"]\n")
    lines.append(f"transform = {xform(ox, 2.4, oz)}\n")
    lines.append("light_color = Color(1, 0.45, 0.12, 1)\n")
    lines.append("light_energy = 2.8\n")
    lines.append("omni_range = 7.5\n")
    lines.append("omni_attenuation = 1.4\n")
    lines.append("shadow_enabled = true\n\n")
    n_orange = 1

    lines.append("[node name=\"Player\" parent=\".\" instance=ExtResource(\"1_player\")]\n")
    lines.append(
        f"transform = Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, -1, {fmt(spawn[0])}, 0.1, {fmt(spawn[1])})\n\n"
    )

    cxp = wx0 + nx * SNAP / 2
    czp = wz0 + nz * SNAP / 2
    span = max(nx, nz) * SNAP
    lines.append("[node name=\"DebugViews\" type=\"Node3D\" parent=\".\"]\n\n")
    lines.append("[node name=\"TopDownPlan\" type=\"Camera3D\" parent=\"DebugViews\"]\n")
    lines.append(f"transform = Transform3D(1, 0, 0, 0, 0, 1, 0, -1, 0, {fmt(cxp)}, {fmt(span * 1.15)}, {fmt(czp)})\n")
    lines.append("projection = 1\n")
    lines.append(f"size = {fmt(span * 1.08)}\n")
    lines.append("far = 400.0\n")
    lines.append("current = false\n")

    MAIN_PATH.write_text("".join(lines), encoding="utf-8")
    print("wrote", MAIN_PATH, "bytes", MAIN_PATH.stat().st_size)

    # Lightweight sector stub pointing to the same content is not required:
    # main scene IS the entry point and contains Sector001.
    SECTOR_PATH.write_text(
        "[gd_scene format=3]\n\n"
        "[node name=\"Sector001\" type=\"Node3D\"]\n"
        "; Built into res://scenes/levels/level_0_test.tscn for the pilot milestone.\n"
        "; Future sectors will be real PackedScene children.\n",
        encoding="utf-8",
    )

    audit = {
        "pilot": PILOT,
        "mpp": mpp,
        "grid": [nx, nz],
        "occupied_cells": int((grid != EMPTY).sum()),
        "floor_rects": len(floor_rects),
        "wall_segments": len(walls),
        "overlap_cells": overlap,
        "missing_walkable_cells": missing,
        "extra_floor_cells": extra,
        "unintentional_overlaps": overlap,
        "unclassified_walkable_gaps": missing,
        "spawn_m": [spawn[0], spawn[1]],
        "fixtures": fi,
        "flicker_fixtures": n_flicker,
        "unpowered_fixtures": n_off,
        "orange_bulbs": n_orange,
        "annotation_count": len(ANNOTATIONS),
        "confidence": {
            "HIGH": sum(1 for a in ANNOTATIONS if a["confidence"] == "HIGH"),
            "MEDIUM": sum(1 for a in ANNOTATIONS if a["confidence"] == "MEDIUM"),
            "LOW": sum(1 for a in ANNOTATIONS if a["confidence"] == "LOW"),
            "UNREADABLE": sum(1 for a in ANNOTATIONS if a["confidence"] == "UNREADABLE"),
        },
        "estimated_level_span_m": trace["scale"]["estimated_span_m"],
    }
    AUDIT_PATH.write_text(json.dumps(audit, indent=2), encoding="utf-8")
    print("audit", json.dumps(audit, indent=2))

    # Pilot overlay on reference crop
    x0, y0, x1, y1 = px_box
    crop = rgb[y0:y1, x0:x1].copy()
    vis = (crop.astype(np.float32) * 0.55).astype(np.uint8)
    # draw occupancy
    for iz in range(nz):
        for ix in range(nx):
            if grid[iz, ix] == EMPTY:
                continue
            color = {
                FLOOR: (255, 80, 80),
                WATER: (40, 140, 255),
                GREEN: (40, 220, 80),
                GREY: (180, 180, 180),
                PINK: (255, 80, 180),
            }[int(grid[iz, ix])]
            px = int(((wx0 + (ix + 0.5) * SNAP) / mpp) - x0)
            py = int(((wz0 + (iz + 0.5) * SNAP) / mpp) - y0)
            if 0 <= py < vis.shape[0] and 0 <= px < vis.shape[1]:
                vis[py, px] = color
    Image.fromarray(vis).save(OVERLAY_PATH)
    print("overlay", OVERLAY_PATH)


if __name__ == "__main__":
    os.chdir(ROOT)
    main()
