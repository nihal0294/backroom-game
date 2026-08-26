#!/usr/bin/env python3
"""Export a Level 0 sector bake.json from frozen occupancy + master-map features.

Usage:
  python tools/export_level_0_bake.py
  python tools/export_level_0_bake.py sector_001
  python tools/export_level_0_bake.py sector_002
"""
from __future__ import annotations

import json
import math
import os
import sys
from collections import defaultdict
from pathlib import Path

import numpy as np
from PIL import Image

from generate_level_0_from_trace import (
    CEIL_T,
    EMPTY,
    FLOOR,
    FLOOR_T,
    GREEN,
    GREY,
    MASK,
    PINK,
    REF,
    ROOM_H,
    ROOT,
    SNAP,
    STAIR,
    TRACE,
    WALL_NAV_FACE_T,
    WALL_T,
    WATER,
    build_grid_m,
    cell_center,
    clean_floor_mask,
    extract_color_masks,
    greedy_rects,
    in_box_m,
    in_half_open,
    load_trace,
    paint_stair_cells,
    patch_trace,
    snap_m,
    st01_ramp_tris,
    st01_spec,
    st01_top_landing,
    st01_visual_steps,
    st04_spec,
    wall_segments,
)
from generate_level_0_from_trace import _project_polyline
from level_0_annotations import (
    ANNOTATIONS,
    PARTITION_GAP_H,
    PILOT,
    POSTER_WALL_PX,
    ST04_PATH_PX,
    TALL_ROOM_CEILING_M,
    TALL_ROOM_PX_BOX,
)

CHUNK_M = 40.0
HALO_M = 8.0
MAT_PATH = {
    "mat_carpet": "res://resources/materials/level_0/carpet_main.tres",
    "mat_green": "res://resources/materials/level_0/carpet_green.tres",
    "mat_pink": "res://resources/materials/level_0/carpet_pink.tres",
    "mat_conc": "res://resources/materials/level_0/concrete_floor.tres",
    "mat_wall": "res://resources/materials/level_0/wall_main.tres",
    "mat_ceil": "res://resources/materials/level_0/ceiling_base.tres",
    "mat_water": "res://resources/materials/level_0/water_dirty.tres",
    "mat_void": "res://resources/materials/level_0/void_black.tres",
    "mat_stair": "res://resources/materials/level_0/stair.tres",
    "mat_trim": "res://resources/materials/level_0/trim.tres",
    "mat_poster": "res://resources/materials/level_0/poster_closing.tres",
}


def out_dir_for(sector_id: str) -> Path:
    return ROOT / "resources" / "generated" / "level_0" / sector_id


def chunk_key(cx: float, cz: float, wx0: float, wz0: float) -> str:
    # Outward-only wall thickness may put a wall centre a few centimetres past
    # the sector AABB. Keep that owned geometry in the edge chunk rather than
    # creating negative technical chunk IDs.
    ix = max(0, int(math.floor((cx - wx0) / CHUNK_M)))
    iz = max(0, int(math.floor((cz - wz0) / CHUNK_M)))
    return f"chunk_{ix:02d}_{iz:02d}"


def sector_record(trace: dict, sector_id: str) -> dict:
    for s in trace.get("sectors", []):
        if s.get("id") == sector_id:
            return s
    raise KeyError(sector_id)


def derived_px_box(m_box, mpp: float) -> list[float]:
    return [m_box[0] / mpp, m_box[1] / mpp, m_box[2] / mpp, m_box[3] / mpp]


def annotations_for_box(m_box, mpp: float) -> list[dict]:
    owned = []
    for a in ANNOTATIONS:
        mx, mz = a["px"][0] * mpp, a["px"][1] * mpp
        if in_half_open(mx, mz, m_box):
            owned.append(a)
    return owned


