"""Visual pass on the APPROVED Level 0 tscn.

Does not change topology. Removes debug labels, fixes stair P21,
swaps placeholders for PBR materials, adds fluorescent fixtures.
"""

from __future__ import annotations

import math
import os
import re
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
TSCN = os.path.join(ROOT, "scenes", "levels", "level_0_test.tscn")

WALL_VARIANT_MARKERS = (
    "GF_B_WEST_COMPLEX",
    "GF_I_SOUTHWEST_BRANCH",
    "UF_H_SOUTH_BRANCH",
    "UF_I_SOUTHWEST",
)
CARPET_VARIANT_MARKERS = (
    "GF_E_EAST_LARGE_ROOM",
    "GF_H_SOUTH_CENTRAL",
    "UF_E_EAST_SECTOR",
)

EXT = [
    '[ext_resource type="PackedScene" path="res://scenes/player.tscn" id="1_player"]',
    '[ext_resource type="Script" path="res://scripts/debug/level_0_debug_view.gd" id="2_debug"]',
    '[ext_resource type="PackedScene" path="res://scenes/environment/fluorescent_fixture.tscn" id="3_fix"]',
    '[ext_resource type="Material" path="res://resources/materials/level_0/wall_main.tres" id="mat_wall_main"]',
    '[ext_resource type="Material" path="res://resources/materials/level_0/wall_variant.tres" id="mat_wall_var"]',
    '[ext_resource type="Material" path="res://resources/materials/level_0/carpet_main.tres" id="mat_carpet_main"]',
    '[ext_resource type="Material" path="res://resources/materials/level_0/carpet_variant.tres" id="mat_carpet_var"]',
    '[ext_resource type="Material" path="res://resources/materials/level_0/ceiling_base.tres" id="mat_ceil"]',
    '[ext_resource type="Material" path="res://resources/materials/level_0/stair.tres" id="mat_stair"]',
]

ENV = """[sub_resource type="Environment" id="Environment_level0"]
background_mode = 1
background_color = Color(0.08, 0.07, 0.055, 1)
ambient_light_source = 2
ambient_light_color = Color(0.55, 0.5, 0.38, 1)
ambient_light_energy = 0.11
tonemap_mode = 2
tonemap_exposure = 0.92
ssao_enabled = true
ssao_radius = 0.85
ssao_intensity = 0.85
ssao_horizon = 0.04
glow_enabled = true
glow_normalized = true
glow_intensity = 0.32
glow_bloom = 0.04
glow_hdr_threshold = 0.85
fog_enabled = true
fog_light_color = Color(0.55, 0.5, 0.38, 1)
fog_density = 0.0038
fog_aerial_perspective = 0.35
"""


def _has_marker(path: str, markers: tuple[str, ...]) -> bool:
    return any(m in path for m in markers)


def parse_mesh_sizes(text: str) -> dict[str, tuple[float, float, float]]:
    sizes: dict[str, tuple[float, float, float]] = {}
    for m in re.finditer(
        r'\[sub_resource type="BoxMesh" id="(mesh_\d+)"\]\s*\nsize = Vector3\(([^)]+)\)',
        text,
    ):
        mid = m.group(1)
        nums = [float(x.strip()) for x in m.group(2).split(",")]
        sizes[mid] = (nums[0], nums[1], nums[2])
    return sizes


def parse_transform_origin(line: str) -> tuple[float, float, float] | None:
    m = re.search(r"Transform3D\(([^)]+)\)", line)
    if not m:
        return None
    nums = [float(x.strip()) for x in m.group(1).split(",")]
    if len(nums) < 12:
        return None
    return nums[9], nums[10], nums[11]


def strip_blocks(text: str) -> str:
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    skip = False
    for line in lines:
        if line.startswith("[node name="):
            nm = re.search(r'name="([^"]+)"', line)
            pm = re.search(r'parent="([^"]*)"', line)
            name = nm.group(1) if nm else ""
            parent = pm.group(1) if pm else ""
            skip = name == "RegionLabel" or name == "P21" or parent.endswith("/P21")
        if not skip:
            out.append(line)
    return "".join(out)


def replace_placeholders(text: str) -> str:
    lines = text.splitlines(keepends=True)
    parent = ""
    out: list[str] = []
    for line in lines:
        if line.startswith("[node name="):
            pm = re.search(r'parent="([^"]+)"', line)
            parent = pm.group(1) if pm else ""
        if "SubResource(\"WALL_PLACEHOLDER\")" in line:
            mat = "mat_wall_var" if _has_marker(parent, WALL_VARIANT_MARKERS) else "mat_wall_main"
            line = line.replace('SubResource("WALL_PLACEHOLDER")', f'ExtResource("{mat}")')
        elif "SubResource(\"FLOOR_PLACEHOLDER\")" in line:
            mat = "mat_carpet_var" if _has_marker(parent, CARPET_VARIANT_MARKERS) else "mat_carpet_main"
            line = line.replace('SubResource("FLOOR_PLACEHOLDER")', f'ExtResource("{mat}")')
        elif "SubResource(\"CEILING_PLACEHOLDER\")" in line:
            line = line.replace('SubResource("CEILING_PLACEHOLDER")', 'ExtResource("mat_ceil")')
        elif "SubResource(\"STAIR_PLACEHOLDER\")" in line:
            line = line.replace('SubResource("STAIR_PLACEHOLDER")', 'ExtResource("mat_stair")')
        out.append(line)
    return "".join(out)


