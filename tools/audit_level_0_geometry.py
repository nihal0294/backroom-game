"""Audit floor holes and ceiling heights without modifying topology."""
from __future__ import annotations

import re
from collections import Counter, defaultdict

TSCN = "scenes/levels/level_0_test.tscn"
GRID = 0.6

# Blueprint-intentional openings (meters, SW corner + size)
STAIRWELLS = [
    ("STAIR_A", 12.0, 90.0, 4.8, 4.8),
    ("STAIR_B", 52.8, 90.0, 4.8, 4.8),
    ("STAIR_C", 9.0, 30.0, 4.8, 4.8),
]
DOUBLE_HEIGHT = ("DH_UF_D", 19.8, 49.8, 7.2, 8.4)


def parse():
    text = open(TSCN, encoding="utf-8").read()
    sizes = {}
    for m in re.finditer(
        r'\[sub_resource type="Box(?:Mesh|Shape3D)" id="((?:mesh|shape)_(\d+))"\]\s*\nsize = Vector3\(([^)]+)\)',
        text,
    ):
        sid, nums = m.group(1), m.group(3)
        v = [float(x.strip()) for x in nums.split(",")]
        sizes[sid] = tuple(v)

    nodes = []
    pat = re.compile(
        r'\[node name="([^"]+)" type="StaticBody3D" parent="([^"]+)"\]\n'
        r"transform = Transform3D\(([^)]+)\)\n\n"
        r'\[node name="Mesh"[^\n]*\nmesh = SubResource\("(mesh_\d+)"\)',
    )
    for m in pat.finditer(text):
        name, parent, tvals, mid = m.group(1), m.group(2), m.group(3), m.group(4)
        nums = [float(x.strip()) for x in tvals.split(",")]
        sx, sy, sz = sizes.get(mid, (0, 0, 0))
        nodes.append(
            {
                "name": name,
                "parent": parent,
                "x": nums[9],
                "y": nums[10],
                "z": nums[11],
                "sx": sx,
                "sy": sy,
                "sz": sz,
            }
        )
    return nodes, sizes, text


def in_rect(px, pz, x, z, w, d, pad=0.05):
    return x - pad <= px <= x + w + pad and z - pad <= pz <= z + d + pad


def classified_opening(px, pz):
    for sid, x, z, w, d in STAIRWELLS:
        if in_rect(px, pz, x, z, w, d):
            return "STAIRWELL", sid
    x, z, w, d = DOUBLE_HEIGHT[1:]
    if in_rect(px, pz, x, z, w, d):
        return "DOUBLE_HEIGHT", DOUBLE_HEIGHT[0]
    return None, None


def raster_floors(nodes):
    gf = {}
    uf = {}
    for n in nodes:
        if n["sy"] > 0.5:  # walls
            continue
        if "_Ceilings" in n["parent"]:
            continue
        if n["name"].startswith("W") or n["name"].startswith("P"):
            continue
        y = n["y"]
        x0 = n["x"] - n["sx"] / 2
        z0 = n["z"] - n["sz"] / 2
        layer = None
        if abs(y + 0.05) < 0.08:
            layer = gf
        elif abs(y - 2.95) < 0.08:
            layer = uf
        else:
            continue
        ix0 = int(round(x0 / GRID))
        iz0 = int(round(z0 / GRID))
        nx = max(1, int(round(n["sx"] / GRID)))
        nz = max(1, int(round(n["sz"] / GRID)))
        for i in range(nx):
            for j in range(nz):
                layer[(ix0 + i, iz0 + j)] = n["name"]
    return gf, uf