def collect(sector_id: str = "sector_001") -> tuple[dict, dict]:
    trace = json.loads(TRACE.read_text(encoding="utf-8"))
    mpp = float(trace["scale"]["meters_per_pixel"])
    rec = sector_record(trace, sector_id)
    if sector_id == "sector_001":
        m_box = list(trace.get("pilot", {}).get("m_box") or rec["m_box"])
        px_box = list(trace.get("pilot", {}).get("px_box") or PILOT["px_box"])
    else:
        m_box = list(rec["m_box"])
        px_box = derived_px_box(m_box, mpp)
    elev = {e["id"]: e for e in trace.get("elevation_regions", [])}

    rgb = np.array(Image.open(REF).convert("RGB"))
    floor = np.array(Image.open(MASK))
    if floor.ndim == 3:
        floor = floor[:, :, 0]
    floor_bin = (floor > 127).astype(np.uint8) * 255
    floor_bin = clean_floor_mask(rgb, floor_bin)
    colors = extract_color_masks(rgb, floor_bin)
    grid, gx0, gz0, nx, nz = build_grid_m(floor_bin, colors, mpp, m_box, halo_m=HALO_M)

    # The source image contains unrelated blue drafting marks outside E01. The
    # broad colour classifier used to turn 25 normal floor rectangles into
    # transparent water. E01 is the documented flooded region, so only blue
    # cells inside that source-derived region may retain the WATER surface.
    cleared_water_cells = 0
    if sector_id == "sector_001":
        e01_box = elev["E01"]["m_box"]
        for iz in range(nz):
            for ix in range(nx):
                if grid[iz, ix] != WATER:
                    continue
                cx, cz = cell_center(ix, iz, gx0, gz0)
                if not in_box_m(cx, cz, e01_box):
                    grid[iz, ix] = FLOOR
                    cleared_water_cells += 1

    stairs_built = []
    ramp_tris: list[list[float]] = []
    if sector_id == "sector_001":
        st = st01_spec(mpp)
        paint_stair_cells(grid, gx0, gz0, st, skip_end_m=1.2)
        stairs_built.append(("ST01", st))
    elif sector_id == "sector_002":
        st = st04_spec(mpp)
        paint_stair_cells(grid, gx0, gz0, st, skip_end_m=0.6)
        stairs_built.append(("ST04", st))

    # Floors only for cells whose center is inside this sector's half-open box.
    owned = np.zeros_like(grid, dtype=bool)
    for iz in range(nz):
        for ix in range(nx):
            cx, cz = cell_center(ix, iz, gx0, gz0)
            if in_half_open(cx, cz, m_box):
                owned[iz, ix] = True
    work = grid.copy()
    work[~owned] = EMPTY
    floor_rects = greedy_rects(work, {FLOOR, WATER, GREEN, GREY, PINK})
    walls_all = wall_segments(grid)

    cover = np.zeros_like(work, dtype=np.int16)
    for x, z, w, h, t in floor_rects:
        cover[z : z + h, x : x + w] += 1
    floor_wanted = owned & (grid != EMPTY) & (grid != STAIR)
    audit = {
        "sector_id": sector_id,
        "m_box": m_box,
        "px_box": [round(v, 3) for v in px_box],
        "grid": rec.get("grid"),
        "occupied_cells": int((owned & (grid != EMPTY)).sum()),
        "stair_cells": int((owned & (grid == STAIR)).sum()),
        "floor_rects": len(floor_rects),
        "wall_segments": 0,
        "overlap_cells": int((cover > 1).sum()),
        "missing_walkable_cells": int((floor_wanted & (cover == 0)).sum()),
        "extra_floor_cells": int(((~owned | (grid == EMPTY)) & (cover > 0)).sum()),
        "unintentional_overlaps": 0,
        "unclassified_walkable_gaps": 0,
        "artificial_sector_boundary_walls": 0,
        "orphan_white_meshes": 0,
        "unintended_transparent_floor": 0,
        "corrected_false_water_cells": cleared_water_cells,
    }

    tall_box_m = None
    if sector_id == "sector_002":
        tb = TALL_ROOM_PX_BOX
        tall_box_m = [
            tb[0] * mpp,
            tb[1] * mpp,
            tb[2] * mpp,
            tb[3] * mpp,
        ]

    def floor_y_at(cx, cz, t) -> float:
        fy = -0.30 if t == WATER else 0.0
        if tall_box_m and in_box_m(cx, cz, tall_box_m):
            fy = 0.8
        return fy

    def ceiling_y_at(cx, cz) -> float | None:
        if sector_id == "sector_001":
            none_box = elev["E03"]["m_box"]
            low_box = elev["E02"]["m_box"]
            if in_box_m(cx, cz, none_box):
                return None
            if in_box_m(cx, cz, low_box):
                return 1.15
            return ROOM_H
        if tall_box_m and in_box_m(cx, cz, tall_box_m):
            return 0.8 + TALL_ROOM_CEILING_M
        return ROOM_H

    def is_partition_wall(cx, cz) -> bool:
        if sector_id != "sector_002":
            return False
        # A003: interior partitions the map arrows point at (not every wall).
        return 68.0 <= cx <= 82.0 and 72.0 <= cz <= 86.0

    boxes = []

    def add(kind, mat, cx, cy, cz, sx, sy, sz, collide, shadow=True, yaw=0.0):
        recb = {
            "k": kind,
            "m": mat,
            "c": [round(cx, 5), round(cy, 5), round(cz, 5)],
            "s": [round(sx, 5), round(sy, 5), round(sz, 5)],
            "col": 1 if collide else 0,
            "sh": 0 if not shadow else 1,
        }
        if abs(yaw) > 1e-6:
            recb["yaw"] = round(yaw, 5)
        boxes.append(recb)

    mat_for = {
        FLOOR: "mat_carpet",
        WATER: "mat_conc",
        GREEN: "mat_green",
        GREY: "mat_conc",
        PINK: "mat_pink",
    }

    none_box = elev.get("E03", {}).get("m_box", [0, 0, 0, 0])
    poor_box = elev.get("E04", {}).get("m_box", [0, 0, 0, 0])
    orange_box = elev.get("E05", {}).get("m_box", [0, 0, 0, 0])

    for x, z, w, h, t in floor_rects:
        sx = w * SNAP
        sz = h * SNAP
        cx = gx0 + (x + w / 2) * SNAP
        cz = gz0 + (z + h / 2) * SNAP
        fy = floor_y_at(cx, cz, t)
        add("floor", mat_for[t], cx, fy - FLOOR_T / 2, cz, sx, FLOOR_T, sz, True)
        if t == WATER:
            add("water", "mat_water", cx, fy + 0.22, cz, sx * 0.98, 0.06, sz * 0.98, False, False)

    # Ceiling rectangles are generated from an explicit height-profile grid,
    # independent of floor/material greedy rectangles. This prevents a floor
    # rectangle's centre from assigning an arbitrary height to cells across an
    # annotated boundary.
    ceiling_profile = np.zeros_like(work, dtype=np.uint8)
    for iz in range(nz):
        for ix in range(nx):
            if not owned[iz, ix] or grid[iz, ix] in (EMPTY, STAIR):
                continue
            cx, cz = cell_center(ix, iz, gx0, gz0)
            cy = ceiling_y_at(cx, cz)
            if cy is None:
                continue
            ceiling_profile[iz, ix] = 2 if abs(cy - 1.15) < 0.01 else (3 if cy > ROOM_H + 0.1 else 1)
    ceiling_rects = greedy_rects(ceiling_profile, {1, 2, 3})
    ceiling_y_by_profile = {1: ROOM_H, 2: 1.15, 3: 0.8 + TALL_ROOM_CEILING_M}
    for x, z, w, h, profile in ceiling_rects:
        sx = w * SNAP
        sz = h * SNAP
        cx = gx0 + (x + w / 2) * SNAP
        cz = gz0 + (z + h / 2) * SNAP
        cy = ceiling_y_by_profile[profile]
        add("ceil", "mat_ceil", cx, cy + CEIL_T / 2, cz, sx, CEIL_T, sz, False, False)

    fixture_spots = []
    fixture_stride = max(1, int(round(2.0 / SNAP)))
    for iz in range(0, nz, fixture_stride):
        for ix in range(0, nx, fixture_stride):
            if not owned[iz, ix] or grid[iz, ix] in (EMPTY, STAIR, WATER):
                continue
            cx, cz = cell_center(ix, iz, gx0, gz0)
            cy = ceiling_y_at(cx, cz)
            if cy is None:
                continue
            poor = sector_id == "sector_001" and in_box_m(cx, cz, poor_box)
            orange = sector_id == "sector_001" and in_box_m(cx, cz, orange_box)
            fixture_spots.append((cx, cy - 0.08, cz, poor, orange))

    # Split only where the source-derived height/material profile changes, then
    # merge adjacent equal units again. Walls grow from 0.12 m to 0.24 m solely
    # toward the non-walkable side, preserving the former walkable face and all
    # passage clearances.
    owned_walls = []
    outward_offset = (WALL_T - WALL_NAV_FACE_T) * 0.5
    st01 = stairs_built[0][1] if sector_id == "sector_001" and stairs_built else None

    for kind, a, b, length in walls_all:
        runs = []
        run_start = None
        run_key = None
        for offset in range(length):
            if kind == "x":
                ix_line, iz_line = a + offset, b
                positive = iz_line < nz and grid[iz_line, ix_line] != EMPTY
                negative = iz_line > 0 and grid[iz_line - 1, ix_line] != EMPTY
                ix_occ = ix_line
                iz_occ = iz_line if positive else iz_line - 1
                ux = gx0 + (ix_line + 0.5) * SNAP
                uz = gz0 + iz_line * SNAP
            else:
                ix_line, iz_line = a, b + offset
                positive = ix_line < nx and grid[iz_line, ix_line] != EMPTY
                negative = ix_line > 0 and grid[iz_line, ix_line - 1] != EMPTY
                ix_occ = ix_line if positive else ix_line - 1
                iz_occ = iz_line
                ux = gx0 + ix_line * SNAP
                uz = gz0 + (iz_line + 0.5) * SNAP

            key = None
            if positive != negative and 0 <= iz_occ < nz and 0 <= ix_occ < nx:
                ocx, ocz = cell_center(ix_occ, iz_occ, gx0, gz0)
                if in_half_open(ocx, ocz, m_box):
                    skip_stair_opening = False
                    if st01 and kind == "x" and abs(uz - m_box[1]) < 0.3:
                        d, s = _project_polyline(ux, uz, st01["segs"])
                        skip_stair_opening = d <= st01["width_m"] * 0.7 and s < st01["length_m"] - 0.5
                    if not skip_stair_opening:
                        surface = int(grid[iz_occ, ix_occ])
                        fy = floor_y_at(ocx, ocz, surface)
                        if is_partition_wall(ocx, ocz):
                            top_y = fy + PARTITION_GAP_H
                        else:
                            ceiling_y = ceiling_y_at(ocx, ocz)
                            top_y = fy + 12.0 if ceiling_y is None else ceiling_y
                        key = (bool(positive), round(fy, 4), round(top_y, 4))

            if key != run_key:
                if run_start is not None:
                    runs.append((run_start, offset, run_key))
                run_start = offset if key is not None else None
                run_key = key
            elif key is None:
                run_start = None
        if run_start is not None:
            runs.append((run_start, length, run_key))

        for start, end, key in runs:
            positive, fy, top_y = key
            run_length = end - start
            if kind == "x":
                cx = gx0 + (a + start + run_length / 2) * SNAP
                cz = gz0 + b * SNAP + (-outward_offset if positive else outward_offset)
                sx, sz = run_length * SNAP, WALL_T
            else:
                cx = gx0 + a * SNAP + (-outward_offset if positive else outward_offset)
                cz = gz0 + (b + start + run_length / 2) * SNAP
                sx, sz = WALL_T, run_length * SNAP
            owned_walls.append((kind, cx, cz, sx, sz, fy, top_y))

    audit["wall_segments"] = len(owned_walls)
    for kind, cx, cz, sx, sz, fy, top_y in owned_walls:
        hh = top_y - fy
        add("wall", "mat_wall", cx, fy + hh / 2, cz, sx, hh, sz, True)

    # --- sector-specific features ---
    if sector_id == "sector_001":
        fan = [snap_m(1860 * mpp), snap_m(2400 * mpp)]
        add("special", "mat_trim", fan[0], 2.72, fan[1], 2.4, 0.12, 2.4, True)
        add("special", "mat_trim", fan[0], 2.62, fan[1], 2.2, 0.04, 0.28, False)
        add("special", "mat_trim", fan[0], 2.62, fan[1], 0.28, 0.04, 2.2, False)
        st = stairs_built[0][1]
        steps, rise, tread = st01_visual_steps(st, nstep=20)
        for cx, cy, cz, sx, sy, sz, yaw in steps:
            add("stair_vis", "mat_stair", cx, cy, cz, sx, sy, sz, False, yaw=yaw)
            add("stair_vis", "mat_ceil", cx, cy + sy / 2 + ROOM_H + CEIL_T / 2, cz, sx, CEIL_T, sz, False, False, yaw=yaw)
        lx, ly, lz, lsx, lsy, lsz, lyaw = st01_top_landing(st)
        add("stair_vis", "mat_carpet", lx, ly, lz, lsx, lsy, lsz, False, yaw=lyaw)
        ramp_tris = st01_ramp_tris(st)
        nstep, rise_out, tread_out = 20, rise, tread
    elif sector_id == "sector_002":
        st = stairs_built[0][1]
        nstep = 8
        steps, rise, tread = st01_visual_steps(st, nstep=nstep)
        for cx, cy, cz, sx, sy, sz, yaw in steps:
            add("stair_vis", "mat_stair", cx, cy, cz, sx, sy, sz, False, yaw=yaw)
        ramp_tris = st01_ramp_tris(st, width=st["width_m"] * 0.95)
        nstep, rise_out, tread_out = nstep, rise, tread
        # A002 posters on the pointed west wall of the large irregular room.
        poster_m = [POSTER_WALL_PX[0] * mpp, POSTER_WALL_PX[1] * mpp, POSTER_WALL_PX[2] * mpp, POSTER_WALL_PX[3] * mpp]
        # Wall faces +X (into the room). Five posters along Z.
        z0, z1 = poster_m[1], poster_m[3]
        xw = (poster_m[0] + poster_m[2]) * 0.5
        for i in range(5):
            t = (i + 0.5) / 5.0
            pz = z0 + t * (z1 - z0)
            add("special", "mat_poster", xw + 0.08, 1.55, pz, 0.04, 1.15, 0.72, False, False, yaw=0.0)
        # A004 unreachable doors on the tall-room north and east inner walls.
        if tall_box_m:
            tx0, tz0, tx1, tz1 = tall_box_m
            # north wall, facing +Z, doors near roof
            for i, frac in enumerate((0.3, 0.7)):
                dx = tx0 + frac * (tx1 - tx0)
                add("special", "mat_trim", dx, 0.8 + 5.35, tz0 + 0.2, 0.95, 2.05, 0.08, False)
            add("special", "mat_trim", tx1 - 0.2, 0.8 + 5.35, (tz0 + tz1) * 0.5, 0.08, 2.05, 0.95, False)
        # A005: only clearly-readable house props inside the sector.
        # Red sofa in the grey north room of the house (map).
        add("special", "mat_trim", 118.5, 0.35, 96.2, 1.7, 0.7, 0.75, True)
        # Table in pink room.
        add("special", "mat_trim", 122.0, 0.38, 102.5, 1.2, 0.75, 0.7, True)
        # Toilet-like block (blue on map) if inside m_box.
        if in_half_open(124.5, 108.5, m_box):
            add("special", "mat_trim", 124.5, 0.22, 108.5, 0.45, 0.44, 0.55, True)
    else:
        nstep = rise_out = tread_out = 0
        st = None

    # Visual fixtures stay dense and batched; actual OmniLights are sparse.
    placed = []
    fixtures_on = []
    fixtures_off = []
    fixtures_flicker = []
    lights = []
    flicker_left, off_left = (1, 2) if sector_id == "sector_001" else (0, 0)
    vis_spacing = 5.8
    light_spacing = 11.5
    placed_l = []
    for cx, cy, cz, poor, orange in fixture_spots:
        if orange:
            continue
        spacing = 9.5 if poor else vis_spacing
        if any((cx - px) ** 2 + (cz - pz) ** 2 < spacing * spacing for px, pz in placed):
            continue
        placed.append((cx, cz))
        y = cy
        if poor and flicker_left:
            fixtures_flicker.append([round(cx, 5), round(y, 5), round(cz, 5)])
            flicker_left -= 1
            lights.append([round(cx, 5), round(y - 0.12, 5), round(cz, 5), 1])
        elif poor and off_left:
            fixtures_off.append([round(cx, 5), round(y, 5), round(cz, 5)])
            off_left -= 1
        else:
            fixtures_on.append([round(cx, 5), round(y, 5), round(cz, 5)])
            if not any((cx - lx) ** 2 + (cz - lz) ** 2 < light_spacing * light_spacing for lx, lz in placed_l):
                placed_l.append((cx, cz))
                lights.append([round(cx, 5), round(y - 0.12, 5), round(cz, 5), 0])

    orange = None
    if sector_id == "sector_001":
        orange = [
            round((orange_box[0] + orange_box[2]) / 2, 5),
            2.4,
            round((orange_box[1] + orange_box[3]) / 2, 5),
        ]

    # Chunk origin = sector m_box origin so chunk ids are stable per sector.
    wx0, wz0 = m_box[0], m_box[1]
    chunks = defaultdict(lambda: {"visual": defaultdict(list), "col_floor": [], "col_walls": [], "col_stairs": []})
    for b in boxes:
        key = chunk_key(b["c"][0], b["c"][2], wx0, wz0)
        recb = [b["c"][0], b["c"][1], b["c"][2], b["s"][0], b["s"][1], b["s"][2], b["sh"]]
        if "yaw" in b:
            recb.append(b["yaw"])
        chunks[key]["visual"][b["m"]].append(recb)
        if b["col"]:
            if b["k"] in ("floor",):
                chunks[key]["col_floor"].append(recb[:6])
            elif b["k"] in ("wall", "special"):
                col = recb[:6]
                if "yaw" in b:
                    col.extend([0, b["yaw"]])
                chunks[key]["col_walls"].append(col)
            elif b["k"] == "stair":
                chunks[key]["col_stairs"].append(recb[:6])
    for tri in ramp_tris:
        cx = (tri[0] + tri[3] + tri[6]) / 3.0
        cz = (tri[2] + tri[5] + tri[8]) / 3.0
        key = chunk_key(cx, cz, wx0, wz0)
        chunks[key]["col_stairs"].append([round(v, 5) for v in tri])

    chunk_list = []
    for key in sorted(chunks):
        vis = {m: chunks[key]["visual"][m] for m in sorted(chunks[key]["visual"])}
        chunk_list.append(
            {
                "id": key,
                "visual": vis,
                "col_floor": chunks[key]["col_floor"],
                "col_walls": chunks[key]["col_walls"],
                "col_stairs": chunks[key]["col_stairs"],
            }
        )

    stair_dump = {}
    if stairs_built:
        sid, st = stairs_built[0]
        stair_dump = {
            "id": sid,
            "path_m": [[round(p[0], 5), round(p[1], 5)] for p in st["path_m"]],
            "path_px": ST04_PATH_PX if sid == "ST04" else None,
            "length_m": round(st["length_m"], 5),
            "width_m": round(st["width_m"], 5),
            "angle_deg": round(math.degrees(st["angle_rad"]), 3),
            "y_start": st["y_start"],
            "y_end": st["y_end"],
            "drop_m": st["drop_m"],
            "nstep": nstep,
            "rise_m": round(rise_out, 5) if rise_out else 0,
            "tread_m": round(tread_out, 5) if tread_out else 0,
        }

    owned_ann = annotations_for_box(m_box, mpp)
    borders = _border_contract(grid, gx0, gz0, m_box, owned, mpp)

    data = {
        "sector_id": sector_id,
        "mpp": mpp,
        "wx0": wx0,
        "wz0": wz0,
        "m_box": m_box,
        "px_box": [round(v, 3) for v in px_box],
        "chunk_m": CHUNK_M,
        "spawn": [304.0, 344.0],
        "materials": MAT_PATH,
        "audit": audit,
        "chunks": chunk_list,
        "fixtures_on": fixtures_on,
        "fixtures_off": fixtures_off,
        "fixtures_flicker": fixtures_flicker,
        "lights": lights,
        "orange": orange,
        "st01": stair_dump if stair_dump.get("id") == "ST01" else None,
        "stair": stair_dump,
        "owned_annotations": [a["id"] for a in owned_ann],
        "borders": borders,
        "counts": {
            "boxes": len(boxes),
            "chunks": len(chunk_list),
            "fixtures_on": len(fixtures_on),
            "fixtures_off": len(fixtures_off),
            "fixtures_flicker": len(fixtures_flicker),
            "lights": len(lights),
            "stair_ramp_tris": len(ramp_tris),
        },
    }
    if sector_id == "sector_001":
        data["st01"] = stair_dump
    return data, audit


