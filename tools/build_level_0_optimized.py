#!/usr/bin/env python3
"""Occupancy -> bake.json -> Godot ArrayMesh .res -> lightweight scenes."""
from __future__ import annotations

import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GODOT = Path(r"C:\Users\mauro\Desktop\Tutto\Godot\Godot_v4.5-stable_win64.exe")


def main() -> None:
    os.chdir(ROOT)
    print("1) export bake.json")
    subprocess.check_call([sys.executable, "tools/export_level_0_bake.py"])
    print("2) Godot bake meshes")
    cmd = [
        str(GODOT),
        "--headless",
        "--path",
        str(ROOT),
        "-s",
        "res://scripts/debug/bake_level_0_sector.gd",
    ]
    subprocess.check_call(cmd)
    print("3) write scenes")
    subprocess.check_call([sys.executable, "tools/write_level_0_optimized_scenes.py"])
    print("done")


if __name__ == "__main__":
    main()
