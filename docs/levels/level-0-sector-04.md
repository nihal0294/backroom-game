# Level 0 — Sector 04

Status: **MANUAL IMPLEMENTATION COMPLETE; awaiting developer visual/gameplay review**.

Sector 04 is a controlled, sector-specific plan. Runtime construction does not read `sector_04_trace.json`, trace the PNG, infer a scale, or rotate the sector. The numbered map defines topology and local meaning; Backrooms VR defines the architectural language. The VR scene layout is not copied.

## Source responsibilities

| Responsibility | Source | Applied result |
| --- | --- | --- |
| Whole-map placement | `assets/level_0/maps/level0_master_numbered.png` | Sector 04 identity and placement in the 48-sector master. |
| Room order and connections | `assets/level_0/maps/sector_04.png` | Long central landmark, south branch, west map room, diagonal north-west branch, column hall and visible inaccessible room. |
| External connection IDs | `assets/level_0/maps/sectors_01_12_connections.png` | No red external sector ID is attached to Sector 04; no destination was invented. |
| Local environmental notes | `docs/reference/level-0/level-0-final-map.png` and the matching final trace annotations | Torn wallpaper, found map, progressively emptier space, empty orange area, unreachable room and unexplored continuation. |
| Architecture and look | `assets/backrooms_vr/scene.gltf` and `assets/backrooms_vr/textures/` | Wall mass, ceiling height and module, trim, sockets, glass-door language, fluorescent proportions and palette. |
| Canon | `docs/wiki/backrooms-wiki-md/level-0.md` | General Level 0 facts only; it does not provide the local metric plan. |

`assets/level_0/maps/sector_04_trace.json`, `docs/levels/level-0-sector-04-trace.json`, and `tools/trace_sector_04.gd` are retained as historical audit artefacts only. Nothing in the active Sector 04 scene or builder references them.

## Coordinate and construction contract

- Local +X is east/right; local +Z is north/up on the authored plan; +Y is vertical.
- Local origin `(0, 0, 0)` is the centre of the south edge of A1.
- Floor is Y = 0.000 m.
- Ceiling and wall height are 2.866 m (`SOURCE_DERIVED` from Backrooms VR).
- Wall thickness is 0.30 m (`SOURCE_DERIVED` from Backrooms VR). Boundary wall mass grows into non-walkable space; shared internal partitions are centred on their authored boundary.
- Baseboard is 0.12 m high with a 0.035 m projection (`VISUAL_APPROXIMATION`).
- Ceiling uses a continuous 0.60 m acoustic-tile shader grid (`SOURCE_DERIVED`). No ceiling tile is a node.
- Visual fluorescent panels are approximately 1.20 × 0.60 m at Y = 2.84 m (`SOURCE_DERIVED`).

## Manual layout

All values in this table are `AUTHORING_CHOICE`: they are the explicit controlled dimensions supplied for this milestone, not measurements inferred from the PNG.

| ID | Internal bounds / dimensions | Connection |
| --- | --- | --- |
| A1 | X -5.40..5.40, Z 0.00..4.80; 10.80 × 4.80 m | Fully open to A2; 2.00 m south opening to C01. |
| A2 | X -4.10..4.10, Z 4.80..24.80; 8.20 × 20.00 m | No wall between A1/A2; 1.40 m opening to D-R01 and 2.20 m diagonal connection to E. |
| B | X 5.40..8.80, Z 0.70..4.10; 3.40 × 3.40 m | 1.20 m transparent, colliding, non-openable glass door centred at Z 2.40. |
| C01 | X -1.00..1.00, Z -7.50..0.00; 2.00 × 7.50 m | Starts at A1 and remains 2.00 m wide. |
| C02 | X -1.00..7.00, Z -9.50..-7.50; 8.00 × 2.00 m | Forms the east turn of the L. |
| C-R01 | X 5.50..11.00, Z -15.00..-9.50; 5.50 × 5.50 m | 1.40 m opening from C02. |
| C-R02 | X 7.00..11.00, Z -19.00..-15.00; 4.00 × 4.00 m | 1.20 m central opening from R01. |
| C-R03 | X 8.00..11.00, Z -22.20..-19.00; 3.00 × 3.20 m | 1.20 m central opening from R02; terminal room. |
| D-R01 | X -9.30..-4.10, Z 13.00..18.00; 5.20 × 5.00 m | 1.40 m opening centred at approximately Z 15.50. |
| D-R02 | X -8.50..-6.20, Z 14.00..16.20; approximately 2.30 × 2.20 m | 0.90 m non-player-critical entrance; contains only `MapPlaceholder`. |
| E | X -17.00..-7.00, Z 25.50..34.00; 10.00 × 8.50 m | 2.20 m oblique connector; six 0.75 × 0.75 m full-height columns in a 3 × 2 arrangement. |

The main hall, south rooms, glass room and column hall contain no invented furniture, decorative doors or gameplay props. `MapPlaceholder` is a 1.20 × 0.08 × 0.80 m panel with a temporary non-interactive “MAP” label.

## Master-map annotation fidelity

