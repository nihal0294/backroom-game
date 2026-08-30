# Level 0 — Sector 04 V2

Status: **CURRENT — GOLDEN ROOM PASS; SECTOR 04 V2 PASS; connected to Sector 07; awaiting developer review**.

Sector 04 remains the Level 0 spawn sector and is now loaded together with Sector 07. Its approved plan remains manually authored from `assets/level_0/maps/sector_04.png` and `assets/level_0/maps/level0_master_numbered.png`; Backrooms VR defines construction and visual language, never topology. No Sector 05 connection exists.

## Source contract

| Responsibility | Current source |
| --- | --- |
| Whole-map placement | `assets/level_0/maps/level0_master_numbered.png` |
| Sector plan | `assets/level_0/maps/sector_04.png` |
| External connections | `assets/level_0/maps/sectors_01_12_connections.png` |
| Architecture reference | `assets/backrooms_vr/scene.gltf`, instantiated unchanged by `res://scenes/dev/backrooms_vr_reference.tscn` |
| Canon | `docs/wiki/backrooms-wiki-md/level-0.md` |
| Runtime implementation | `res://scenes/levels/level_0/sector_04.tscn` and `res://scripts/levels/level_0/sector_04.gd` |
| Construction test | `res://scenes/dev/level0_golden_room.tscn` |
| Door refinement test | `res://scenes/dev/level0_door_test.tscn` |

Backrooms VR attribution is preserved in `assets/backrooms_vr/license.txt`: “Backrooms VR” by carlcapu9, CC-BY-4.0.

## Approved plan

The V2 renderer preserves the previous 14 authored walkable shapes and six column positions:

- A1: `X -7.00..7.00`, `Z 0.00..7.00`.
- A2: `X -6.00..6.00`, `Z 7.00..39.00`.
- B glass room: `X 7.00..10.40`, `Z 0.70..4.10`.
- C01/C02 and three southern rooms joined by C03/C04.
- D-C01 and D-R01, with D-R02 rebuilt as a `3.20 × 3.60 m` clear rectangle against the west/south union boundary.
- E-C01 oblique corridor and the 12 × 10 m column hall E.

The authored walkable AABB is `X -24.40..13.00`, `Z -40.00..49.525`. The 0.30 m wall collision mass extends only toward non-walkable space.

## V2 construction system

`level0_architecture_builder.gd` performs this deterministic pipeline:

1. merge the 14 room/corridor polygons with `Geometry2D.merge_polygons()`;
2. normalize and simplify the single final polygon at 0.001 m tolerance;
3. triangulate that same union once for the floor at `Y = 0.000 m` and once for the ceiling at `Y = 2.866 m`;
4. derive each exterior wall run exactly once from the union boundary;
5. add four explicit partitions: glass-room wall, push-door wall and the east/north D-R02 walls;
6. create one shared opening descriptor for each framed opening (`1.20 × 2.20 m` clear, `0.085 m` visible jamb, `1.37 × 2.285 m` outer frame), then use that same descriptor for the wall cut, frame and collision;
7. cut D-R02's centered `1.20 m` passage through the full wall height, with no frame or door;
8. intersect the offset wall-face lines at L/T junctions and generate baseboards from those same corrected endpoints, stopping at openings;
9. build separate aggregate collision faces from the same topology, including blocking jamb/header prisms around a clear opening centre.

The rendered boundary contains only faces directed toward walkable space. Partitions render their two real faces at `±0.15 m`; their face endpoints are intersected rather than left on the centreline. Legitimate end faces exist only at free partition ends. Framed openings use a full-depth reveal instead of exposing a wall cap.

## Current architecture and details

