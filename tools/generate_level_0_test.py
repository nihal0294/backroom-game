"""Generate scenes/levels/level_0_test.tscn from the Level 0 kit."""

from __future__ import annotations

import math
import os
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
OUT_PATH = os.path.join(ROOT, "scenes", "levels", "level_0_test.tscn")

CELL = 3.0
CEILING_Y = 3.0
LIGHT_Y = 2.985

WALL_VARIANTS = ["wall_clean", "wall_dirty", "wall_scratched", "wall_wet"]
FLOOR_VARIANTS = ["floor_clean", "floor_torn_1", "floor_torn_2"]
TILE_VARIANTS = ["tile_clean", "tile_dirty", "tile_broken_1", "tile_broken_2"]
DOOR_VARIANTS = ["doorway_clean", "doorway_dirty", "doorway_scratched", "doorway_wet"]
CORNER_VARIANTS = ["corner_clean", "corner_dirty", "corner_scratched", "corner_wet"]

DIRS = {
    "E": (1, 0),
    "W": (-1, 0),
    "N": (0, 1),
    "S": (0, -1),
}


def add_rect(cells: set[tuple[int, int]], x0: int, z0: int, w: int, d: int) -> None:
    for x in range(x0, x0 + w):
        for z in range(z0, z0 + d):
            cells.add((x, z))


def build_walkable() -> set[tuple[int, int]]:
    cells: set[tuple[int, int]] = set()
    # A: 6x6 start
    add_rect(cells, 0, 0, 2, 2)
    # 3 m corridor north, west-aligned (not centered on the room)
    cells.add((0, 2))
    # B: 9x9
    add_rect(cells, 0, 3, 3, 3)
    # 3 m stub east of B, then a 6x3 wide hall
    cells.add((3, 3))
    add_rect(cells, 3, 4, 2, 1)
    # C: 6x9
    add_rect(cells, 5, 2, 2, 3)
    # from A east: 3 m corridor that suddenly opens into a 6x6
    cells.add((2, 1))
    cells.add((3, 1))
    add_rect(cells, 4, 0, 2, 2)
    # useless 3x3
    cells.add((6, 0))
    # 3 m from B north, offset from the room center
    cells.add((1, 6))
    # 12x12 almost empty, with a 3x3 structural core
    add_rect(cells, 3, 6, 4, 4)
    cells.discard((4, 8))
    # 3 m from C into the large room (second entrance to C)
    cells.add((5, 5))
    # 6x6 west of the large room, connector not centered
    add_rect(cells, 0, 8, 2, 2)
    cells.add((2, 8))
    # 6x6 east with two entrances (north L and west 3 m)
    add_rect(cells, 8, 4, 2, 2)
    cells.add((7, 4))
    cells.add((7, 6))
    cells.add((8, 6))
    cells.add((9, 6))
    cells.add((9, 7))
    cells.add((8, 7))
    return cells


def doorway_pairs() -> set[frozenset[tuple[int, int]]]:
    return {
        frozenset({(0, 1), (0, 2)}),
        frozenset({(5, 0), (6, 0)}),
        frozenset({(2, 8), (3, 8)}),
        frozenset({(7, 4), (8, 4)}),
        frozenset({(1, 5), (1, 6)}),
        frozenset({(5, 4), (5, 5)}),
        frozenset({(6, 6), (7, 6)}),
        frozenset({(2, 4), (3, 4)}),
        frozenset({(4, 4), (5, 4)}),
    }


def pick(variants: list[str], cx: int, cz: int, salt: int) -> str:
    return variants[(cx * 3 + cz * 7 + salt) % len(variants)]


def fmt(v: float) -> str:
    r = round(float(v), 5)
    if abs(r - round(r)) < 1e-9:
        return str(int(round(r)))
    text = f"{r:.5f}".rstrip("0").rstrip(".")
    return text


def xform(x: float, y: float, z: float, yaw_deg: float = 0.0) -> str:
    yaw = math.radians(yaw_deg)
    c, s = math.cos(yaw), math.sin(yaw)
    if abs(c) < 1e-9:
        c = 0.0
    if abs(s) < 1e-9:
        s = 0.0
    return (
        f"Transform3D({fmt(c)}, 0, {fmt(-s)}, 0, 1, 0, {fmt(s)}, 0, {fmt(c)}, "
        f"{fmt(x)}, {fmt(y)}, {fmt(z)})"
    )


def cell_center(cx: int, cz: int) -> tuple[float, float]:
    return cx * CELL + CELL * 0.5, cz * CELL + CELL * 0.5


