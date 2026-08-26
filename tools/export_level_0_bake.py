#!/usr/bin/env python3
"""Export Sector001 boxes from the frozen occupancy (same as generate_level_0_from_trace).

Does not rewrite the master trace. Output is bake.json for the Godot baker.
"""
from __future__ import annotations

import json
import math
import os
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
    TRACE,
    WALL_T,
    WATER,
    build_grid,
    extract_color_masks,
    greedy_rects,
    in_box_m,
    snap_m,
    wall_segments,
)
from level_0_annotations import PILOT

OUT_DIR = ROOT / "resources" / "generated" / "level_0" / "sector_001"
CHUNK_M = 40.0
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
}


def chunk_key(cx: float, cz: float, wx0: float, wz0: float) -> str:
    ix = int(math.floor((cx - wx0) / CHUNK_M))
    iz = int(math.floor((cz - wz0) / CHUNK_M))
    return f"chunk_{ix:02d}_{iz:02d}"


def collect() -> dict:
    trace = json.loads(TRACE.read_text(encoding="utf-8"))
    mpp = float(trace["scale"]["meters_per_pixel"])
    px_box = list(trace.get("pilot", {}).get("px_box") or PILOT["px_box"])
    elev = {e["id"]: e for e in trace.get("elevation_regions", [])}

    rgb = np.array(Image.open(REF).convert("RGB"))
    floor = np.array(Image.open(MASK))
    if floor.ndim == 3:
        floor = floor[:, :, 0]
    floor_bin = (floor > 127).astype(np.uint8) * 255
    colors = extract_color_masks(rgb, floor_bin)
    grid, wx0, wz0, nx, nz = build_grid(floor_bin, colors, mpp, px_box)
    floor_rects = greedy_rects(grid, {FLOOR, WATER, GREEN, GREY, PINK})
    walls = wall_segments(grid)

    cover = np.zeros_like(grid, dtype=np.int16)
    for x, z, w, h, t in floor_rects:
        cover[z : z + h, x : x + w] += 1
    audit = {
        "occupied_cells": int((grid != EMPTY).sum()),
        "floor_rects": len(floor_rects),
        "wall_segments": len(walls),
        "overlap_cells": int((cover > 1).sum()),
        "missing_walkable_cells": int(((grid != EMPTY) & (cover == 0)).sum()),
        "extra_floor_cells": int(((grid == EMPTY) & (cover > 0)).sum()),
    }

    spawn = (304.0, 344.0)
    low_box = elev["E02"]["m_box"]
    none_box = elev["E03"]["m_box"]
    poor_box = elev["E04"]["m_box"]
    orange_box = elev["E05"]["m_box"]
    mat_for = {
        FLOOR: "mat_carpet",
        WATER: "mat_conc",
        GREEN: "mat_green",
        GREY: "mat_conc",
        PINK: "mat_pink",
    }

    boxes = []  # dicts

    def add(kind, mat, cx, cy, cz, sx, sy, sz, collide, shadow=True):
        boxes.append(
            {
                "k": kind,
                "m": mat,
                "c": [round(cx, 5), round(cy, 5), round(cz, 5)],
                "s": [round(sx, 5), round(sy, 5), round(sz, 5)],
                "col": 1 if collide else 0,
                "sh": 0 if not shadow else 1,
            }
        )

    fixture_spots = []
    for x, z, w, h, t in floor_rects:
        sx = w * SNAP
        sz = h * SNAP
        cx = wx0 + (x + w / 2) * SNAP
        cz = wz0 + (z + h / 2) * SNAP
        fy = -0.30 if t == WATER else 0.0
        add("floor", mat_for[t], cx, fy - FLOOR_T / 2, cz, sx, FLOOR_T, sz, True)
        if t == WATER:
            add("water", "mat_water", cx, -0.08, cz, sx * 0.98, 0.06, sz * 0.98, False, False)
        if not in_box_m(cx, cz, none_box):
            ch = 1.15 if in_box_m(cx, cz, low_box) else ROOM_H
            add("ceil", "mat_ceil", cx, ch + CEIL_T / 2, cz, sx, CEIL_T, sz, False, False)
            if t != WATER:
                fixture_spots.append((cx, cz, in_box_m(cx, cz, poor_box), in_box_m(cx, cz, orange_box)))

    for kind, a, b, length in walls:
        if kind == "x":
            sx, sz = length * SNAP, WALL_T
            cx = wx0 + (a + length / 2) * SNAP
            cz = wz0 + b * SNAP
        else:
            sx, sz = WALL_T, length * SNAP
            cx = wx0 + a * SNAP
            cz = wz0 + (b + length / 2) * SNAP
        hh = 12.0 if in_box_m(cx, cz, none_box) else ROOM_H
        mat = "mat_void" if hh > 4 else "mat_wall"
        add("wall", mat, cx, hh / 2, cz, sx, hh, sz, True)

    fan = [snap_m(1860 * mpp), snap_m(2400 * mpp)]
    add("special", "mat_trim", fan[0], 2.72, fan[1], 2.4, 0.12, 2.4, True)
    add("special", "mat_trim", fan[0], 2.62, fan[1], 2.2, 0.04, 0.28, False)
    add("special", "mat_trim", fan[0], 2.62, fan[1], 0.28, 0.04, 2.2, False)

    st = [snap_m(2080 * mpp), snap_m(1980 * mpp)]
    rise, tread, nstep = 0.15, 0.32, 10
    for i in range(nstep):
        add("stair", "mat_stair", st[0], rise * i + rise / 2, st[1] + i * tread, 1.4, rise, tread, True)
    add("stair", "mat_carpet", st[0], -0.05, st[1] + nstep * tread + 1.0, 2.4, 0.1, 2.0, True)

    placed = []
    fixtures_on = []
    fixtures_off = []
    fixtures_flicker = []
    flicker_left, off_left = 1, 2
    for cx, cz, poor, orange in fixture_spots:
        if orange:
            continue
        spacing = 9.5 if poor else 5.6
        if any((cx - px) ** 2 + (cz - pz) ** 2 < spacing * spacing for px, pz in placed):
            continue
        placed.append((cx, cz))
        y = 2.92
        if poor and flicker_left:
            fixtures_flicker.append([round(cx, 5), y, round(cz, 5)])
            flicker_left -= 1
        elif poor and off_left:
            fixtures_off.append([round(cx, 5), y, round(cz, 5)])
            off_left -= 1
        else:
            fixtures_on.append([round(cx, 5), y, round(cz, 5)])

    orange = [
        round((orange_box[0] + orange_box[2]) / 2, 5),
        2.4,
        round((orange_box[1] + orange_box[3]) / 2, 5),
    ]

    chunks = defaultdict(lambda: {"visual": defaultdict(list), "col_floor": [], "col_walls": [], "col_stairs": []})
    for b in boxes:
        key = chunk_key(b["c"][0], b["c"][2], wx0, wz0)
        rec = [b["c"][0], b["c"][1], b["c"][2], b["s"][0], b["s"][1], b["s"][2], b["sh"]]
        chunks[key]["visual"][b["m"]].append(rec)
        if b["col"]:
            if b["k"] in ("floor",):
                chunks[key]["col_floor"].append(rec[:6])
            elif b["k"] in ("wall", "special"):
                chunks[key]["col_walls"].append(rec[:6])
            elif b["k"] == "stair":
                chunks[key]["col_stairs"].append(rec[:6])

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

    data = {
        "mpp": mpp,
        "wx0": wx0,
        "wz0": wz0,
        "chunk_m": CHUNK_M,
        "spawn": [spawn[0], spawn[1]],
        "materials": MAT_PATH,
        "audit": audit,
        "chunks": chunk_list,
        "fixtures_on": fixtures_on,
        "fixtures_off": fixtures_off,
        "fixtures_flicker": fixtures_flicker,
        "orange": orange,
        "counts": {
            "boxes": len(boxes),
            "chunks": len(chunk_list),
            "fixtures_on": len(fixtures_on),
            "fixtures_off": len(fixtures_off),
            "fixtures_flicker": len(fixtures_flicker),
        },
    }
    return data, audit, grid, wx0, wz0


def main() -> None:
    os.chdir(ROOT)
    data, audit, grid, wx0, wz0 = collect()
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    out = OUT_DIR / "bake.json"
    out.write_text(json.dumps(data, separators=(",", ":")), encoding="utf-8")
    print("wrote", out, "bytes", out.stat().st_size)
    print("audit", audit)
    print("chunks", data["counts"])
    # occupancy samples for walk test
    samples = []
    nz, nx = grid.shape
    for z in range(2, nz - 2, 5):
        for x in range(2, nx - 2, 5):
            if grid[z, x] != EMPTY:
                samples.append(["occ", round(wx0 + (x + 0.5) * SNAP, 3), round(wz0 + (z + 0.5) * SNAP, 3)])
    (ROOT / "scenes" / "levels" / "level_0").mkdir(parents=True, exist_ok=True)
    (ROOT / "scenes" / "levels" / "level_0" / "walk_samples.json").write_text(
        json.dumps(samples), encoding="utf-8"
    )
    print("walk samples", len(samples))
    (OUT_DIR / "audit.json").write_text(json.dumps(audit, indent=2), encoding="utf-8")


if __name__ == "__main__":
    main()