def replace_header(text: str) -> str:
    text = re.sub(r"\[ext_resource[^\]]*\]\n", "", text)
    text = re.sub(
        r"\[sub_resource type=\"Environment\" id=\"Environment_level0\"\]\n(?:.*\n)*?(?=\n\[sub_resource|\n\[node )",
        ENV + "\n",
        text,
        count=1,
    )
    text = re.sub(
        r"\[sub_resource type=\"StandardMaterial3D\" id=\"(?:WALL|FLOOR|CEILING|STAIR)_PLACEHOLDER\"\]\n(?:.*\n)*?(?=\n\[sub_resource|\n\[node )",
        "",
        text,
    )
    # Insert ext resources after gd_scene line
    text = re.sub(
        r"(\[gd_scene[^\]]*\]\n\n)",
        r"\1" + "\n".join(EXT) + "\n\n",
        text,
        count=1,
    )
    text = re.sub(
        r'(light_energy = )0\.65',
        r"\g<1>0.0",
        text,
        count=1,
    )
    text = text.replace(
        '[node name="DebugSun" type="DirectionalLight3D" parent="."]',
        '[node name="DebugSun" type="DirectionalLight3D" parent="."]\nvisible = false',
        1,
    )
    return text


def collect_ceilings(text: str) -> list[dict]:
    sizes = parse_mesh_sizes(text)
    ceilings: list[dict] = []
    # Match StaticBody under *_Ceilings followed by a Mesh using a BoxMesh
    pattern = re.compile(
        r'\[node name="([^"]+)" type="StaticBody3D" parent="((?:GroundFloor|UpperFloor)/_Ceilings)"\]\n'
        r"transform = Transform3D\(([^)]+)\)\n\n"
        r'\[node name="Mesh" type="MeshInstance3D" parent="[^"]+"\]\n'
        r'mesh = SubResource\("(mesh_\d+)"\)',
    )
    for m in pattern.finditer(text):
        name, parent, tvals, mid = m.group(1), m.group(2), m.group(3), m.group(4)
        nums = [float(x.strip()) for x in tvals.split(",")]
        x, y, z = nums[9], nums[10], nums[11]
        sx, sy, sz = sizes.get(mid, (1.0, 0.1, 1.0))
        floor = 0 if parent.startswith("GroundFloor") else 1
        ceilings.append(
            {"name": name, "floor": floor, "x": x, "y": y, "z": z, "sx": sx, "sy": sy, "sz": sz}
        )
    return ceilings