def wall_pose(cx: int, cz: int, direction: str, inward: float = 0.0) -> tuple[float, float, float, float]:
    px, pz = cell_center(cx, cz)
    if direction == "E":
        return cx * CELL + CELL - inward, 0.0, pz, 180.0
    if direction == "W":
        return cx * CELL + inward, 0.0, pz, 0.0
    if direction == "N":
        return px, 0.0, cz * CELL + CELL - inward, 90.0
    if direction == "S":
        return px, 0.0, cz * CELL + inward, -90.0
    raise ValueError(direction)


def shared_edge_pose(a: tuple[int, int], b: tuple[int, int]) -> tuple[float, float, float, float]:
    (ax, az), (bx, bz) = a, b
    if az == bz:
        west = a if ax < bx else b
        px, _, pz, _ = wall_pose(west[0], west[1], "E")
        return px, 0.0, pz, 0.0
    south = a if az < bz else b
    px, _, pz, _ = wall_pose(south[0], south[1], "N")
    return px, 0.0, pz, -90.0


def has_light(cx: int, cz: int, walkable: set[tuple[int, int]]) -> bool:
    if (cx, cz) not in walkable:
        return False
    missing = {(0, 2), (6, 2), (8, 7), (6, 0), (4, 7), (5, 9)}
    if (cx, cz) in missing:
        return False
    if 3 <= cx <= 6 and 6 <= cz <= 9:
        return (cx + cz) % 3 == 0
    return (cx + cz) % 2 == 0


def ascii_map(walkable: set[tuple[int, int]]) -> str:
    xs = [c[0] for c in walkable]
    zs = [c[1] for c in walkable]
    lines = []
    for z in range(max(zs), min(zs) - 1, -1):
        row = []
        for x in range(min(xs), max(xs) + 1):
            row.append("#" if (x, z) in walkable else ".")
        lines.append("".join(row) + f"  z={z}")
    return "\n".join(lines)


