"""SUPERSEDED. Occupancy-fill layout that produced an open-plan blob.

Use tools/generate_level_0_blockout.py and docs/levels/level-0-blueprint.md.
"""

from __future__ import annotations

import math
import os

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
OUT_PATH = os.path.join(ROOT, "scenes", "levels", "level_0_test.tscn")
PACK = "res://assets/textures/environment/BackroomsLikeAsset2/Scenes"

CELL = 3.0
UPPER_Y = 3.0
ROOF_Y = 6.0
LIGHT_Y_OFF = 2.85

DIRS = {"E": (1, 0), "W": (-1, 0), "N": (0, 1), "S": (0, -1)}


def add_rect(cells: set, x0: int, z0: int, w: int, d: int) -> None:
    for x in range(x0, x0 + w):
        for z in range(z0, z0 + d):
            cells.add((x, z))


def punch(cells: set, spots: list[tuple[int, int]]) -> None:
    for s in spots:
        cells.discard(s)


def fmt(v: float) -> str:
    r = round(float(v), 5)
    if abs(r - round(r)) < 1e-9:
        return str(int(round(r)))
    return f"{r:.5f}".rstrip("0").rstrip(".")


def xform(x: float, y: float, z: float, yaw_deg: float = 0.0, pitch_deg: float = 0.0) -> str:
    yaw = math.radians(yaw_deg)
    pitch = math.radians(pitch_deg)
    cy, sy = math.cos(yaw), math.sin(yaw)
    cp, sp = math.cos(pitch), math.sin(pitch)
    # Yaw then pitch around X
    xx, yx, zx = cy, 0.0, -sy
    xy, yy, zy = sy * sp, cp, cy * sp
    xz, yz, zz = sy * cp, -sp, cy * cp
    if abs(pitch_deg) < 1e-6:
        xy = zy = xz = yz = 0.0
        yy = 1.0
        xx, zx, xz, zz = cy, -sy, sy, cy
    vals = [xx, yx, zx, xy, yy, zy, xz, yz, zz, x, y, z]
    return "Transform3D(" + ", ".join(fmt(v) if abs(v) > 1e-9 else "0" for v in vals) + ")"


def center(cx: int, cz: int) -> tuple[float, float]:
    return cx * CELL + CELL * 0.5, cz * CELL + CELL * 0.5


def wall_pose(cx: int, cz: int, direction: str, y: float) -> tuple[float, float, float, float]:
    px, pz = center(cx, cz)
    if direction == "E":
        return (cx + 1) * CELL, y, pz, -90.0
    if direction == "W":
        return cx * CELL, y, pz, 90.0
    if direction == "N":
        return px, y, (cz + 1) * CELL, 180.0
    return px, y, cz * CELL, 0.0


def build_ground() -> set[tuple[int, int]]:
    c: set[tuple[int, int]] = set()
    add_rect(c, 1, 14, 18, 2)  # north long corridor
    add_rect(c, 1, 10, 6, 4)  # NW cluster
    add_rect(c, 1, 8, 4, 2)
    c.update({(0, 11), (0, 12), (0, 13)})  # west stub / dead end
    add_rect(c, 3, 6, 5, 4)  # west open hall
    add_rect(c, 2, 3, 4, 4)  # spawn / anonymous
    add_rect(c, 1, 3, 1, 2)
    add_rect(c, 7, 5, 6, 8)  # central maze block
    punch(c, [(8, 7), (9, 8), (10, 6), (11, 9), (8, 10), (10, 11), (9, 6)])
    add_rect(c, 9, 12, 3, 2)  # anomalous elongated room
    add_rect(c, 14, 8, 5, 5)  # pillar room
    add_rect(c, 8, 0, 5, 4)  # south large room
    add_rect(c, 13, 1, 6, 6)  # SE dense
    punch(c, [(14, 3), (16, 2), (17, 4), (15, 5), (16, 5)])
    c.update({(6, 4), (6, 5), (7, 4), (13, 9), (13, 10), (12, 3), (12, 8), (13, 7)})
    add_rect(c, 4, 1, 3, 2)  # SW link
    return c