- Floor, ceiling, walls/columns and baseboards: four aggregate ArrayMesh visuals.
- Collision: aggregate concave floor and wall shapes plus the separate glass panel and interactive push-door leaf.
- Wall thickness: 0.30 m, outside walkable space.
- Baseboard: 0.12 m high, 0.035 m projection.
- Door frames: one complete two-sided frame per opening. Each has `0.085 m` visible jamb width, `0.060 m` casing depth, `0.020 m` face projection and a `0.302 m` full-depth reveal (`0.30 m` wall plus `1.5 mm` seam coverage per face). Wall endpoints and the frame outer edges share the same descriptor and must differ by no more than `0.001 m`. The procedural frame deliberately does not tile the baked `Wood_baseColor.png` atlas.
- Glass room: real wall opening, framed glass panel, collision, non-interactive.
- Push door: real wall opening and source-derived movable leaf; E opens/closes it.
- D-R02 Map Room: `3.20 × 3.60 m` clear, full-height centered east passage `1.20 m`, at least `2.50 m` east and `2.10 m` north circulation in D-R01.
- Map: non-interactive `MapMount` backing `1.40 × 0.90 × 0.025 m`, centre `Y = 1.45 m`, 25 mm off the west wall; front-only `sector_04.png` face points toward the entrance.
- Ceiling HVAC: five deterministic horizontal `Vent_1` instances at `Y = 2.84 m`; no wall vents.
- Sockets: 12 deterministic source-derived instances at centre `Y = 0.317 m`, without collision.
- Fluorescents: 27 visual fixtures (24 on, 3 off) in two MultiMeshes.
- Lighting: eight shadowless OmniLight3D nodes, separate from visual fixtures.
- Approved non-architectural content: MapMount, glass room, six columns and torn wallpaper only.
- Embedded furniture/random props: zero.

## Annotation fidelity

| ID | Source meaning | Visible implementation | Status |
| --- | --- | --- | --- |
| A141 | Torn wallpaper | Non-colliding torn remnants frame the controlled `2.15 m` continuation into Sector 07; no damage mechanic. | `IMPLEMENTED_SOURCE_APPROX` |
| A142 | Sketched map found | Non-interactive, wall-mounted Sector 04 map, visible on entry into D-R02. | `IMPLEMENTED_SOURCE_APPROX` |
| A143 | Less content farther in | Long empty hall and progressively separated empty rooms. | `IMPLEMENTED_SOURCE_APPROX` |
| A144 | Empty orange area | Muted opaque orange/brown carpet; rooms remain empty. | `IMPLEMENTED_SOURCE_APPROX` |
| A145 | Unreachable room | B remains visible through colliding, non-openable glass. | `IMPLEMENTED_SOURCE_APPROX` |
| A146 | Unexplored | Closed terminal marker; no destination invented. | `CONTENT_REQUIRED` |
| A147 | Adjacent smell/nest note | Outside controlled geometry; no entity invented. | `NOT_IMPLEMENTED` |

## Validation evidence

Golden Room:

`GOLDEN_ROOM_V2_VALIDATION: PASS union=1 boundary=4 door=clear ceiling=continuous vent=ceiling fixtures=2 socket=1 duplicates=0`

Door refinement test:

`LEVEL0_DOOR_TEST_VALIDATION: PASS wall=5.00x2.866x0.30 clear=1.20x2.20 outer=1.37x2.285 seam=0.000000 jamb_collision=left+right frame=full-depth+two-sided interaction=E angle=95 collision=follows_leaf`

Sector 04 Forward+:

`SECTOR04_V2_VALIDATION: PASS input=14 union=1 boundary=53->53 partitions=4 floor_samples=15 wall_samples=23 openings=15 framed=2 seam_max=0.000000m jamb_collision=4 wall_junction_max=0.000000m map_room=3.20x3.60 passage=1.20 sector07_passage=2.15 clearances=2.50+2.10 vents=5 furniture=0 movement=1.750m slide=1.237m door=open+close duplicates=0`

Sector subtree counts:

- nodes: 42;
- MeshInstance3D: 8;
- ArrayMesh: 13, including meshes consumed by MultiMeshes;
- StaticBody3D: 4;
- CollisionShape3D: 4;
- MultiMeshInstance3D: 6;
- Light3D: 8;
- shadow-enabled lights: 0.

Current seam-review images are `captures/sector_04_door_seam_left_closeup.png`, `captures/sector_04_door_seam_right_closeup.png`, `captures/sector_04_wall_t_junction_closeup.png`, `captures/sector_04_door_seam_distance.png` and `captures/sector_04_door_open_seam.png`. `captures/.gdignore` keeps them outside Godot's import pipeline.