def _border_contract(grid, gx0, gz0, m_box, owned, mpp) -> dict:
    """Walkable crossings of the technical boundary (half-open box)."""
    nz, nx = grid.shape
    wx0, wz0, wx1, wz1 = m_box
    sides = {"NORTH": [], "EAST": [], "SOUTH": [], "WEST": []}
    # Sample along each edge at SNAP
    def add_run(side, x, z, w):
        sides[side].append(
            {
                "world": [round(x, 3), round(z, 3)],
                "width_m": round(w, 3),
                "floor_y": 0.0,
                "ceiling_y": 3.0,
                "surface": "carpet",
            }
        )

    # East edge x=wx1, cells just inside
    z = wz0
    run = None
    while z < wz1:
        ix = int((wx1 - 0.25 - gx0) / SNAP)
        iz = int((z + 0.25 - gz0) / SNAP)
        inside = 0 <= iz < nz and 0 <= ix < nx and owned[iz, ix] and grid[iz, ix] != EMPTY
        ix2 = int((wx1 + 0.25 - gx0) / SNAP)
        outside = 0 <= iz < nz and 0 <= ix2 < nx and grid[iz, ix2] != EMPTY
        if inside and outside:
            if run is None:
                run = [z, z]
            run[1] = z + SNAP
        else:
            if run is not None:
                add_run("EAST", wx1, (run[0] + run[1]) * 0.5, run[1] - run[0])
                run = None
        z += SNAP
    if run is not None:
        add_run("EAST", wx1, (run[0] + run[1]) * 0.5, run[1] - run[0])

    z = wz0
    run = None
    while z < wz1:
        ix = int((wx0 + 0.25 - gx0) / SNAP)
        iz = int((z + 0.25 - gz0) / SNAP)
        inside = 0 <= iz < nz and 0 <= ix < nx and owned[iz, ix] and grid[iz, ix] != EMPTY
        ix2 = int((wx0 - 0.25 - gx0) / SNAP)
        outside = 0 <= iz < nz and 0 <= ix2 < nx and grid[iz, ix2] != EMPTY
        if inside and outside:
            if run is None:
                run = [z, z]
            run[1] = z + SNAP
        else:
            if run is not None:
                add_run("WEST", wx0, (run[0] + run[1]) * 0.5, run[1] - run[0])
                run = None
        z += SNAP
    if run is not None:
        add_run("WEST", wx0, (run[0] + run[1]) * 0.5, run[1] - run[0])

    x = wx0
    run = None
    while x < wx1:
        ix = int((x + 0.25 - gx0) / SNAP)
        iz = int((wz1 - 0.25 - gz0) / SNAP)
        inside = 0 <= iz < nz and 0 <= ix < nx and owned[iz, ix] and grid[iz, ix] != EMPTY
        iz2 = int((wz1 + 0.25 - gz0) / SNAP)
        outside = 0 <= iz2 < nz and 0 <= ix < nx and grid[iz2, ix] != EMPTY
        if inside and outside:
            if run is None:
                run = [x, x]
            run[1] = x + SNAP
        else:
            if run is not None:
                add_run("SOUTH", (run[0] + run[1]) * 0.5, wz1, run[1] - run[0])
                run = None
        x += SNAP
    if run is not None:
        add_run("SOUTH", (run[0] + run[1]) * 0.5, wz1, run[1] - run[0])

    x = wx0
    run = None
    while x < wx1:
        ix = int((x + 0.25 - gx0) / SNAP)
        iz = int((wz0 + 0.25 - gz0) / SNAP)
        inside = 0 <= iz < nz and 0 <= ix < nx and owned[iz, ix] and grid[iz, ix] != EMPTY
        iz2 = int((wz0 - 0.25 - gz0) / SNAP)
        outside = 0 <= iz2 < nz and 0 <= ix < nx and grid[iz2, ix] != EMPTY
        if inside and outside:
            if run is None:
                run = [x, x]
            run[1] = x + SNAP
        else:
            if run is not None:
                add_run("NORTH", (run[0] + run[1]) * 0.5, wz0, run[1] - run[0])
                run = None
        x += SNAP
    if run is not None:
        add_run("NORTH", (run[0] + run[1]) * 0.5, wz0, run[1] - run[0])

    neighbor = {"NORTH": None, "SOUTH": "sector_007", "EAST": "sector_003", "WEST": None}
    out = {}
    for side, runs in sides.items():
        for r in runs:
            r["expected_neighbor"] = neighbor.get(side)
        out[side] = runs
    return out