def build_upper() -> set[tuple[int, int]]:
    c: set[tuple[int, int]] = set()
    add_rect(c, 2, 13, 16, 2)  # north corridor upper
    add_rect(c, 1, 9, 7, 5)  # west/central branch
    punch(c, [(3, 11), (5, 10), (6, 12)])
    add_rect(c, 8, 8, 6, 6)  # central complex
    punch(c, [(10, 10), (11, 9), (9, 11)])
    add_rect(c, 14, 9, 5, 5)  # east large
    add_rect(c, 1, 4, 5, 5)  # west large
    punch(c, [(3, 6)])
    add_rect(c, 7, 3, 5, 5)  # mid south
    add_rect(c, 13, 3, 5, 5)  # east-south
    punch(c, [(15, 5), (14, 4)])
    c.update({(8, 7), (7, 8), (13, 8), (12, 9), (6, 8), (4, 8), (2, 8), (17, 8), (12, 13)})
    # no floor over double-height
    punch(c, [(8, 6), (9, 6), (8, 7), (9, 7)])
    return c


def specials() -> dict:
    return {
        "spawn": (3, 4),
        "pillar": {(x, z) for x in range(14, 19) for z in range(8, 13)},
        "anomalous": {(x, z) for x in range(9, 12) for z in range(12, 14)},
        "arch": {(5, 9), (6, 9), (5, 10), (6, 10)},
        "double_height": {(8, 6), (9, 6), (8, 7), (9, 7)},
        "blackout": {(x, z) for x in range(1, 6) for z in range(4, 8)},
        "holes": {(16, 4), (17, 4), (16, 5), (17, 5)},
        "brw_b": {(x, z) for x in range(1, 8) for z in range(10, 14)},
        "stairs": [
            {"id": "S01", "cell": (3, 14), "yaw": 180.0, "dir": "N", "note": "North corridor"},
            {"id": "S02", "cell": (11, 14), "yaw": 180.0, "dir": "N", "note": "North-central"},
            {"id": "S03", "cell": (2, 5), "yaw": 0.0, "dir": "S", "note": "South-west"},
        ],
    }


