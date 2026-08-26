#!/usr/bin/env python3
"""Occupancy -> bake.json -> Godot ArrayMesh .res -> lightweight scenes.

Usage:
  python tools/build_level_0_optimized.py
  python tools/build_level_0_optimized.py sector_001
  python tools/build_level_0_optimized.py sector_002
"""
from __future__ import annotations

import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GODOT = Path(r"C:\Users\mauro\Desktop\Tutto\Godot\Godot_v4.5-stable_win64.exe")


def main() -> None:
    os.chdir(ROOT)
    sector_id = "sector_001"
    if len(sys.argv) > 1 and sys.argv[1].startswith("sector_"):
        sector_id = sys.argv[1]
    print("sector", sector_id)
    print("1) export bake.json")
    subprocess.check_call([sys.executable, "tools/export_level_0_bake.py", sector_id])
    print("2) Godot bake meshes")
    env = os.environ.copy()
    env["LEVEL0_BAKE_JSON"] = f"res://resources/generated/level_0/{sector_id}/bake.json"
    env["LEVEL0_BAKE_OUT"] = f"res://resources/generated/level_0/{sector_id}/"
    cmd = [
        str(GODOT),
        "--headless",
        "--path",
        str(ROOT),
        "-s",
        "res://scripts/debug/bake_level_0_sector.gd",
    ]
    subprocess.check_call(cmd, env=env)
    print("3) write scenes")
    subprocess.check_call([sys.executable, "tools/write_level_0_optimized_scenes.py", sector_id])
    print("done", sector_id)


if __name__ == "__main__":
    main()