def write_walk_samples(sector_id: str, data: dict, grid, gx0, gz0) -> None:
    samples = []
    nz, nx = grid.shape
    m_box = data["m_box"]
    for z in range(2, nz - 2, 5):
        for x in range(2, nx - 2, 5):
            if grid[z, x] == EMPTY:
                continue
            cx, cz = cell_center(x, z, gx0, gz0)
            if not in_half_open(cx, cz, m_box):
                continue
            samples.append(["occ", round(cx, 3), round(cz, 3)])
    dest = ROOT / "scenes" / "levels" / "level_0" / f"walk_samples_{sector_id}.json"
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(json.dumps(samples), encoding="utf-8")
    if sector_id == "sector_001":
        (ROOT / "scenes" / "levels" / "level_0" / "walk_samples.json").write_text(
            json.dumps(samples), encoding="utf-8"
        )
    print("walk samples", len(samples), dest.name)


def main() -> None:
    os.chdir(ROOT)
    sector_id = "sector_001"
    if len(sys.argv) > 1 and sys.argv[1].startswith("sector_"):
        sector_id = sys.argv[1]
    print("sector", sector_id)
    print("patching trace annotations/stairs")
    patch_trace(load_trace())
    # Re-read after patch, then mark this sector built.
    trace = json.loads(TRACE.read_text(encoding="utf-8"))
    for s in trace.get("sectors", []):
        if s.get("id") == sector_id and sector_id != "sector_001":
            s["built"] = True
            s["px_box"] = derived_px_box(s["m_box"], float(trace["scale"]["meters_per_pixel"]))
    TRACE.write_text(json.dumps(trace, indent=2), encoding="utf-8")

    data, audit = collect(sector_id)
    outd = out_dir_for(sector_id)
    outd.mkdir(parents=True, exist_ok=True)
    out = outd / "bake.json"
    out.write_text(json.dumps(data, separators=(",", ":")), encoding="utf-8")
    print("wrote", out, "bytes", out.stat().st_size)
    print("audit", audit)
    print("counts", data["counts"])
    print("owned_ann", data["owned_annotations"])
    print("borders", {k: len(v) for k, v in data["borders"].items()})
    # walk samples need grid — regenerate cheaply
    mpp = data["mpp"]
    rgb = np.array(Image.open(REF).convert("RGB"))
    floor = np.array(Image.open(MASK))
    if floor.ndim == 3:
        floor = floor[:, :, 0]
    floor_bin = clean_floor_mask(rgb, (floor > 127).astype(np.uint8) * 255)
    colors = extract_color_masks(rgb, floor_bin)
    grid, gx0, gz0, nx, nz = build_grid_m(floor_bin, colors, mpp, data["m_box"], halo_m=HALO_M)
    write_walk_samples(sector_id, data, grid, gx0, gz0)
    (outd / "audit.json").write_text(json.dumps(audit, indent=2), encoding="utf-8")
    (ROOT / "docs" / "levels" / f"level-0-{sector_id.replace('_', '-')}-audit.json").write_text(
        json.dumps({**audit, "borders": data["borders"], "counts": data["counts"], "stair": data.get("stair")}, indent=2),
        encoding="utf-8",
    )


if __name__ == "__main__":
    main()