def place_fixtures(ceilings: list[dict]) -> tuple[list[dict], dict]:
    fixtures: list[dict] = []
    stats = defaultdict(int)

    def add(x, y, z, yaw, powered, emit, shadow, kind):
        fixtures.append(
            {
                "x": round(x, 3),
                "y": round(y, 3),
                "z": round(z, 3),
                "yaw": yaw,
                "powered": powered,
                "emit": emit,
                "shadow": shadow,
                "kind": kind,
            }
        )
        stats[kind] += 1

    light_positions: list[tuple[float, float, float]] = []

    def want_light(x, y, z) -> bool:
        for lx, ly, lz in light_positions:
            if abs(ly - y) < 1.0 and (x - lx) ** 2 + (z - lz) ** 2 < 4.2 ** 2:
                return False
        light_positions.append((x, y, z))
        return True

    for c in ceilings:
        sx, sz = abs(c["sx"]), abs(c["sz"])
        if min(sx, sz) < 1.15:
            continue
        y_fix = c["y"] - 0.08  # hang just under the slab
        yaw = 0.0 if sx >= sz else 90.0
        corridor = min(sx, sz) <= 3.7 and max(sx, sz) >= 5.5
        area = sx * sz
        hx, hz = sx * 0.5 - 0.9, sz * 0.5 - 0.9
        hx = max(0.2, hx)
        hz = max(0.2, hz)

        pts: list[tuple[float, float]] = []
        if corridor:
            along_x = sx >= sz
            length = sx if along_x else sz
            n = max(1, int(round(length / 6.6)))
            span = length - 1.8
            if n == 1:
                pts = [(c["x"], c["z"])]
            else:
                for i in range(n):
                    t = (i + 0.5) / n
                    if along_x:
                        pts.append((c["x"] - sx * 0.5 + 0.9 + t * span, c["z"]))
                    else:
                        pts.append((c["x"], c["z"] - sz * 0.5 + 0.9 + t * span))
            kind = "corridor"
        else:
            if area < 28:
                nxy = (1, 1)
            elif area < 70:
                nxy = (2, 1) if sx >= sz else (1, 2)
            elif area < 140:
                nxy = (2, 2)
            elif area < 280:
                nxy = (3, 2) if sx >= sz else (2, 3)
            else:
                nxy = (3, 3)
            nx, nz = nxy
            nx = min(nx, max(1, int(sx / 4.5)))
            nz = min(nz, max(1, int(sz / 4.5)))
            for ix in range(nx):
                for iz in range(nz):
                    px = c["x"] if nx == 1 else c["x"] - hx + (2 * hx) * (ix / max(1, nx - 1))
                    pz = c["z"] if nz == 1 else c["z"] - hz + (2 * hz) * (iz / max(1, nz - 1))
                    pts.append((px, pz))
            kind = "room"

        for i, (px, pz) in enumerate(pts):
            h = abs(hash((round(px, 2), round(pz, 2), c["floor"])))
            powered = (h % 13) != 0  # ~7.7% off
            emit = powered and want_light(px, y_fix, pz)
            shadow = emit and kind == "room" and area > 90 and (h % 11 == 0)
            add(px, y_fix, pz, yaw, powered, emit, shadow, kind)

    stats["fixtures"] = len(fixtures)
    stats["powered"] = sum(1 for f in fixtures if f["powered"])
    stats["off"] = sum(1 for f in fixtures if not f["powered"])
    stats["lights"] = sum(1 for f in fixtures if f["emit"])
    stats["shadows"] = sum(1 for f in fixtures if f["shadow"])
    return fixtures, stats


def xform(x, y, z, yaw_deg: float) -> str:
    yaw = math.radians(yaw_deg)
    cy, sy = math.cos(yaw), math.sin(yaw)
    def f(v):
        r = round(float(v), 5)
        if abs(r - round(r)) < 1e-9:
            return str(int(round(r)))
        return f"{r:.5f}".rstrip("0").rstrip(".")
    vals = [cy, 0.0, -sy, 0.0, 1.0, 0.0, sy, 0.0, cy, x, y, z]
    return "Transform3D(" + ", ".join(f(v) if abs(v) > 1e-9 else "0" for v in vals) + ")"


def emit_fixtures(fixtures: list[dict]) -> str:
    lines = ['[node name="Fluorescents" type="Node3D" parent="."]', ""]
    for i, f in enumerate(fixtures):
        name = f"Fix_{i}"
        lines.append(f'[node name="{name}" parent="Fluorescents" instance=ExtResource("3_fix")]')
        lines.append(f"transform = {xform(f['x'], f['y'], f['z'], f['yaw'])}")
        if not f["powered"]:
            lines.append("powered = false")
        if not f["emit"]:
            lines.append("emit_light = false")
        if f["shadow"]:
            lines.append("cast_shadow = true")
        lines.append("")
    return "\n".join(lines)


def recount_load_steps(text: str) -> str:
    n_ext = len(re.findall(r"^\[ext_resource ", text, re.M))
    n_sub = len(re.findall(r"^\[sub_resource ", text, re.M))
    return re.sub(
        r"\[gd_scene load_steps=\d+ format=3\]",
        f"[gd_scene load_steps={n_ext + n_sub} format=3]",
        text,
        count=1,
    )


def main() -> int:
    with open(TSCN, encoding="utf-8") as fh:
        text = fh.read()

    text = strip_blocks(text)
    text = replace_header(text)
    text = replace_placeholders(text)

    ceilings = collect_ceilings(text)
    fixtures, stats = place_fixtures(ceilings)
    if "[node name=\"Fluorescents\"" not in text:
        text = text.rstrip() + "\n\n" + emit_fixtures(fixtures) + "\n"

    leftover = []
    for token in ("WALL_PLACEHOLDER", "FLOOR_PLACEHOLDER", "CEILING_PLACEHOLDER", "STAIR_PLACEHOLDER", "RegionLabel"):
        if token in text:
            leftover.append(token)
    if leftover:
        print("WARN leftover tokens:", leftover)

    p21 = len(re.findall(r'name="P21"', text))
    labels = len(re.findall(r'name="RegionLabel"', text))
    print(f"P21 remaining={p21}  RegionLabel remaining={labels}")
    print(f"ceiling slabs used for lights: {len(ceilings)}")
    print("fixture stats:", dict(stats))

    text = recount_load_steps(text)
    with open(TSCN, "w", encoding="utf-8", newline="\n") as fh:
        fh.write(text)
    print("wrote", TSCN)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
