# Level 0 — Sector 04

Status: **MANUAL GEOMETRY REFINED; awaiting developer visual/gameplay review**.

Sector 04 is a controlled, sector-specific plan. Runtime construction does not read `sector_04_trace.json`, trace the PNG, infer a scale, or rotate the sector. The numbered map defines topology and local meaning; Backrooms VR defines the architectural language. The VR scene layout is not copied.

## Source responsibilities

| Responsibility | Source | Applied result |
| --- | --- | --- |
| Whole-map placement | `assets/level_0/maps/level0_master_numbered.png` | Sector 04 identity and placement in the 48-sector master. |
| Room order and connections | `assets/level_0/maps/sector_04.png` | Long central landmark, south branch, west map room, diagonal north-west branch, column hall and visible inaccessible room. |
| External connection IDs | `assets/level_0/maps/sectors_01_12_connections.png` | No red external sector ID is attached to Sector 04; no destination was invented. |
| Local environmental notes | `docs/reference/level-0/level-0-final-map.png` and matching final-trace annotations | Torn wallpaper, found map, progressively emptier space, empty orange area, unreachable room and unexplored continuation. |
| Architecture and look | `assets/backrooms_vr/scene.gltf` and `assets/backrooms_vr/textures/` | Wall mass, ceiling height and module, trim, sockets, glass-door language, fluorescent proportions and palette. |
| Canon | `docs/wiki/backrooms-wiki-md/level-0.md` | General Level 0 facts only; it does not provide the local metric plan. |

`assets/level_0/maps/sector_04_trace.json`, `docs/levels/level-0-sector-04-trace.json`, and `tools/trace_sector_04.gd` remain historical audit artefacts. The active scene and builder do not reference them.

## Coordinate and construction contract

- Local +X is east/right; local +Z is north/up on the authored plan; +Y is vertical.
- Local origin `(0, 0, 0)` is the centre of the south edge of A1.
- Floor is Y = 0.000 m.
- Ceiling and wall height are 2.866 m (`SOURCE_DERIVED` from Backrooms VR).
- Wall thickness is 0.30 m (`SOURCE_DERIVED` from Backrooms VR). Boundary wall mass grows into non-walkable space; shared internal partitions are centred on their authored boundary.
- Baseboard is 0.12 m high with a 0.035 m projection (`VISUAL_APPROXIMATION`).
- Ceiling uses the existing continuous 0.60 m acoustic-tile shader grid (`SOURCE_DERIVED`). No ceiling tile is a node.
- Visual fluorescent panels are approximately 1.20 × 0.60 m at Y = 2.84 m (`SOURCE_DERIVED`).

## Manual layout

Every plan dimension below is `AUTHORING_CHOICE`. These are explicit controlled dimensions for this milestone, not measurements inferred from the PNG.

| ID | Internal bounds / dimensions | Connection |
| --- | --- | --- |
| A1 | X -7.00..7.00, Z 0.00..7.00; 14.00 × 7.00 m | Fully open to A2; 3.00 m south opening to C01. |
| A2 | X -6.00..6.00, Z 7.00..39.00; 12.00 × 32.00 m | No wall between A1/A2; 2.80 m opening to D-C01 and 3.00 m oblique opening to E-C01. |
| B | X 7.00..10.40, Z 0.70..4.10; 3.40 × 3.40 m | Immediately adjacent to A1; its 1.20 m transparent, colliding, non-openable glass door remains centred at Z 2.40. |
| C01 | X -1.50..1.50, Z -11.00..0.00; 3.00 × 11.00 m | Straight south corridor from A1. |
| C02 | X -1.50..9.50, Z -14.00..-11.00; 3.00 × 11.00 m | East leg of the L-shaped route to R01. |
| C-R01 | X 6.50..13.00, Z -20.50..-14.00; 6.50 × 6.50 m | Opens from C02 and exits through C03. |
| C03 | X 8.35..11.15, Z -26.00..-20.50; 2.80 × 5.50 m | Real corridor separating R01 from R02. |
| C-R02 | X 7.25..12.25, Z -31.00..-26.00; 5.00 × 5.00 m | Opens from C03 and exits through C04. |
| C04 | X 8.35..11.15, Z -36.00..-31.00; 2.80 × 5.00 m | Real corridor separating R02 from R03. |
| C-R03 | X 7.75..11.75, Z -40.00..-36.00; 4.00 × 4.00 m | Opens from C04; terminal room. |
| D-C01 | X -11.50..-6.00, Z 22.60..25.40; 2.80 × 5.50 m | West corridor separating A2 from D-R01. |
| D-R01 | X -17.50..-11.50, Z 21.00..27.00; 6.00 × 6.00 m | Opens from D-C01 and contains the smaller D-R02 chamber. |
| D-R02 | X -16.70..-14.40, Z 22.00..24.20; approximately 2.30 × 2.20 m | 0.90 m local internal entrance; contains only `MapPlaceholder`. |
| E-C01 | Oblique 3.00 m-wide polygon from A2 to E | Total authored centreline is 10.375 m including overlap into both rooms; effective wall-to-wall corridor length is 8.00 m. |
| E | X -24.40..-12.40, Z 39.525..49.525; 12.00 × 10.00 m | Six unchanged 0.75 × 0.75 m full-height columns in a 3 × 2 arrangement. |

The walkable authored AABB is X -24.40..13.00 and Z -40.00..49.525: **37.40 × 89.525 m**. The 0.30 m wall mass extends beyond that walkable envelope where applicable.

The main hall, south rooms, glass room and column hall contain no invented furniture, decorative doors or gameplay props. `MapPlaceholder` remains a temporary, non-interactive panel with a “MAP” label.