| Annotation | Source meaning | Visible implementation | Status |
| --- | --- | --- | --- |
| A141 | Torn wallpaper; touching it caused a cut in the account | Separate torn/peeling wallpaper patch on the long hall wall; no damage system invented. | `IMPLEMENTED_SOURCE_APPROX` |
| A142 | A sketched map was found here | `MapPlaceholder` inside D-R02; no map content or interaction invented. | `IMPLEMENTED_SOURCE_APPROX` |
| A143 | “The further I go the less there is” | Long empty main hall and progression into successively smaller empty south rooms. | `IMPLEMENTED_SOURCE_APPROX` |
| A144 | Orange area completely empty | Sector-specific muted orange/brown opaque Carpet011 material; authored rooms remain empty. | `IMPLEMENTED_SOURCE_APPROX` |
| A145 | Unreachable room through here | B is visible through a transparent glass door but blocked by explicit collision and has no open interaction. | `IMPLEMENTED_SOURCE_APPROX` |
| A146 | Unexplored | `UnexploredExit` records the north terminal. It remains physically closed because the connection sheet supplies no destination ID. | `CONTENT_REQUIRED` |
| A147 | Smell/nest note adjacent to this area | Outside the controlled Sector 04 geometry; no entity or nest was invented. | `NOT_IMPLEMENTED` |

## Map/plan discrepancies

- The source crop is a stylised, rotated drawing without a metric scale. The fixed authoring plan preserves the room sequence, branches and six column marks, but cannot be a pixel overlay without violating the required unrotated coordinate system and fixed dimensions. The side-by-side capture makes this explicit.
- The connection sheet containing sectors 01–12 shows no numbered red external connection for Sector 04. The north terminal is therefore closed and marked for later authoring instead of guessing a `sector_id` or opening into empty space.
- The six marks in the north-west room are interpreted as columns as directed by the milestone. Their exact physical size is an authoring choice.
- The 0.90 m D-R02 doorway is preserved because it is explicitly part of the small map chamber plan. All required gameplay routes are at least 1.20 m; D-R02 is a local detail chamber rather than a main circulation connection.

## Materials and lighting

- Wallpaper, acoustic ceiling and trim use the existing tileable VR-calibrated kit. The glTF 4K textures are baked atlases with mesh-specific UVs and were not stretched over the new topology.
- Sector 04 uses `sector_04_orange_carpet.tres`, based on the existing Carpet011 albedo/roughness/normal/AO set with a muted orange-brown tint. It is fully opaque, non-metallic and has roughness clamped to 0.88–1.00.
- The glass door alone uses alpha transparency. Refraction is disabled so the panel remains reliably transparent in both Forward+ and Compatibility renderers.
- There are 17 visual fluorescent fixtures: 14 on and 3 off. They are batched into MultiMeshes.
- There are 8 shadowless OmniLight3D nodes. Visual fixtures and actual light sources remain separate.
- The glass room has one lit visual panel; each south room has one; the map room has two nearby panels; the column hall has four. Placement is fixed and asymmetric rather than generated or random.

## Runtime implementation and validation

- Scene: `res://scenes/levels/level_0/sector_04.tscn`.
- Builder: `res://scripts/levels/level_0/sector_04.gd`.
- Materials: `res://resources/materials/level_0/vr_kit/`.
- Floor, ceiling, walls/columns and baseboards are aggregate ArrayMesh visuals.
- Floor and wall/column collisions are aggregate ConcavePolygonShape3D resources. The glass panel uses one separate BoxShape3D collision.
- Fixtures, off fixtures, sockets, door frame and glass panel use five MultiMeshInstance3D nodes.
- Safe player spawn is `(0.0, 0.1, 2.2)` inside A1.

Godot 4.5 automated result: `SECTOR04_MANUAL_VALIDATION: PASS`.

- Floor rays passed in A1, A2, B, C01, C02, all three south rooms, D-R01 and E.
- Glass-door and column collision rays passed.
- The player settled, moved 1.750 m on the normal floor and did not fall through.
- Horizontal collision rays passed through all eight principal connections (A1/A2, A1/C01, C01/C02, the three south-room transitions, A2/D-R01 and A2/E), while a control ray correctly hit the solid east wall.
- Required gameplay openings tested at 1.20–2.20 m; no required route is narrower than 1.20 m.
- Sector subtree: 35 nodes.
- MeshInstance3D: 6.
- ArrayMesh: 11, including meshes referenced by MultiMeshes.
- StaticBody3D: 3.
- CollisionShape3D: 3.
- MultiMeshInstance3D: 5.
- Light3D: 8; shadow-enabled lights: 0.
- Generated mesh data remains in memory; no per-wall, per-tile or per-fixture resource files are emitted.

Validation log: `captures/sector_04_manual_validation.log`.

Review captures:

- `captures/sector_04_manual_topdown.png`
- `captures/sector_04_manual_overlay.png`
- `captures/sector_04_manual_spawn.png`
- `captures/sector_04_manual_glass_door.png`
- `captures/sector_04_manual_columns.png`