def main() -> None:
    ground = build_ground()
    upper = build_upper()
    spec = specials()
    stairs = spec["stairs"]
    stair_cells = {s["cell"] for s in stairs}
    # landings on upper
    for s in stairs:
        upper.add(s["cell"])
        dx, dz = DIRS[s["dir"]]
        upper.add((s["cell"][0] + dx, s["cell"][1] + dz))

    double_h = spec["double_height"]
    holes = spec["holes"]
    blackout = spec["blackout"]
    arch = spec["arch"]
    pillar = spec["pillar"]
    brw_b = spec["brw_b"]

    # double-height is ground only
    for cell in double_h:
        ground.add(cell)
        upper.discard(cell)

    pack = {
        "floor": f"{PACK}/Floor/br_floor_3x_3.tscn",
        "floor_hole": f"{PACK}/Floor/br_floor_3x_3_hole.tscn",
        "wall_a": f"{PACK}/Wall/br_wall_a_3x_3.tscn",
        "wall_b": f"{PACK}/Wall/br_wall_b_3x_3.tscn",
        "wall_hole": f"{PACK}/Wall/br_wall_a_3x_3_hole.tscn",
        "wall_door": f"{PACK}/Wall/br_wall_a_3x_3_door_a.tscn",
        "post": f"{PACK}/Wall/br_wall_a_post_3m.tscn",
        "stair": f"{PACK}/Stairs/stair_3x_3.tscn",
        "player": "res://scenes/player.tscn",
    }

    ext = []
    ids = {}
    n = 1
    for key, path in pack.items():
        rid = f"{n}_{key}"
        ids[key] = rid
        kind = "PackedScene"
        ext.append(f'[ext_resource type="{kind}" path="{path}" id="{rid}"]')
        n += 1
    ext.append(
        '[ext_resource type="Material" path="res://assets/textures/environment/BackroomsLikeAsset2/Materials/BRW_A_Mat.tres" id="m_brw_a"]'
    )

    sub = []
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_ramp"]')
    sub.append("size = Vector3(3, 0.18, 4.3)")
    sub.append("")
    sub.append('[sub_resource type="BoxShape3D" id="BoxShape3D_pit"]')
    sub.append("size = Vector3(12, 0.3, 12)")
    sub.append("")
    sub.append('[sub_resource type="Environment" id="Environment_level0"]')
    sub.append("background_mode = 1")
    sub.append("background_color = Color(0.14, 0.13, 0.07, 1)")
    sub.append("ambient_light_source = 2")
    sub.append("ambient_light_color = Color(0.86, 0.82, 0.48, 1)")
    sub.append("ambient_light_energy = 0.38")
    sub.append("tonemap_mode = 2")
    sub.append("tonemap_exposure = 1.12")
    sub.append("ssao_enabled = true")
    sub.append("ssao_radius = 0.9")
    sub.append("ssao_intensity = 0.65")
    sub.append("glow_enabled = true")
    sub.append("glow_intensity = 0.45")
    sub.append("glow_bloom = 0.12")
    sub.append("fog_enabled = true")
    sub.append("fog_light_color = Color(0.7, 0.66, 0.36, 1)")
    sub.append("fog_density = 0.012")
    sub.append("adjustment_enabled = true")
    sub.append("adjustment_saturation = 1.1")

    nodes: list[str] = []
    nodes.append('[node name="Level0" type="Node3D"]')
    nodes.append("")
    nodes.append('[node name="WorldEnvironment" type="WorldEnvironment" parent="."]')
    nodes.append("environment = SubResource(\"Environment_level0\")")
    nodes.append("")
    sx, sz = center(*spec["spawn"])
    nodes.append('[node name="Player" parent="." instance=ExtResource("%s")]' % ids["player"])
    nodes.append(f"transform = {xform(sx, 0, sz)}")
    nodes.append("")
    for name in (
        "GroundFloor",
        "UpperFloor",
        "SharedVerticalSpaces",
        "Lights",
        "Stairwells",
    ):
        nodes.append(f'[node name="{name}" type="Node3D" parent="."]')
        nodes.append("")
    for name in ("NorthLoop", "WestCluster", "CentralMaze", "PillarSection", "SouthSection"):
        nodes.append(f'[node name="{name}" type="Node3D" parent="GroundFloor"]')
        nodes.append("")
    for name in ("CentralComplex", "WestSection", "EastSection", "BlackoutSection", "HoleSection"):
        nodes.append(f'[node name="{name}" type="Node3D" parent="UpperFloor"]')
        nodes.append("")

    def parent_for(cell: tuple[int, int], floor: str) -> str:
        x, z = cell
        if floor == "ground":
            if cell in pillar:
                return "GroundFloor/PillarSection"
            if z >= 13:
                return "GroundFloor/NorthLoop"
            if x <= 6:
                return "GroundFloor/WestCluster"
            if z <= 4:
                return "GroundFloor/SouthSection"
            return "GroundFloor/CentralMaze"
        if cell in blackout:
            return "UpperFloor/BlackoutSection"
        if cell in holes:
            return "UpperFloor/HoleSection"
        if x <= 6:
            return "UpperFloor/WestSection"
        if x >= 14:
            return "UpperFloor/EastSection"
        return "UpperFloor/CentralComplex"

    def add_floor(cell, y, parent, hole=False, i_ref=None):
        px, pz = center(*cell)
        key = "floor_hole" if hole else "floor"
        i_ref[0] += 1
        n = i_ref[0]
        nodes.append(f'[node name="Floor_{n}" parent="{parent}" instance=ExtResource("{ids[key]}")]')
        nodes.append(f"transform = {xform(px, y, pz)}")
        nodes.append("")

    counters = {"n": 0, "w": 0, "l": 0, "p": 0, "s": 0}

    def place_floors(cells, y, floor_name, hole_set=None):
        hole_set = hole_set or set()
        i_ref = [counters["n"]]
        for cell in sorted(cells):
            add_floor(cell, y, parent_for(cell, floor_name), cell in hole_set, i_ref)
        counters["n"] = i_ref[0]

    place_floors(ground, 0.0, "ground")
    place_floors(upper, UPPER_Y, "upper", holes)
    # roofs for upper
    place_floors(upper - holes, ROOF_Y, "upper")
    # double-height ceiling at 6m
    i_ref = [counters["n"]]
    for cell in sorted(double_h):
        add_floor(cell, ROOF_Y, "SharedVerticalSpaces", False, i_ref)
    counters["n"] = i_ref[0]

    def place_walls(cells, y, floor_name, wall_style_fn):
        placed = set()
        for cx, cz in sorted(cells):
            for d, (dx, dz) in DIRS.items():
                nb = (cx + dx, cz + dz)
                if nb in cells:
                    continue
                px, py, pz, yaw = wall_pose(cx, cz, d, y)
                key = (round(px, 3), round(py, 3), round(pz, 3), round(yaw, 1))
                if key in placed:
                    continue
                placed.add(key)
                counters["w"] += 1
                parent = parent_for((cx, cz), floor_name)
                use_hole = (cx, cz) in arch or nb in arch
                wkey = "wall_hole" if use_hole else wall_style_fn(cx, cz)
                nodes.append(
                    f'[node name="Wall_{counters["w"]}" parent="{parent}" instance=ExtResource("{ids[wkey]}")]'
                )
                nodes.append(f"transform = {xform(px, py, pz, yaw)}")
                if wkey.startswith("wall_a") or wkey == "wall_hole":
                    nodes.append('material_override = ExtResource("m_brw_a")')
                nodes.append("")

    def gf_wall(cx, cz):
        return "wall_b" if (cx, cz) in brw_b else "wall_a"

    def uf_wall(cx, cz):
        return "wall_b" if cz <= 6 else "wall_a"

    place_walls(ground, 0.0, "ground", gf_wall)
    place_walls(upper, UPPER_Y, "upper", uf_wall)
    # rail around double-height opening on upper
    for cx, cz in sorted(double_h):
        for d, (dx, dz) in DIRS.items():
            nb = (cx + dx, cz + dz)
            if nb in double_h:
                continue
            if nb in upper:
                counters["w"] += 1
                px, py, pz, yaw = wall_pose(cx, cz, d, UPPER_Y)
                nodes.append(
                    f'[node name="Rail_{counters["w"]}" parent="SharedVerticalSpaces" instance=ExtResource("{ids["wall_a"]}")]'
                )
                # half-height rail: scale Y 0.4
                nodes.append(
                    f"transform = Transform3D({xform(px, py, pz, yaw)[12:]}"
                )  # placeholder, fix below
    # Fix rails properly
    # remove broken last nodes if any - rewrite rails after
    # Filter out incomplete Rail nodes
    cleaned = []
    skip = False
    for line in nodes:
        if line.startswith('[node name="Rail_'):
            skip = True
            continue
        if skip:
            if line.startswith("[node ") or line.startswith('[node name="'):
                skip = False
            else:
                if line.strip() == "":
                    skip = False
                    continue
                continue
        cleaned.append(line)
    nodes[:] = cleaned

    for cx, cz in sorted(double_h):
        for d, (dx, dz) in DIRS.items():
            nb = (cx + dx, cz + dz)
            if nb not in upper:
                continue
            if nb in double_h:
                continue
            counters["w"] += 1
            px, py, pz, yaw = wall_pose(cx, cz, d, UPPER_Y)
            nodes.append(
                f'[node name="BalconyRail_{counters["w"]}" parent="SharedVerticalSpaces" instance=ExtResource("{ids["wall_a"]}")]'
            )
            # scale y to 1.05m rail
            yaw_r = math.radians(yaw)
            cy, sy = math.cos(yaw_r), math.sin(yaw_r)
            # Transform with scale 1, 0.35, 1
            nodes.append(
                f"transform = Transform3D({fmt(cy)}, 0, {fmt(-sy)}, 0, 0.35, 0, {fmt(sy)}, 0, {fmt(cy)}, {fmt(px)}, {fmt(py)}, {fmt(pz)})"
            )
            nodes.append('material_override = ExtResource("m_brw_a")')
            nodes.append("")

    # Pillars lattice in pillar room
    for x in range(15, 18):
        for z in range(9, 12):
            if (x, z) not in pillar:
                continue
            px, pz = center(x, z)
            counters["p"] += 1
            nodes.append(
                f'[node name="Pillar_{counters["p"]}" parent="GroundFloor/PillarSection" instance=ExtResource("{ids["post"]}")]'
            )
            nodes.append(f"transform = {xform(px, 0, pz)}")
            nodes.append('material_override = ExtResource("m_brw_a")')
            nodes.append("")

    # Stairs + ramp collision
    for s in stairs:
        cx, cz = s["cell"]
        px, pz = center(cx, cz)
        counters["s"] += 1
        nodes.append(
            f'[node name="{s["id"]}" parent="Stairwells" instance=ExtResource("{ids["stair"]}")]'
        )
        nodes.append(f"transform = {xform(px, 0, pz, s['yaw'])}")
        nodes.append("")
        counters["s"] += 1
        nodes.append(f'[node name="{s["id"]}_Ramp" type="StaticBody3D" parent="Stairwells"]')
        # 45 degree ramp
        nodes.append(f"transform = {xform(px, 1.5, pz, s['yaw'], 45.0)}")
        nodes.append("")
        nodes.append(
            f'[node name="CollisionShape3D" type="CollisionShape3D" parent="Stairwells/{s["id"]}_Ramp"]'
        )
        nodes.append("shape = SubResource(\"BoxShape3D_ramp\")")
        nodes.append("")

    # Hole catch slab
    hx = sum(c[0] for c in holes) / len(holes)
    hz = sum(c[1] for c in holes) / len(holes)
    hpx, hpz = center(int(hx), int(hz))
    nodes.append('[node name="HoleCatch" type="StaticBody3D" parent="UpperFloor/HoleSection"]')
    nodes.append(f"transform = {xform(hpx, -6.0, hpz)}")
    nodes.append("")
    nodes.append('[node name="CollisionShape3D" type="CollisionShape3D" parent="UpperFloor/HoleSection/HoleCatch"]')
    nodes.append("shape = SubResource(\"BoxShape3D_pit\")")
    nodes.append("")

    # Lights
    def has_light(cell, floor_name):
        if floor_name == "upper" and cell in blackout:
            return False
        if cell in holes:
            return False
        cx, cz = cell
        return (cx + cz) % 2 == 0 and (cx * 3 + cz) % 5 != 0

    shadow_budget = 0
    for floor_name, cells, y in (("ground", ground, 0.0), ("upper", upper, UPPER_Y)):
        for cell in sorted(cells):
            if not has_light(cell, floor_name):
                continue
            px, pz = center(*cell)
            counters["l"] += 1
            energy = 1.35 if (cell[0] + cell[1]) % 7 else 0.7
            use_shadow = shadow_budget < 10 and energy > 1.0
            if use_shadow:
                shadow_budget += 1
            nodes.append(f'[node name="Light_{counters["l"]}" type="OmniLight3D" parent="Lights"]')
            nodes.append(f"transform = {xform(px, y + LIGHT_Y_OFF, pz)}")
            nodes.append("light_color = Color(1, 0.94, 0.62, 1)")
            nodes.append(f"light_energy = {fmt(energy)}")
            nodes.append("light_specular = 0.12")
            nodes.append("shadow_enabled = %s" % ("true" if use_shadow else "false"))
            nodes.append("omni_range = 7.5")
            nodes.append("omni_attenuation = 1.2")
            nodes.append("")

    load_steps = len(ext) + 3 + 1
    text = [f"[gd_scene load_steps={load_steps} format=3]", ""]
    text.extend(ext)
    text.append("")
    text.extend(sub)
    text.append("")
    text.extend(nodes)
    os.makedirs(os.path.dirname(OUT_PATH), exist_ok=True)
    with open(OUT_PATH, "w", encoding="utf-8", newline="\n") as handle:
        handle.write("\n".join(text).rstrip() + "\n")

    def bounds(cells):
        xs = [c[0] for c in cells]
        zs = [c[1] for c in cells]
        return (max(xs) - min(xs) + 1) * CELL, (max(zs) - min(zs) + 1) * CELL

    gw, gd = bounds(ground)
    uw, ud = bounds(upper)
    print("ground cells", len(ground), f"{gw:.0f}x{gd:.0f} m")
    print("upper cells", len(upper), f"{uw:.0f}x{ud:.0f} m")
    print("walls", counters["w"], "floors", counters["n"], "lights", counters["l"], "pillars", counters["p"])
    print("wrote", OUT_PATH)


if __name__ == "__main__":
    main()
