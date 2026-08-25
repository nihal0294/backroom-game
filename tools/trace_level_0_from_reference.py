#!/usr/bin/env python3
"""Deterministic pixel trace of the Level 0 master map.

This is NOT a layout generator. It extracts walkable floor blobs, wall
polylines and surface classes from docs/reference/level-0/level-0-final-map.png.
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

ROOT = Path(__file__).resolve().parents[1]
REF = ROOT / "docs" / "reference" / "level-0" / "level-0-final-map.png"
OUT_JSON = ROOT / "docs" / "levels" / "level-0-final-trace.json"
OUT_OVERLAY = ROOT / "docs" / "reference" / "level-0" / "level-0-trace-overlay.png"
OUT_MASK = ROOT / "docs" / "reference" / "level-0" / "level-0-floor-mask.png"
CROP_DIR = Path(os.environ.get("TEMP", "/tmp")) / "level0_map_crops"

BG = np.array([86, 86, 86], dtype=np.int16)
# Snap world metres. Frozen for all future sectors.
SNAP_M = 0.5
# Douglas-Peucker in pixels before metric snap. ~0.4 m at 0.16 m/px.
APPROX_EPS_PX = 2.0
MIN_REGION_AREA_PX = 120
MAX_PINHOLE_AREA_PX = 70
WALL_THICKNESS_M = 0.12
DEFAULT_CEILING_M = 3.0


def quantize(v: float, step: float = SNAP_M) -> float:
    return round(v / step) * step


def classify_pixel(bgr: np.ndarray) -> str:
    """Classify a BGR mean colour into a surface class."""
    b, g, r = [float(x) for x in bgr]
    mx = max(r, g, b)
    mn = min(r, g, b)
    chroma = mx - mn
    luma = 0.299 * r + 0.587 * g + 0.114 * b
    if chroma < 18 and luma < 110:
        return "background"
    if chroma < 22 and luma > 210:
        return "annotation_ink"
    if chroma < 28 and 130 <= luma <= 210:
        return "tiled_grey"
    # HSV-ish
    if chroma < 1:
        h = 0.0
    elif mx == r:
        h = (60 * ((g - b) / chroma) + 360) % 360
    elif mx == g:
        h = 60 * ((b - r) / chroma) + 120
    else:
        h = 60 * ((r - g) / chroma) + 240
    s = chroma / mx if mx > 0 else 0.0
    if 175 <= h <= 255 and s > 0.18 and b > r + 8:
        return "water"
    if 70 <= h <= 165 and s > 0.18 and g > r and g > b:
        return "green_carpet"
    if (h >= 310 or h <= 20) and s > 0.12 and r > g + 8 and r > 160:
        return "pink_carpet"
    if 15 <= h <= 55 and luma < 155 and s > 0.15:
        return "brown_carpet"
    if 18 <= h <= 60:
        return "yellow_carpet"
    if chroma < 40 and luma >= 110:
        return "tiled_grey"
    return "yellow_carpet"


def extract_masks(rgb: np.ndarray) -> dict[str, np.ndarray]:
    h, w = rgb.shape[:2]
    luma = (0.299 * rgb[:, :, 0] + 0.587 * rgb[:, :, 1] + 0.114 * rgb[:, :, 2]).astype(np.float32)
    mx = rgb.max(axis=2).astype(np.int16)
    mn = rgb.min(axis=2).astype(np.int16)
    chroma = (mx - mn).astype(np.int16)

    # Background is flat charcoal (86,86,86). Unmapped gaps between rooms
    # MUST stay empty — do not flood-fill enclosed unexplored space.
    is_bg = (chroma < 18) & (luma < 118)
    is_white = (chroma < 42) & (luma > 198)
    floor = (~is_bg) & (~is_white)

    floor_u8 = floor.astype(np.uint8) * 255
    kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (3, 3))
    floor_u8 = cv2.morphologyEx(floor_u8, cv2.MORPH_CLOSE, kernel, iterations=1)

    num, labels, stats, _ = cv2.connectedComponentsWithStats(floor_u8, connectivity=8)
    cleaned = np.zeros((h, w), np.uint8)
    for i in range(1, num):
        if stats[i, cv2.CC_STAT_AREA] >= MIN_REGION_AREA_PX:
            cleaned[labels == i] = 255

    # Fill only tiny pinholes (anti-aliased text specks inside rooms).
    hole_cnts, hole_hier = cv2.findContours(cleaned, cv2.RETR_CCOMP, cv2.CHAIN_APPROX_SIMPLE)
    if hole_hier is not None:
        hole_hier = hole_hier[0]
        for i, c in enumerate(hole_cnts):
            if hole_hier[i][3] >= 0 and cv2.contourArea(c) <= MAX_PINHOLE_AREA_PX:
                cv2.drawContours(cleaned, [c], -1, 255, thickness=cv2.FILLED)

    bgr = cv2.cvtColor(rgb, cv2.COLOR_RGB2BGR)
    water = np.zeros((h, w), np.uint8)
    green = np.zeros((h, w), np.uint8)
    pink = np.zeros((h, w), np.uint8)
    grey = np.zeros((h, w), np.uint8)
    brown = np.zeros((h, w), np.uint8)
    yellow = np.zeros((h, w), np.uint8)
    # Vectorised-ish classification via HSV
    hsv = cv2.cvtColor(bgr, cv2.COLOR_BGR2HSV)
    H, S, V = hsv[:, :, 0], hsv[:, :, 1], hsv[:, :, 2]
    water[(H >= 85) & (H <= 130) & (S >= 40) & (V >= 80) & (cleaned > 0)] = 255
    green[(H >= 35) & (H <= 85) & (S >= 40) & (V >= 70) & (cleaned > 0)] = 255
    pink[((H <= 10) | (H >= 155)) & (S >= 30) & (V >= 120) & (cleaned > 0) & (water == 0)] = 255
    grey[(S < 35) & (V >= 110) & (V < 210) & (cleaned > 0) & (water == 0)] = 255
    brown[(H >= 8) & (H <= 28) & (S >= 40) & (V < 150) & (cleaned > 0) & (water == 0)] = 255
    yellow[(cleaned > 0) & (water == 0) & (green == 0) & (pink == 0) & (grey == 0)] = 255
    yellow[brown > 0] = 0

    return {
        "floor": cleaned,
        "water": cv2.morphologyEx(water, cv2.MORPH_OPEN, kernel),
        "green": green,
        "pink": pink,
        "grey": grey,
        "brown": brown,
        "yellow": yellow,
        "white_text": (is_white.astype(np.uint8) * 255),
    }


def contours_of(mask: np.ndarray) -> list[np.ndarray]:
    cnts, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
    out = []
    for c in cnts:
        if cv2.contourArea(c) < MIN_REGION_AREA_PX:
            continue
        approx = cv2.approxPolyDP(c, APPROX_EPS_PX, True)
        if len(approx) >= 3:
            out.append(approx.reshape(-1, 2))
    return out


def inner_holes(mask: np.ndarray) -> list[np.ndarray]:
    cnts, hier = cv2.findContours(mask, cv2.RETR_CCOMP, cv2.CHAIN_APPROX_NONE)
    if hier is None:
        return []
    holes = []
    hier = hier[0]
    for i, c in enumerate(cnts):
        # hole if parent exists
        if hier[i][3] >= 0 and cv2.contourArea(c) >= 40:
            approx = cv2.approxPolyDP(c, APPROX_EPS_PX, True)
            if len(approx) >= 3:
                holes.append(approx.reshape(-1, 2))
    return holes


def measure_corridor_widths(floor: np.ndarray) -> dict:
    dist = cv2.distanceTransform(floor, cv2.DIST_L2, 5)
    # Skeleton-ish: local maxima of distance transform
    kernel = np.ones((3, 3), np.uint8)
    dilated = cv2.dilate(dist, kernel)
    ridge = (dist == dilated) & (dist > 2.5) & (floor > 0)
    widths = (dist[ridge] * 2.0)
    if widths.size == 0:
        return {"error": "no ridges"}
    qs = np.percentile(widths, [10, 25, 50, 75, 90])
    # Representative "normal corridor" band: 40-70 percentile, excluding huge rooms
    band = widths[(widths >= np.percentile(widths, 20)) & (widths <= np.percentile(widths, 55))]
    typical_px = float(np.median(band)) if band.size else float(qs[2])
    return {
        "sample_count": int(widths.size),
        "p10_px": float(qs[0]),
        "p25_px": float(qs[1]),
        "p50_px": float(qs[2]),
        "p75_px": float(qs[3]),
        "p90_px": float(qs[4]),
        "typical_corridor_px": typical_px,
        "narrow_band_px": [float(np.percentile(widths, 5)), float(np.percentile(widths, 18))],
        "wide_band_px": [float(np.percentile(widths, 70)), float(np.percentile(widths, 88))],
    }


def choose_scale(width_stats: dict) -> dict:
    """Map typical corridor pixel width to ~2.85 m (mid of 2.4-3.3)."""
    typical = width_stats["typical_corridor_px"]
    target_m = 2.85
    mpp = target_m / typical
    # Sanity: narrow ~1.5-2.1, wide ~4-6
    narrow_m = [width_stats["narrow_band_px"][0] * mpp, width_stats["narrow_band_px"][1] * mpp]
    wide_m = [width_stats["wide_band_px"][0] * mpp, width_stats["wide_band_px"][1] * mpp]
    return {
        "meters_per_pixel": round(mpp, 6),
        "typical_corridor_target_m": target_m,
        "implied_narrow_m": [round(narrow_m[0], 3), round(narrow_m[1], 3)],
        "implied_wide_m": [round(wide_m[0], 3), round(wide_m[1], 3)],
        "rationale": (
            f"Median skeleton width in the 20-55 percentile band is {typical:.2f} px, "
            f"mapped to {target_m} m (mid of the 2.4-3.3 m normal-corridor target). "
            "Scale is frozen for every sector."
        ),
    }


def px_to_m(pt, mpp: float) -> list[float]:
    return [quantize(pt[0] * mpp), quantize(pt[1] * mpp)]


def polyline_from_contour(cnt: np.ndarray, mpp: float, closed: bool = True) -> dict:
    pts_px = [[int(p[0]), int(p[1])] for p in cnt]
    pts_m = [px_to_m(p, mpp) for p in pts_px]
    # drop consecutive duplicates after snap
    cleaned_m = []
    cleaned_px = []
    for p, q in zip(pts_m, pts_px):
        if not cleaned_m or p != cleaned_m[-1]:
            cleaned_m.append(p)
            cleaned_px.append(q)
    if closed and len(cleaned_m) > 2 and cleaned_m[0] != cleaned_m[-1]:
        cleaned_m.append(cleaned_m[0])
        cleaned_px.append(cleaned_px[0])
    return {"px": cleaned_px, "m": cleaned_m, "closed": closed}


def bbox_of_points(pts) -> list[float]:
    xs = [p[0] for p in pts]
    ys = [p[1] for p in pts]
    return [min(xs), min(ys), max(xs), max(ys)]


def write_crops(rgb: np.ndarray, dest: Path, cols: int = 6, rows: int = 6, overlap: int = 110) -> list[dict]:
    dest.mkdir(parents=True, exist_ok=True)
    h, w = rgb.shape[:2]
    step_x = w / cols
    step_y = h / rows
    tiles = []
    for r in range(rows):
        for c in range(cols):
            x0 = int(max(0, c * step_x - overlap))
            y0 = int(max(0, r * step_y - overlap))
            x1 = int(min(w, (c + 1) * step_x + overlap))
            y1 = int(min(h, (r + 1) * step_y + overlap))
            crop = rgb[y0:y1, x0:x1]
            name = f"tile_r{r:02d}_c{c:02d}_{x0}_{y0}_{x1}_{y1}.png"
            Image.fromarray(crop).save(dest / name)
            tiles.append({"file": str(dest / name), "row": r, "col": c, "px_box": [x0, y0, x1, y1]})
    return tiles


def sector_grid(floor: np.ndarray, mpp: float, target_m: float = 95.0) -> list[dict]:
    ys, xs = np.where(floor > 0)
    minx, maxx = int(xs.min()), int(xs.max())
    miny, maxy = int(ys.min()), int(ys.max())
    span_x_m = (maxx - minx) * mpp
    span_z_m = (maxy - miny) * mpp
    nx = max(1, int(math.ceil(span_x_m / target_m)))
    nz = max(1, int(math.ceil(span_z_m / target_m)))
    dx = (maxx - minx) / nx
    dz = (maxy - miny) / nz
    sectors = []
    sid = 1
    for iz in range(nz):
        for ix in range(nx):
            x0 = minx + int(ix * dx)
            y0 = miny + int(iz * dz)
            x1 = minx + int((ix + 1) * dx) if ix < nx - 1 else maxx
            y1 = miny + int((iz + 1) * dz) if iz < nz - 1 else maxy
            sub = floor[y0:y1, x0:x1]
            if sub.any() and int(sub.sum() // 255) > 400:
                sectors.append({
                    "id": f"sector_{sid:03d}",
                    "grid": [ix, iz],
                    "px_box": [x0, y0, x1, y1],
                    "m_box": [
                        quantize(x0 * mpp),
                        quantize(y0 * mpp),
                        quantize(x1 * mpp),
                        quantize(y1 * mpp),
                    ],
                    "floor_px": int(sub.sum() // 255),
                })
                sid += 1
    return sectors


def choose_pilot(sectors: list[dict], img_w: int, img_h: int) -> str:
    """Prefer the sector covering the 17-days core (slightly south of image centre)."""
    cx, cy = int(img_w * 0.46), int(img_h * 0.62)
    best = sectors[0]["id"]
    best_d = 1e18
    for s in sectors:
        x0, y0, x1, y1 = s["px_box"]
        sx, sy = (x0 + x1) / 2, (y0 + y1) / 2
        d = (sx - cx) ** 2 + (sy - cy) ** 2
        if d < best_d:
            best_d = d
            best = s["id"]
    return best


def build_trace(rgb: np.ndarray, masks: dict, width_stats: dict, scale: dict, tiles: list) -> dict:
    mpp = scale["meters_per_pixel"]
    h, w = rgb.shape[:2]
    regions = []
    walls = []
    rid = 1
    wid = 1

    class_masks = [
        ("water", masks["water"]),
        ("green_carpet", masks["green"]),
        ("pink_carpet", masks["pink"]),
        ("tiled_grey", masks["grey"]),
        ("brown_carpet", masks["brown"]),
        ("yellow_carpet", masks["yellow"]),
    ]
    # Ensure exclusive: first matching class wins already by construction of yellow leftover.

    for surface, mask in class_masks:
        cnts = contours_of(mask)
        for cnt in cnts:
            poly = polyline_from_contour(cnt, mpp, True)
            area_px = float(cv2.contourArea(cnt.reshape(-1, 1, 2)))
            regions.append({
                "id": f"R{rid:04d}",
                "surface": surface,
                "kind": "water" if surface == "water" else "walkable_floor",
                "polygon_px": poly["px"],
                "polygon_m": poly["m"],
                "bbox_px": bbox_of_points(poly["px"]),
                "bbox_m": bbox_of_points(poly["m"]),
                "area_px": area_px,
                "area_m2": round(area_px * mpp * mpp, 3),
            })
            walls.append({
                "id": f"W{wid:04d}",
                "region": f"R{rid:04d}",
                "role": "boundary",
                "polyline_px": poly["px"],
                "polyline_m": poly["m"],
            })
            rid += 1
            wid += 1

    # Floor topology: outer boundaries + interior unmapped holes.
    # These hole polylines ARE walls. Do not fill them.
    silhouette = []
    holes = []
    occupancy_walls = []
    cnts, hier = cv2.findContours(masks["floor"], cv2.RETR_CCOMP, cv2.CHAIN_APPROX_NONE)
    if hier is not None:
        hier = hier[0]
        for i, c in enumerate(cnts):
            if cv2.contourArea(c) < MIN_REGION_AREA_PX and hier[i][3] < 0:
                continue
            approx = cv2.approxPolyDP(c, APPROX_EPS_PX, True)
            if len(approx) < 3:
                continue
            poly = polyline_from_contour(approx.reshape(-1, 2), mpp, True)
            is_hole = hier[i][3] >= 0
            entry = {
                "id": f"{'H' if is_hole else 'S'}{len(holes if is_hole else silhouette)+1:04d}",
                "role": "hole" if is_hole else "outer",
                "polyline_px": poly["px"],
                "polyline_m": poly["m"],
            }
            occupancy_walls.append({
                "id": f"WF{len(occupancy_walls)+1:04d}",
                "role": "hole" if is_hole else "outer",
                "polyline_px": poly["px"],
                "polyline_m": poly["m"],
            })
            if is_hole:
                holes.append({
                    "id": entry["id"],
                    "kind": "unmapped_interior",
                    "polygon_px": poly["px"],
                    "polygon_m": poly["m"],
                    "classification": "intentional_unmapped",
                })
            else:
                silhouette.append(poly)
    walls.extend(occupancy_walls)

    sectors = sector_grid(masks["floor"], mpp)
    pilot = choose_pilot(sectors, w, h)
    ys, xs = np.where(masks["floor"] > 0)
    aabb_px = [int(xs.min()), int(ys.min()), int(xs.max()), int(ys.max())]
    aabb_m = [
        quantize(aabb_px[0] * mpp),
        quantize(aabb_px[1] * mpp),
        quantize(aabb_px[2] * mpp),
        quantize(aabb_px[3] * mpp),
    ]

    return {
        "reference": {
            "path": "docs/reference/level-0/level-0-final-map.png",
            "title": "The currently mapped areas of the Backrooms — 71 days after arrival",
            "pixel_size": [w, h],
            "bit_depth": 8,
            "bytes": REF.stat().st_size,
            "origin_px": [0, 0],
            "axis": {
                "pixel_x": "right",
                "pixel_y": "down",
                "world_x": "pixel_x * meters_per_pixel",
                "world_z": "pixel_y * meters_per_pixel",
                "world_y": "up, floor default 0",
            },
            "transform_frozen": True,
        },
        "scale": {
            **scale,
            "snap_m": SNAP_M,
            "wall_thickness_m": WALL_THICKNESS_M,
            "default_ceiling_m": DEFAULT_CEILING_M,
            "corridor_width_stats_px": width_stats,
            "estimated_level_aabb_px": aabb_px,
            "estimated_level_aabb_m": aabb_m,
            "estimated_span_m": [
                round(aabb_m[2] - aabb_m[0], 2),
                round(aabb_m[3] - aabb_m[1], 2),
            ],
        },
        "regions": regions,
        "walls": walls,
        "openings": [],
        "elevation_regions": [],
        "stairs": [],
        "holes": holes,
        "annotations": [],
        "sectors": sectors,
        "pilot_sector_id": pilot,
        "silhouette": silhouette,
        "crop_tiles": tiles,
        "notes": {
            "method": (
                "Computer-assisted contour trace of the master PNG. "
                "Not procedural generation: pixels of the reference define regions."
            ),
            "openings_stairs_annotations": (
                "Filled after visual transcription of the reference tiles. "
                "Empty arrays here are placeholders only until that pass writes them."
            ),
        },
    }


def overlay(rgb: np.ndarray, masks: dict, dest: Path) -> None:
    vis = rgb.copy()
    vis = (vis.astype(np.float32) * 0.62).astype(np.uint8)
    cnts, hier = cv2.findContours(masks["floor"], cv2.RETR_CCOMP, cv2.CHAIN_APPROX_SIMPLE)
    if hier is not None:
        hier = hier[0]
        for i, c in enumerate(cnts):
            color = (40, 220, 255) if hier[i][3] >= 0 else (255, 40, 40)
            cv2.drawContours(vis, [c], -1, color, 1)
    water_c, _ = cv2.findContours(masks["water"], cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    cv2.drawContours(vis, water_c, -1, (40, 120, 255), 2)
    green_c, _ = cv2.findContours(masks["green"], cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    cv2.drawContours(vis, green_c, -1, (40, 220, 80), 2)
    pink_c, _ = cv2.findContours(masks["pink"], cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    cv2.drawContours(vis, pink_c, -1, (255, 80, 180), 2)
    Image.fromarray(vis).save(dest)
    Image.fromarray(masks["floor"]).save(OUT_MASK)


def main() -> None:
    print("loading", REF)
    rgb = np.array(Image.open(REF).convert("RGB"))
    print("shape", rgb.shape)
    masks = extract_masks(rgb)
    print("floor px", int(masks["floor"].sum() // 255))
    print("water px", int(masks["water"].sum() // 255))
    print("green px", int(masks["green"].sum() // 255))
    print("pink px", int(masks["pink"].sum() // 255))
    print("grey px", int(masks["grey"].sum() // 255))
    width_stats = measure_corridor_widths(masks["floor"])
    print("width_stats", json.dumps(width_stats, indent=2))
    scale = choose_scale(width_stats)
    print("scale", json.dumps(scale, indent=2))
    overlay(rgb, masks, OUT_OVERLAY)
    tiles = write_crops(rgb, CROP_DIR)
    print("crops", len(tiles), "->", CROP_DIR)
    trace = build_trace(rgb, masks, width_stats, scale, [{"row": t["row"], "col": t["col"], "px_box": t["px_box"]} for t in tiles])
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(trace, indent=2), encoding="utf-8")
    print("wrote", OUT_JSON, "bytes", OUT_JSON.stat().st_size)
    print("regions", len(trace["regions"]), "walls", len(trace["walls"]), "sectors", len(trace["sectors"]))
    print("pilot", trace["pilot_sector_id"])
    print("span_m", trace["scale"]["estimated_span_m"])
    # write crop index
    (CROP_DIR / "index.json").write_text(json.dumps(tiles, indent=2), encoding="utf-8")


if __name__ == "__main__":
    main()