## Effective separation distances

All distances in this section are `AUTHORING_CHOICE`.

- A1 to R01: 11.00 m through C01 plus 11.00 m through C02 before entering the room.
- R01 to R02: 5.50 m through C03.
- R02 to R03: 5.00 m through C04.
- A2 to D-R01: 5.50 m through D-C01.
- A2 to Column Hall E: 8.00 m effective wall-to-wall along the diagonal E-C01 centreline.
- B is the deliberate exception and remains immediately adjacent to A1.

## Master-map annotation fidelity

| Annotation | Source meaning | Visible implementation | Status |
| --- | --- | --- | --- |
| A141 | Torn wallpaper; touching it caused a cut in the account | Separate torn/peeling wallpaper patch on the long hall wall; no damage system invented. | `IMPLEMENTED_SOURCE_APPROX` |
| A142 | A sketched map was found here | `MapPlaceholder` inside D-R02; no map content or interaction invented. | `IMPLEMENTED_SOURCE_APPROX` |
| A143 | “The further I go the less there is” | 39 m empty main hall and long transitions through C01–C04 into separated, progressively smaller empty rooms. | `IMPLEMENTED_SOURCE_APPROX` |
| A144 | Orange area completely empty | Existing sector-specific muted orange/brown opaque carpet; authored rooms remain empty. | `IMPLEMENTED_SOURCE_APPROX` |
| A145 | Unreachable room through here | B is visible through a transparent glass door but blocked by explicit collision and has no open interaction. | `IMPLEMENTED_SOURCE_APPROX` |
| A146 | Unexplored | `UnexploredExit` records the north terminal. It remains physically closed because the connection sheet supplies no destination ID. | `CONTENT_REQUIRED` |
| A147 | Smell/nest note adjacent to this area | Outside the controlled Sector 04 geometry; no entity or nest was invented. | `NOT_IMPLEMENTED` |

## Map/plan discrepancies

- The source crop is a stylised, rotated drawing without a metric scale. The fixed authoring plan preserves room order, branches and six column marks, but cannot be a pixel overlay without violating the required unrotated coordinate system and controlled dimensions.
- The connection sheet containing sectors 01–12 shows no numbered red external connection for Sector 04. The north terminal is therefore closed and marked for later authoring instead of guessing a `sector_id` or opening into empty space.
- The six marks in the north-west room are interpreted as columns as directed by the milestone. Their physical size remains an authoring choice.
- D-R02's 0.90 m doorway is the explicit small-access exception. Every principal gameplay corridor is 2.80–3.00 m wide.
- The E-C01 polygon includes 1.25 m inside A2 and 1.125 m inside E to guarantee continuous floor coverage. Subtracting those overlaps gives the specified 8.00 m effective separation.

## Materials and lighting

This geometry refinement does not change any material, glass, ceiling, column, placeholder, lighting strategy or batching architecture.

- Wallpaper, carpet, acoustic ceiling, trim and glass continue using the existing Sector 04 resources.
- There are **27 visual fluorescent fixtures: 24 on and 3 off**, batched into the existing two fixture MultiMeshes.
- There are **8 shadowless OmniLight3D nodes**. Visual fixtures and actual light sources remain separate.
- Sockets, fixtures and sparse lights were repositioned only where required by the enlarged plan.

## Runtime implementation and validation

- Scene: `res://scenes/levels/level_0/sector_04.tscn`.
- Builder: `res://scripts/levels/level_0/sector_04.gd`.
- Floor, ceiling, walls/columns and baseboards remain aggregate ArrayMesh visuals.
- Floor and wall/column collisions remain aggregate ConcavePolygonShape3D resources. The glass panel retains one separate BoxShape3D collision.
- Fixtures, off fixtures, sockets, door frame and glass panel remain five MultiMeshInstance3D nodes.
- Safe player spawn remains `(0.0, 0.1, 2.2)` inside A1.

Godot 4.5 automated result: `SECTOR04_MANUAL_VALIDATION: PASS`.

- Floor rays cover A1, A2, B, all four south corridors, all three south rooms, D-C01, D-R01, E-C01 and E.
- Glass-door, column and solid-wall collision control rays pass.
- The player settles, moves on the normal floor and does not fall through.
- Collision rays pass through all twelve principal interfaces: A1/A2, A1/C01, C01/C02, C02/R01, R01/C03, C03/R02, R02/C04, C04/R03, A2/D-C01, D-C01/D-R01, A2/E-C01 and E-C01/E.
- Principal gameplay corridors are 2.80–3.00 m wide; none is below the 2.60 m absolute minimum.
- Sector subtree: 35 nodes.
- MeshInstance3D: 6.
- ArrayMesh: 11, including meshes referenced by MultiMeshes.
- StaticBody3D: 3.
- CollisionShape3D: 3.
- MultiMeshInstance3D: 5.
- Light3D: 8; shadow-enabled lights: 0.
- Generated mesh data remains in memory; no per-wall, per-tile or per-fixture resource files are emitted.

Forward+ validation/capture log: `captures/sector_04_manual_forward_plus.log`.

Review captures:

- `captures/sector_04_manual_topdown.png`
- `captures/sector_04_manual_overlay.png`
- `captures/sector_04_manual_spawn.png`
- `captures/sector_04_manual_main_hall_axis.png`
- `captures/sector_04_manual_c01.png`
- `captures/sector_04_manual_c03.png`
- `captures/sector_04_manual_d_c01.png`
- `captures/sector_04_manual_e_c01.png`
- `captures/sector_04_manual_glass_door.png`
- `captures/sector_04_manual_columns.png`
