# Level 0 — Sector 04

Status: **IMPLEMENTED; awaiting developer visual/gameplay review**.

Sector 04 is the first playable sector of the numbered 48-sector Level 0 map. Its topology comes from the map images; its construction language comes from the local Backrooms VR model. The VR room layout is not copied.

## Sources and responsibility

| Responsibility | Source | Use |
| --- | --- | --- |
| Whole-map placement | `assets/level_0/maps/level0_master_numbered.png` | Identifies Sector 04 in the full 48-sector map. |
| Sector topology | `assets/level_0/maps/sector_04.png` | Exact occupied silhouette and relative proportions. |
| Connections | `assets/level_0/maps/sectors_01_12_connections.png` | Connection context for sectors 01–12. No additional opening was invented in this milestone. |
| Runtime trace | `assets/level_0/maps/sector_04_trace.json` | Export-safe metric polygon and spawn. |
| Audit trace | `docs/levels/level-0-sector-04-trace.json` | Human-reviewable duplicate of the deterministic runtime trace. |
| Architecture and look | `assets/backrooms_vr/scene.gltf` | Dimensions, wall mass, ceiling, fixture, trim, socket, door and palette reference. |
| Canon | `docs/wiki/backrooms-wiki-md/level-0.md` | Level facts only; it does not define this local topology. |

## Deterministic trace

- Source image: 1024 × 1024 px.
- Sampling: 4 px; polygon simplification tolerance: 2.5 sampled cells.
- Polygon: 78 points, 76 triangles.
- Raw traced bounds: 24.87 × 30.68 m.
- Presentation bounds after rigid alignment: 32.94 × 22.12 m.
- Scale: 0.040372 m/px.
- Scale basis: the tenth-percentile narrow passage is mapped to 2.15 m, derived from the Backrooms VR circulation proportions; typical traced passage is 3.98 m.
- Rigid alignment: 45.33° so the longest source wall follows the construction grid. Shape, lengths, connections and topology are unchanged.
- Trace tool: `tools/trace_sector_04.gd`.
- Visual check: `captures/sector_04_trace_overlay.png`.

The scale is `SOURCE_DERIVED`, not an exact measurement supplied by the numbered PNG. The source is a normalized sector image without an explicit metric scale.

## Backrooms VR architectural kit

Measured from the local glTF and used as the current standard:

| Element | Value / implementation | Classification |
| --- | --- | --- |
| Floor-to-ceiling height | 2.866 m | `SOURCE_DERIVED` |
| Wall thickness | 0.30 m, extruded toward non-walkable space | `SOURCE_DERIVED` |
| Door height | approximately 2.20 m | `SOURCE_DERIVED` |
| Socket plate | 0.078 × 0.126 m; centre 0.317 m above floor | `SOURCE_DERIVED` |
| Ceiling module | 0.60 m continuous shader grid | `SOURCE_DERIVED` |
| Fixture | 1.20 × 0.60 m visual module | `SOURCE_DERIVED` |
| Baseboard | 0.12 m high, 0.035 m visual projection | `VISUAL_APPROXIMATION` |
| Wallpaper/carpet/ceiling palette | Calibrated tileable project materials sampled against the VR render | `SOURCE_DERIVED` |
| Fixture layout | Deterministically scattered and snapped to the ceiling module; 10 on, 1 off | `VISUAL_APPROXIMATION` |
| Real lighting | 8 shadowless OmniLight3D, separated from 11 visual fixtures | `VISUAL_APPROXIMATION` |

The glTF uses mesh-specific 4K baked atlases. They are valid visual evidence but are not tileable over a different topology, so Sector 04 uses the project’s tileable BRW_B, Carpet011 and acoustic-ceiling sources with a VR-calibrated palette. The imported model is “Backrooms VR” by carlcapu9, CC BY 4.0; exact attribution is retained in `assets/backrooms_vr/license.txt`.

## Runtime implementation

- Scene: `res://scenes/levels/level_0/sector_04.tscn`.
- Builder: `res://scripts/levels/level_0/sector_04.gd`.
- Shared kit materials: `res://resources/materials/level_0/vr_kit/`.
- Main scene: `res://scenes/levels/level_0.tscn`.
- Floor, ceiling, walls and baseboards are four combined ArrayMesh visuals.
- Floor and walls use two aggregate ConcavePolygonShape3D collisions.
- Fixtures, unlit fixtures, sockets, door frames and door panels use five MultiMeshes.
- Wall mass extends outside the traced walkable boundary; increasing thickness does not narrow passages.
- Door-like landmarks are visual landmarks on closed walls. They do not silently add exits or modify the source topology.

## Validation and performance

Godot 4.5 Forward+ validation result: `PASS`.

- Player settled on floor and moved 1.750 m in the automated movement sample.
- Floor and wall ray/collision checks passed.
- No player fall-through occurred.
- Sector subtree: 30 nodes.
- MeshInstance3D: 4.
- ArrayMesh: 9, including the five meshes referenced by MultiMeshes.
- StaticBody3D: 2.
- CollisionShape3D: 2.
- MultiMeshInstance3D: 5.
- Light3D: 8; shadow-enabled lights: 0.
- Generated geometry is runtime ArrayMesh data; no per-wall or per-ceiling-tile resource files are emitted.
- Runtime trace size: 5,489 bytes; scene declaration: 1,996 bytes; builder script: 30,183 bytes; six shared kit material declarations: 3,875 bytes total. Runtime ArrayMesh buffers are generated in memory and therefore add no generated mesh resource files on disk.

The previous S01-R01 prototype used 37 nodes, 60 fixture instances and 12 real lights. Sector 04 therefore reduces the comparable subtree by 7 nodes and 4 real lights while adding sockets, doors and doubled wall thickness.

Validation log: `captures/sector_04_forward_plus.log`. Review captures use the `sector_04_*_vr_kit_v1.png` naming scheme.
