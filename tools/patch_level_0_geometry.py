"""Patch approved Level 0 tscn: accidental hole, ceiling collision, void catch.

Does not regenerate topology.
"""
from __future__ import annotations

import re

TSCN = "scenes/levels/level_0_test.tscn"

VOID_EXT = '[ext_resource type="Material" path="res://resources/materials/level_0/void_black.tres" id="mat_void"]'


def main() -> int:
    text = open(TSCN, encoding="utf-8").read()

    if "id=\"mat_void\"" not in text:
        text = text.replace(
            '[ext_resource type="Material" path="res://resources/materials/level_0/stair.tres" id="mat_stair"]\n',
            '[ext_resource type="Material" path="res://resources/materials/level_0/stair.tres" id="mat_stair"]\n'
            + VOID_EXT
            + "\n",
            1,
        )

    # Disable collision on ceiling slabs so GF ceilings at Y=3 do not
    # trap the Upper Floor player (feet at Y=3.0, GF ceiling occupies 3.00–3.10).
    lines = text.splitlines(keepends=True)
    out = []
    i = 0
    n_disabled = 0
    while i < len(lines):
        line = lines[i]
        out.append(line)
        if line.startswith('[node name="Col"') and "/_Ceilings/" in line:
            # next lines are shape = ...; insert disabled if missing
            if i + 1 < len(lines) and "disabled = true" not in lines[i + 1]:
                if i + 2 < len(lines) and "disabled = true" not in lines[i + 2]:
                    out.append(lines[i + 1])
                    if "disabled = true" not in lines[i + 1]:
                        out.append("disabled = true\n")
                        n_disabled += 1
                    i += 1
        i += 1
    text = "".join(out)

    # Dedup accidental double disabled
    text = re.sub(r"(disabled = true\n){2,}", "disabled = true\n", text)

    if 'name="UF_GAP_PATCH_F0"' not in text:
        # 0.6 m notch south of UF_A_SPINE / east of UC_TO_A
        patch = """
[sub_resource type="BoxMesh" id="mesh_gap_patch"]
size = Vector3(0.6, 0.1, 0.6)

[sub_resource type="BoxShape3D" id="shape_gap_patch"]
size = Vector3(0.6, 0.1, 0.6)

[sub_resource type="BoxMesh" id="mesh_void_catch"]
size = Vector3(200, 0.4, 160)

[sub_resource type="BoxShape3D" id="shape_void_catch"]
size = Vector3(200, 0.4, 160)

"""
        # insert subresources before first [node name="Level0"]
        text = text.replace(
            '[node name="Level0" type="Node3D"]',
            patch + '[node name="Level0" type="Node3D"]',
            1,
        )

        extra = """
[node name="UF_GAP_PATCH_F0" type="StaticBody3D" parent="UpperFloor/UF_A_NORTH_BRANCH"]
transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 48.3, 2.95, 85.5)

[node name="Mesh" type="MeshInstance3D" parent="UpperFloor/UF_A_NORTH_BRANCH/UF_GAP_PATCH_F0"]
mesh = SubResource("mesh_gap_patch")
surface_material_override/0 = ExtResource("mat_carpet_main")

[node name="Col" type="CollisionShape3D" parent="UpperFloor/UF_A_NORTH_BRANCH/UF_GAP_PATCH_F0"]
shape = SubResource("shape_gap_patch")

[node name="UF_GAP_PATCH_C0" type="StaticBody3D" parent="UpperFloor/_Ceilings"]
transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 48.3, 6.05, 85.5)

[node name="Mesh" type="MeshInstance3D" parent="UpperFloor/_Ceilings/UF_GAP_PATCH_C0"]
mesh = SubResource("mesh_gap_patch")
surface_material_override/0 = ExtResource("mat_ceil")

[node name="Col" type="CollisionShape3D" parent="UpperFloor/_Ceilings/UF_GAP_PATCH_C0"]
shape = SubResource("shape_gap_patch")
disabled = true

[node name="TemporaryVoidCatch" type="StaticBody3D" parent="."]
transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 70, -8.2, 48)

[node name="Mesh" type="MeshInstance3D" parent="TemporaryVoidCatch"]
mesh = SubResource("mesh_void_catch")
surface_material_override/0 = ExtResource("mat_void")
cast_shadow = 0

[node name="Col" type="CollisionShape3D" parent="TemporaryVoidCatch"]
shape = SubResource("shape_void_catch")
"""
        text = text.rstrip() + "\n" + extra + "\n"

    # Double-height shaft lining: 8 m of void walls around the UF hole,
    # starting just below the UF floor so GF still sees the 6 m hall,
    # but looking down from the balcony the first 8 m of shaft is black
    # if we placed walls in the GF hall we'd ruin DH. Skip GF intrusion.
    # Instead: a void sleeve from Y=2.99 down to Y=-5 only *inside* the
    # hole XY, which WOULD occupy B_DHALL. Not applied.

    n_ext = len(re.findall(r"^\[ext_resource ", text, re.M))
    n_sub = len(re.findall(r"^\[sub_resource ", text, re.M))
    text = re.sub(
        r"\[gd_scene load_steps=\d+ format=3\]",
        f"[gd_scene load_steps={n_ext + n_sub} format=3]",
        text,
        count=1,
    )

    open(TSCN, "w", encoding="utf-8", newline="\n").write(text)
    print("ceiling collisions disabled:", n_disabled)
    print("wrote", TSCN)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