def main() -> None:
    walkable = build_walkable()
    doors = doorway_pairs()
    xs = [c[0] for c in walkable]
    zs = [c[1] for c in walkable]
    width_m = (max(xs) - min(xs) + 1) * CELL
    depth_m = (max(zs) - min(zs) + 1) * CELL
    print("walkable cells", len(walkable))
    print(f"footprint {width_m:.0f} x {depth_m:.0f} m")
    print(ascii_map(walkable))

    glb_names = (
        WALL_VARIANTS + FLOOR_VARIANTS + TILE_VARIANTS + DOOR_VARIANTS + CORNER_VARIANTS + ["light"]
    )
    ext = []
    ids = {}
    n = 1
    ext.append(f'[ext_resource type="PackedScene" path="res://scenes/player.tscn" id="1_player"]')
    n = 2
    ext.append(
        f'[ext_resource type="Script" path="res://scripts/apply_level_0_materials.gd" id="2_atlas"]'
    )
    n = 3
    for name in glb_names:
        rid = f"{n}_{name}"
        ids[name] = rid
        ext.append(
            f'[ext_resource type="PackedScene" path="res://assets/models/environment/level_0/{name}.glb" id="{rid}"]'
        )
        n += 1

    sub = []
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_wall"]')
    sub.append("size = Vector3(0.12, 3, 3)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_floor"]')
    sub.append("size = Vector3(3, 0.12, 3)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_ceiling"]')
    sub.append("size = Vector3(3, 0.12, 3)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_jamb"]')
    sub.append("size = Vector3(0.12, 3, 0.6)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_lintel"]')
    sub.append("size = Vector3(0.12, 0.8, 3)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_corner_x"]')
    sub.append("size = Vector3(1.5, 3, 0.12)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_corner_z"]')
    sub.append("size = Vector3(0.12, 3, 1.5)")
    sub.append("")
    sub.append('[sub_resource type="Environment" id="Environment_level0"]')
    sub.append("background_mode = 1")
    sub.append("background_color = Color(0.16, 0.15, 0.08, 1)")
    sub.append("ambient_light_source = 2")
    sub.append("ambient_light_color = Color(0.86, 0.82, 0.48, 1)")
    sub.append("ambient_light_energy = 0.48")
    sub.append("tonemap_mode = 2")
    sub.append("tonemap_exposure = 1.18")
    sub.append("ssao_enabled = true")
    sub.append("ssao_radius = 0.9")
    sub.append("ssao_intensity = 0.7")
    sub.append("glow_enabled = true")
    sub.append("glow_intensity = 0.55")
    sub.append("glow_bloom = 0.18")
    sub.append("glow_hdr_threshold = 0.75")
    sub.append("fog_enabled = true")
    sub.append("fog_light_color = Color(0.72, 0.68, 0.38, 1)")
    sub.append("fog_density = 0.016")
    sub.append("fog_aerial_perspective = 0.25")
    sub.append("adjustment_enabled = true")
    sub.append("adjustment_brightness = 1.06")
    sub.append("adjustment_contrast = 0.94")
    sub.append("adjustment_saturation = 1.12")

    nodes: list[str] = []
    nodes.append(f'[node name="Level0Test" type="Node3D"]')
    nodes.append("script = ExtResource(\"2_atlas\")")
    nodes.append("")
    nodes.append('[node name="WorldEnvironment" type="WorldEnvironment" parent="."]')
    nodes.append("environment = SubResource(\"Environment_level0\")")
    nodes.append("")
    spawn_x, spawn_z = cell_center(0, 0)
    spawn_x = 3.0
    spawn_z = 3.0
    nodes.append('[node name="Player" parent="." instance=ExtResource("1_player")]')
    nodes.append(f"transform = {xform(spawn_x, 0.0, spawn_z)}")
    nodes.append("")
    for group in ("Floors", "Ceilings", "Walls", "Doorways", "Lights", "Details"):
        nodes.append(f'[node name="{group}" type="Node3D" parent="."]')
        nodes.append("")

    floor_i = wall_i = door_i = light_i = ceil_i = col_i = 0

    for cx, cz in sorted(walkable):
        px, pz = cell_center(cx, cz)
        floor_name = pick(FLOOR_VARIANTS, cx, cz, 1)
        tile_name = pick(TILE_VARIANTS, cx, cz, 4)
        floor_i += 1
        nodes.append(
            f'[node name="Floor_{floor_i}" parent="Floors" instance=ExtResource("{ids[floor_name]}")]'
        )
        nodes.append(f"transform = {xform(px, 0, pz)}")
        nodes.append("")
        col_i += 1
        nodes.append(f'[node name="FloorBody_{col_i}" type="StaticBody3D" parent="Floors"]')
        nodes.append(f"transform = {xform(px, 0, pz)}")
        nodes.append("")
        nodes.append(f'[node name="CollisionShape3D" type="CollisionShape3D" parent="Floors/FloorBody_{col_i}"]')
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.06, 0)")
        nodes.append("shape = SubResource(\"BoxShape3D_floor\")")
        nodes.append("")

        ceil_i += 1
        nodes.append(
            f'[node name="Ceiling_{ceil_i}" parent="Ceilings" instance=ExtResource("{ids[tile_name]}")]'
        )
        nodes.append(f"transform = {xform(px, CEILING_Y, pz)}")
        nodes.append("")
        col_i += 1
        nodes.append(f'[node name="CeilingBody_{col_i}" type="StaticBody3D" parent="Ceilings"]')
        nodes.append(f"transform = {xform(px, CEILING_Y, pz)}")
        nodes.append("")
        nodes.append(
            f'[node name="CollisionShape3D" type="CollisionShape3D" parent="Ceilings/CeilingBody_{col_i}"]'
        )
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.06, 0)")
        nodes.append("shape = SubResource(\"BoxShape3D_ceiling\")")
        nodes.append("")

        if has_light(cx, cz, walkable):
            light_i += 1
            yaw = 90.0 if (cx + cz) % 2 == 0 else 0.0
            energy = 1.85 if (cx + cz) % 5 != 0 else 1.05
            rng = 8.5 if energy > 1.4 else 6.5
            nodes.append(
                f'[node name="Light_{light_i}" parent="Lights" instance=ExtResource("{ids["light"]}")]'
            )
            nodes.append(f"transform = {xform(px, LIGHT_Y, pz, yaw)}")
            nodes.append("")
            nodes.append(f'[node name="OmniLight3D" type="OmniLight3D" parent="Lights/Light_{light_i}"]')
            nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.12, 0)")
            nodes.append("light_color = Color(1.0, 0.96, 0.58, 1)")
            nodes.append(f"light_energy = {fmt(energy)}")
            nodes.append("light_specular = 0.12")
            nodes.append("shadow_enabled = true")
            nodes.append("shadow_blur = 2.4")
            nodes.append(f"omni_range = {fmt(rng)}")
            nodes.append("omni_attenuation = 1.15")
            nodes.append("")

    placed_walls: set[tuple[float, float, str]] = set()
    for cx, cz in sorted(walkable):
        for direction, (dx, dz) in DIRS.items():
            nb = (cx + dx, cz + dz)
            pair = frozenset({(cx, cz), nb})
            if pair in doors:
                continue
            if nb in walkable:
                continue
            offsets = [0.0]
            if (cx, cz) == (6, 0) and direction == "E":
                offsets.append(1.5)
            for inward in offsets:
                px, py, pz, yaw = wall_pose(cx, cz, direction, inward)
                key = (round(px, 3), round(pz, 3), direction)
                if key in placed_walls:
                    continue
                placed_walls.add(key)
                wall_i += 1
                wall_name = pick(WALL_VARIANTS, cx, cz, 9 + int(inward * 2))
                nodes.append(
                    f'[node name="Wall_{wall_i}" parent="Walls" instance=ExtResource("{ids[wall_name]}")]'
                )
                nodes.append(f"transform = {xform(px, py, pz, yaw)}")
                nodes.append("")
                col_i += 1
                nodes.append(f'[node name="WallBody_{col_i}" type="StaticBody3D" parent="Walls"]')
                nodes.append(f"transform = {xform(px, py, pz, yaw)}")
                nodes.append("")
                nodes.append(
                    f'[node name="CollisionShape3D" type="CollisionShape3D" parent="Walls/WallBody_{col_i}"]'
                )
                nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.5, 0)")
                nodes.append("shape = SubResource(\"BoxShape3D_wall\")")
                nodes.append("")

    for pair in doors:
        a, b = tuple(pair)
        px, py, pz, yaw = shared_edge_pose(a, b)
        door_i += 1
        door_name = pick(DOOR_VARIANTS, a[0], a[1], 11)
        nodes.append(
            f'[node name="Doorway_{door_i}" parent="Doorways" instance=ExtResource("{ids[door_name]}")]'
        )
        nodes.append(f"transform = {xform(px, py, pz, yaw)}")
        nodes.append("")
        col_i += 1
        body = f"DoorBody_{col_i}"
        nodes.append(f'[node name="{body}" type="StaticBody3D" parent="Doorways"]')
        nodes.append(f"transform = {xform(px, py, pz, yaw)}")
        nodes.append("")
        nodes.append(f'[node name="JambL" type="CollisionShape3D" parent="Doorways/{body}"]')
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.5, 1.2)")
        nodes.append("shape = SubResource(\"BoxShape3D_jamb\")")
        nodes.append("")
        nodes.append(f'[node name="JambR" type="CollisionShape3D" parent="Doorways/{body}"]')
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.5, -1.2)")
        nodes.append("shape = SubResource(\"BoxShape3D_jamb\")")
        nodes.append("")
        nodes.append(f'[node name="Lintel" type="CollisionShape3D" parent="Doorways/{body}"]')
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2.6, 0)")
        nodes.append("shape = SubResource(\"BoxShape3D_lintel\")")
        nodes.append("")

    # 1.5 m L partitions in the large room — breaks the 3 m grid without leaving the kit.
    details = [
        (13.5, 21.0, 0.0, "corner_dirty"),
        (18.0, 24.0, 180.0, "corner_scratched"),
        (21.0, 19.5, 90.0, "corner_wet"),
    ]
    for i, (dx, dz, yaw, corner_name) in enumerate(details, start=1):
        nodes.append(
            f'[node name="Corner_{i}" parent="Details" instance=ExtResource("{ids[corner_name]}")]'
        )
        nodes.append(f"transform = {xform(dx, 0, dz, yaw)}")
        nodes.append("")
        col_i += 1
        body = f"DetailBody_{col_i}"
        nodes.append(f'[node name="{body}" type="StaticBody3D" parent="Details"]')
        nodes.append(f"transform = {xform(dx, 0, dz, yaw)}")
        nodes.append("")
        nodes.append(f'[node name="ArmX" type="CollisionShape3D" parent="Details/{body}"]')
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0.75, 1.5, 0)")
        nodes.append("shape = SubResource(\"BoxShape3D_corner_x\")")
        nodes.append("")
        nodes.append(f'[node name="ArmZ" type="CollisionShape3D" parent="Details/{body}"]')
        nodes.append("transform = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.5, 0.75)")
        nodes.append("shape = SubResource(\"BoxShape3D_corner_z\")")
        nodes.append("")

    text = []
    sub_count = 8
    load_steps = len(ext) + sub_count + 1
    text.append(f"[gd_scene load_steps={load_steps} format=3]")
    text.append("")
    text.extend(ext)
    text.append("")
    text.extend(sub)
    text.append("")
    text.extend(nodes)
    os.makedirs(os.path.dirname(OUT_PATH), exist_ok=True)
    with open(OUT_PATH, "w", encoding="utf-8", newline="\n") as handle:
        handle.write("\n".join(text).rstrip() + "\n")
    print("wrote", OUT_PATH)
    print("walls", wall_i, "floors", floor_i, "doorways", door_i, "lights", light_i)


if __name__ == "__main__":
    main()
