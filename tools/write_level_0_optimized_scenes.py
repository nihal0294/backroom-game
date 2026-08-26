#!/usr/bin/env python3
"""Write lightweight Sector001 chunk scenes after Godot has baked .res files."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BAKE = ROOT / "resources" / "generated" / "level_0" / "sector_001" / "bake.json"
RES = "res://resources/generated/level_0/sector_001"
CHUNK_DIR = ROOT / "scenes" / "levels" / "level_0" / "sector_001_chunks"
SECTOR = ROOT / "scenes" / "levels" / "level_0" / "sector_001.tscn"
MAIN = ROOT / "scenes" / "levels" / "level_0_test.tscn"

MAT_EXT = {
    "mat_carpet": ("mat_carpet", "res://resources/materials/level_0/carpet_main.tres"),
    "mat_green": ("mat_green", "res://resources/materials/level_0/carpet_green.tres"),
    "mat_pink": ("mat_pink", "res://resources/materials/level_0/carpet_pink.tres"),
    "mat_conc": ("mat_conc", "res://resources/materials/level_0/concrete_floor.tres"),
    "mat_wall": ("mat_wall", "res://resources/materials/level_0/wall_main.tres"),
    "mat_ceil": ("mat_ceil", "res://resources/materials/level_0/ceiling_base.tres"),
    "mat_water": ("mat_water", "res://resources/materials/level_0/water_dirty.tres"),
    "mat_void": ("mat_void", "res://resources/materials/level_0/void_black.tres"),
    "mat_stair": ("mat_stair", "res://resources/materials/level_0/stair.tres"),
    "mat_trim": ("mat_trim", "res://resources/materials/level_0/trim.tres"),
}
GROUP_OF = {
    "mat_carpet": "Floors",
    "mat_green": "Floors",
    "mat_pink": "Floors",
    "mat_conc": "Floors",
    "mat_wall": "Walls",
    "mat_void": "Walls",
    "mat_ceil": "Ceilings",
    "mat_water": "Water",
    "mat_stair": "Stairs",
    "mat_trim": "Special",
}
NO_SHADOW = {"mat_ceil", "mat_water"}


def res_exists(name: str) -> bool:
    return (ROOT / "resources" / "generated" / "level_0" / "sector_001" / name).exists()


def write_chunk(chunk: dict) -> Path:
    cid = chunk["id"]
    ext: list[tuple[str, str, str]] = []  # type, path, id
    used_mats = []
    mesh_ids = {}
    for mat in chunk["visual"]:
        fname = f"{cid}_{mat}.res"
        if not res_exists(fname):
            continue
        eid = f"m_{mat}"
        ext.append(("ArrayMesh", f"{RES}/{fname}", eid))
        mesh_ids[mat] = eid
        if mat in MAT_EXT:
            used_mats.append(mat)
    for mat in used_mats:
        eid, path = MAT_EXT[mat]
        if ("Material", path, eid) not in ext:
            ext.append(("Material", path, eid))
    shape_ids = {}
    for col in ("col_floor", "col_walls", "col_stairs"):
        fname = f"{cid}_{col}.res"
        if res_exists(fname):
            eid = f"s_{col}"
            ext.append(("ConcavePolygonShape3D", f"{RES}/{fname}", eid))
            shape_ids[col] = eid

    lines = [f"[gd_scene load_steps={len(ext) + 1} format=3]\n\n"]
    for typ, path, eid in ext:
        lines.append(f'[ext_resource type="{typ}" path="{path}" id="{eid}"]\n')
    lines.append("\n")
    lines.append(f'[node name="{cid}" type="Node3D"]\n\n')
    groups_needed = {GROUP_OF[m] for m in mesh_ids if m in GROUP_OF}
    for g in ("Floors", "Walls", "Ceilings", "Water", "Stairs", "Special"):
        if g in groups_needed:
            lines.append(f'[node name="{g}" type="Node3D" parent="."]\n\n')
    for mat, eid in mesh_ids.items():
        grp = GROUP_OF.get(mat, "Special")
        node = mat.replace("mat_", "")
        lines.append(f'[node name="{node}" type="MeshInstance3D" parent="{grp}"]\n')
        lines.append(f'mesh = ExtResource("{eid}")\n')
        lines.append(f'surface_material_override/0 = ExtResource("{MAT_EXT[mat][0]}")\n')
        if mat in NO_SHADOW:
            lines.append("cast_shadow = 0\n")
        lines.append("\n")
    col_parent_name = {
        "col_floor": "CollisionFloor",
        "col_walls": "CollisionWalls",
        "col_stairs": "CollisionStairs",
    }
    for col, eid in shape_ids.items():
        body = col_parent_name[col]
        lines.append(f'[node name="{body}" type="StaticBody3D" parent="."]\n\n')
        lines.append(f'[node name="Shape" type="CollisionShape3D" parent="{body}"]\n')
        lines.append(f'shape = ExtResource("{eid}")\n\n')
    CHUNK_DIR.mkdir(parents=True, exist_ok=True)
    path = CHUNK_DIR / f"{cid}.tscn"
    path.write_text("".join(lines), encoding="utf-8")
    return path


def write_sector(chunk_paths: list[Path], data: dict) -> None:
    lines = []
    n_ext = len(chunk_paths) + 6
    lines.append(f"[gd_scene load_steps={n_ext} format=3]\n\n")
    lines.append('[ext_resource type="PackedScene" path="res://scenes/environment/fluorescent_fixture.tscn" id="3_fix"]\n')
    lines.append('[ext_resource type="Material" path="res://resources/materials/level_0/fixture_housing.tres" id="mat_house"]\n')
    lines.append('[ext_resource type="Material" path="res://resources/materials/level_0/fluorescent_emissive.tres" id="mat_on"]\n')
    lines.append('[ext_resource type="Material" path="res://resources/materials/level_0/fluorescent_off.tres" id="mat_off"]\n')
    if (ROOT / "resources/generated/level_0/sector_001/mm_fixtures_on_house.res").exists():
        lines.append(f'[ext_resource type="MultiMesh" path="{RES}/mm_fixtures_on_house.res" id="mm_on_h"]\n')
        lines.append(f'[ext_resource type="MultiMesh" path="{RES}/mm_fixtures_on_tube.res" id="mm_on_t"]\n')
    if (ROOT / "resources/generated/level_0/sector_001/mm_fixtures_off_house.res").exists():
        lines.append(f'[ext_resource type="MultiMesh" path="{RES}/mm_fixtures_off_house.res" id="mm_off_h"]\n')
        lines.append(f'[ext_resource type="MultiMesh" path="{RES}/mm_fixtures_off_tube.res" id="mm_off_t"]\n')
    for i, p in enumerate(chunk_paths, 1):
        rel = f"res://scenes/levels/level_0/sector_001_chunks/{p.name}"
        lines.append(f'[ext_resource type="PackedScene" path="{rel}" id="ch_{i:03d}"]\n')
    lines.append("\n[node name=\"Sector001\" type=\"Node3D\"]\n\n")
    for i, p in enumerate(chunk_paths, 1):
        lines.append(f'[node name="{p.stem}" parent="." instance=ExtResource("ch_{i:03d}")]\n\n')
    lines.append('[node name="Fixtures" type="Node3D" parent="."]\n\n')
    if (ROOT / "resources/generated/level_0/sector_001/mm_fixtures_on_house.res").exists():
        lines.append('[node name="MM_On_House" type="MultiMeshInstance3D" parent="Fixtures"]\n')
        lines.append('multimesh = ExtResource("mm_on_h")\n')
        lines.append('material_override = ExtResource("mat_house")\n')
        lines.append("cast_shadow = 0\n\n")
        lines.append('[node name="MM_On_Tube" type="MultiMeshInstance3D" parent="Fixtures"]\n')
        lines.append('multimesh = ExtResource("mm_on_t")\n')
        lines.append('material_override = ExtResource("mat_on")\n')
        lines.append("cast_shadow = 0\n\n")
    if (ROOT / "resources/generated/level_0/sector_001/mm_fixtures_off_house.res").exists():
        lines.append('[node name="MM_Off_House" type="MultiMeshInstance3D" parent="Fixtures"]\n')
        lines.append('multimesh = ExtResource("mm_off_h")\n')
        lines.append('material_override = ExtResource("mat_house")\n')
        lines.append("cast_shadow = 0\n\n")
        lines.append('[node name="MM_Off_Tube" type="MultiMeshInstance3D" parent="Fixtures"]\n')
        lines.append('multimesh = ExtResource("mm_off_t")\n')
        lines.append('material_override = ExtResource("mat_off")\n')
        lines.append("cast_shadow = 0\n\n")
    for i, p in enumerate(data.get("fixtures_on", [])):
        x, y, z = p
        lines.append(f'[node name="L_{i:03d}" type="OmniLight3D" parent="Fixtures"]\n')
        lines.append(f"transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, {x}, {y - 0.12}, {z})\n")
        lines.append("light_color = Color(1, 0.96, 0.8, 1)\n")
        lines.append("light_energy = 2.35\n")
        lines.append("light_specular = 0.22\n")
        lines.append("shadow_enabled = false\n")
        lines.append("omni_range = 8.4\n")
        lines.append("omni_attenuation = 1.35\n\n")
    for i, p in enumerate(data.get("fixtures_flicker", [])):
        x, y, z = p
        lines.append(f'[node name="Flicker_{i:03d}" parent="Fixtures" instance=ExtResource("3_fix")]\n')
        lines.append(f"transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, {x}, {y}, {z})\n")
        lines.append("flicker = true\n\n")
    ox, oy, oz = data["orange"]
    lines.append('[node name="OrangeBulb" type="OmniLight3D" parent="Fixtures"]\n')
    lines.append(f"transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, {ox}, {oy}, {oz})\n")
    lines.append("light_color = Color(1, 0.45, 0.12, 1)\n")
    lines.append("light_energy = 2.8\n")
    lines.append("omni_range = 7.5\n")
    lines.append("omni_attenuation = 1.4\n")
    lines.append("shadow_enabled = true\n")
    SECTOR.parent.mkdir(parents=True, exist_ok=True)
    SECTOR.write_text("".join(lines), encoding="utf-8")


def write_main(data: dict) -> None:
    sx, sz = data["spawn"]
    wx0, wz0 = data["wx0"], data["wz0"]
    # camera over sector 001
    cx = wx0 + 75.5
    cz = wz0 + 62.5
    lines = []
    lines.append("[gd_scene load_steps=5 format=3]\n\n")
    lines.append('[ext_resource type="PackedScene" path="res://scenes/player.tscn" id="1_player"]\n')
    lines.append('[ext_resource type="Script" path="res://scripts/debug/level_0_debug_view.gd" id="2_debug"]\n')
    lines.append('[ext_resource type="PackedScene" path="res://scenes/levels/level_0/sector_001.tscn" id="3_s1"]\n\n')
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
    lines.append("fog_density = 0.0045\n\n")
    lines.append('[node name="Level0" type="Node3D"]\n')
    lines.append('script = ExtResource("2_debug")\n\n')
    lines.append('[node name="WorldEnvironment" type="WorldEnvironment" parent="."]\n')
    lines.append("environment = SubResource(\"Environment_level0\")\n\n")
    lines.append('[node name="Sector001" parent="." instance=ExtResource("3_s1")]\n\n')
    lines.append('[node name="Player" parent="." instance=ExtResource("1_player")]\n')
    lines.append(f"transform = Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, -1, {sx}, 0.1, {sz})\n\n")
    lines.append('[node name="DebugViews" type="Node3D" parent="."]\n\n')
    lines.append('[node name="TopDownPlan" type="Camera3D" parent="DebugViews"]\n')
    lines.append(f"transform = Transform3D(1, 0, 0, 0, 0, 1, 0, -1, 0, {cx}, 180, {cz})\n")
    lines.append("projection = 1\n")
    lines.append("size = 170\n")
    lines.append("far = 400.0\n")
    lines.append("current = false\n")
    MAIN.write_text("".join(lines), encoding="utf-8")


def main() -> None:
    data = json.loads(BAKE.read_text(encoding="utf-8"))
    if CHUNK_DIR.exists():
        for old in CHUNK_DIR.glob("*.tscn"):
            old.unlink()
    paths = [write_chunk(c) for c in data["chunks"]]
    write_sector(paths, data)
    write_main(data)
    print("chunks", len(paths))
    print("sector", SECTOR, SECTOR.stat().st_size, "lines", SECTOR.read_text(encoding="utf-8").count("\n"))
    print("main", MAIN, MAIN.stat().st_size, "lines", MAIN.read_text(encoding="utf-8").count("\n"))
    total_res = 0
    n_res = 0
    for p in (ROOT / "resources/generated/level_0/sector_001").glob("*.res"):
        total_res += p.stat().st_size
        n_res += 1
    print("res files", n_res, "bytes", total_res)


if __name__ == "__main__":
    main()