def main():
    nodes, sizes, text = parse()
    gf, uf = raster_floors(nodes)

    ceil_y = Counter()
    floor_y = Counter()
    wall_h = Counter()
    odd_ceil = []
    for n in nodes:
        if "_Ceilings" in n["parent"]:
            ceil_y[round(n["y"], 2)] += 1
            if abs(n["y"] - 3.05) > 0.08 and abs(n["y"] - 6.05) > 0.08:
                odd_ceil.append((n["name"], n["y"], n["sy"]))
        elif n["sy"] > 0.5:
            wall_h[round(n["sy"], 2)] += 1
        else:
            floor_y[round(n["y"], 2)] += 1

    print("=== CEILING Y ===", dict(ceil_y))
    print("odd ceiling", odd_ceil[:20], "n", len(odd_ceil))
    print("=== FLOOR/SLAB Y ===", dict(floor_y))
    print("=== WALL HEIGHTS ===", dict(wall_h))

    # UF cells with no floor
    uf_holes = []
    for (i, j), _ in list(uf.items())[:0]:
        pass
    # scan bounding of UF
    if uf:
        xs = [c[0] for c in uf]
        zs = [c[1] for c in uf]
        missing = []
        for i in range(min(xs), max(xs) + 1):
            for j in range(min(zs), max(zs) + 1):
                # only check cells that have 4-neighbor floors (interior gaps)
                nb = 0
                for di, dj in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                    if (i + di, j + dj) in uf:
                        nb += 1
                if (i, j) not in uf and nb >= 3:
                    px, pz = i * GRID + GRID / 2, j * GRID + GRID / 2
                    kind, sid = classified_opening(px, pz)
                    missing.append((px, pz, kind or "UNCLASSIFIED", sid, nb))
        print("=== INTERIOR UF GAPS (3+ floor neighbors, no floor) ===", len(missing))
        by = defaultdict(list)
        for item in missing:
            by[item[2]].append(item)
        for k, v in by.items():
            print(f"  {k}: {len(v)} cells", "ex", v[:3])

    # GF interior gaps
    if gf:
        xs = [c[0] for c in gf]
        zs = [c[1] for c in gf]
        missing = []
        for i in range(min(xs), max(xs) + 1):
            for j in range(min(zs), max(zs) + 1):
                nb = sum(1 for di, dj in ((1, 0), (-1, 0), (0, 1), (0, -1)) if (i + di, j + dj) in gf)
                if (i, j) not in gf and nb >= 3:
                    px, pz = i * GRID + GRID / 2, j * GRID + GRID / 2
                    kind, sid = classified_opening(px, pz)
                    missing.append((px, pz, kind or "UNCLASSIFIED", sid, nb))
        print("=== INTERIOR GF GAPS ===", len(missing))
        by = defaultdict(list)
        for item in missing:
            by[item[2]].append(item)
        for k, v in by.items():
            print(f"  {k}: {len(v)} cells", "ex", v[:3])

    # UF floors without matching ceiling at 6.05
    ceil_uf = [
        n
        for n in nodes
        if "_Ceilings" in n["parent"] and n["parent"].startswith("UpperFloor")
    ]
    print("UF ceiling pieces", len(ceil_uf))
    print("GF ceiling pieces", sum(1 for n in nodes if n["parent"].startswith("GroundFloor/_Ceilings")))

    # fixtures
    nfix = len(re.findall(r'\[node name="Fix_\d+"', text))
    nfix_uf = len(re.findall(r", 5\.97,", text))
    nfix_gf = len(re.findall(r", 2\.97,", text))
    print("fixtures", nfix, "at 2.97", nfix_gf, "at 5.97", nfix_uf)

    # wall Y centers
    wy = Counter()
    for n in nodes:
        if n["name"].startswith("W") and n["sy"] > 0.5:
            wy[round(n["y"], 2)] += 1
    print("wall Y", dict(wy))

    def cover_set(node_list):
        s = set()
        for n in node_list:
            x0 = n["x"] - n["sx"] / 2
            z0 = n["z"] - n["sz"] / 2
            ix0 = int(round(x0 / GRID))
            iz0 = int(round(z0 / GRID))
            nx = max(1, int(round(n["sx"] / GRID)))
            nz = max(1, int(round(n["sz"] / GRID)))
            for i in range(nx):
                for j in range(nz):
                    s.add((ix0 + i, iz0 + j))
        return s

    gf_floors = [
        n
        for n in nodes
        if abs(n["y"] + 0.05) < 0.08 and "_Ceilings" not in n["parent"] and n["sy"] < 0.5
    ]
    gf_ceils = [n for n in nodes if n["parent"] == "GroundFloor/_Ceilings"]
    uf_floors = [
        n
        for n in nodes
        if abs(n["y"] - 2.95) < 0.08 and "_Ceilings" not in n["parent"] and n["sy"] < 0.5
    ]
    uf_ceils = [n for n in nodes if n["parent"] == "UpperFloor/_Ceilings"]
    stair_roofs = [n for n in nodes if n["parent"] == "Stairwells/_Ceilings"]

    gf_f = cover_set(gf_floors)
    gf_c = cover_set(gf_ceils)
    uf_f = cover_set(uf_floors)
    uf_c = cover_set(uf_ceils)
    roofs = cover_set(stair_roofs)

    gf_no_ceil = []
    for cell in gf_f:
        if cell not in gf_c:
            px, pz = cell[0] * GRID + GRID / 2, cell[1] * GRID + GRID / 2
            k, s = classified_opening(px, pz)
            # DH footprint on GF also skip ceil
            if k is None:
                x, z, w, d = DOUBLE_HEIGHT[1:]
                if in_rect(px, pz, 18.0, 48.0, 10.8, 12.0):
                    k, s = "DOUBLE_HEIGHT", "B_DHALL"
            gf_no_ceil.append((px, pz, k or "MISSING_CEILING", s))
    print("GF floor cells without GF ceiling", len(gf_no_ceil))
    by = defaultdict(int)
    for item in gf_no_ceil:
        by[item[2]] += 1
    print("  ", dict(by))
    miss = [x for x in gf_no_ceil if x[2] == "MISSING_CEILING"]
    print("  missing sample", miss[:15])

    uf_no_ceil = []
    for cell in uf_f:
        if cell not in uf_c:
            px, pz = cell[0] * GRID + GRID / 2, cell[1] * GRID + GRID / 2
            k, s = classified_opening(px, pz)
            uf_no_ceil.append((px, pz, k or "MISSING_CEILING", s))
    print("UF floor cells without UF ceiling", len(uf_no_ceil))
    by = defaultdict(int)
    for item in uf_no_ceil:
        by[item[2]] += 1
    print("  ", dict(by))
    miss = [x for x in uf_no_ceil if x[2] == "MISSING_CEILING"]
    print("  missing sample", miss[:20])

    # UF hole cells (no floor) that have 2 neighbors - already printed interior 3+
    print("stair roofs cells", len(roofs))
    print("UF floor-in-stairwell cells:")
    for item in uf_no_ceil:
        if item[2] == "STAIRWELL":
            print(" ", item)


if __name__ == "__main__":
    main()
