# Level 0 — historical room-by-room authoring manifest

Status: **inactive; superseded on 2026-08-29 by the numbered 48-sector workflow**. S01-R01 remains a preserved prototype and is no longer loaded by the main scene. Current work is documented in [level-0-sector-04.md](level-0-sector-04.md).

The authoritative topology remains docs/reference/level-0/level-0-final-map.png. Measurements and annotations remain in docs/levels/level-0-final-trace.json. The trace is a reference and measurement aid; it does not authorize a whole-map or whole-sector bake.

## Historical root

- Main scene: res://scenes/levels/level_0.tscn
- Room parent: Level0/Rooms
- Player scene: unchanged at res://scenes/player.tscn
- Active spawn: `(20.861520, 0.1, 608.461000)`, inside S01-R01 and facing northeast into the hall
- Visual laboratory: res://scenes/debug/level_0_golden_room.tscn

The golden room is retained for visual comparison but is **not visually approved**. Its materials, dimensions, environment, and lighting must not be copied into room scenes until the developer approves them.

## Historical workflow

1. Select one exact room or corridor crop from the master map.
2. Record its metric specification and source annotations.
3. Implement only that independent room scene.
4. Playtest geometry, openings and collision.
5. Perform visual review against approved references.
6. Record gameplay and visual approval separately.
7. Continue only with one physically adjacent room explicitly requested by the developer.

## Coordinate contract

- Source origin: master-map pixel (0, 0)
- World mapping: world_x = pixel_x × 0.173846 m, world_z = pixel_y × 0.173846 m
- World Y: up; default floor reference Y = 0
- Measurement snap: 0.5 m
- Default ceiling reference: 3.0 m, unless the source crop or its annotations explicitly require another height

Do not reposition rooms by eye. A room scene uses global master-map coordinates or an explicitly documented room-local origin plus an exact global transform.

## Authoring vocabulary

- **Sector**: a human-authored geographic group of adjacent rooms. It is not an automatic geometry-generation unit. A sector may support streaming later only through a separate approved decision.
- **Room**: the smallest implementation and review unit.
- **Corridor**: a connection space with its own ID only when it has an independent identity or special behavior.
- **Connection**: an explicit typed relationship. Allowed types are `TRAVERSABLE`, `VISIBLE_BLOCKED`, `DEAD_END`, `UNEXPLORED`, and `SECTOR_EXIT`.

IDs use `S01`, `S01-R01`, and `S01-C01`. Do not reuse the historical generated names `sector_001`/`sector_002` as authoring-sector IDs.

## Room scene convention

Proposed path: res://scenes/levels/level_0/rooms/room_<id>.tscn.

Each room is one independent PackedScene and one reviewable unit. Create only nodes required by that room. The conventional structure is:

~~~text
Room_<ID>
├── Geometry
│   ├── Floor       # optional combined MeshInstance3D/ArrayMesh
│   ├── Walls       # optional combined MeshInstance3D/ArrayMesh
│   └── Ceiling     # optional combined MeshInstance3D/ArrayMesh
├── Fixtures        # optional; MultiMesh where repetition warrants it
├── Props           # optional
├── Collision       # optional aggregated StaticBody3D/CollisionShape3D
└── Special         # optional, only for source-defined exceptions
~~~

This is a naming convention, not a requirement to create empty nodes. Within a room, correctness and reviewability come before batching; repeated static elements should still be combined once the room is correct.

## Required room record

Every implemented room record must contain:

- ROOM ID
- SOURCE MAP REGION: exact pixel crop or polygon/bounds
- WORLD POSITION: exact master-map transform
- FOOTPRINT
- WALL PATHS
- OPENINGS
- CONNECTIONS: only physically adjacent known rooms/passages
- FLOOR ELEVATION
- CEILING HEIGHT
- ANNOTATIONS: trace IDs and source text
- STATUS

Allowed statuses:

- PLANNED
- IMPLEMENTED
- VISUALLY_APPROVED
- GAMEPLAY_APPROVED

## Room records

### Sector registry

| Sector | Geographic scope | Source bounds px | Units | Status | Specification |
| --- | --- | --- | --- | --- | --- |
| `S01` | Lower-left A141-A146 cluster | `[23,2945,690,3693]` | R01-R11, C01 | `IN_PROGRESS` (R01 only) | [level-0-sector-01.md](level-0-sector-01.md) / [JSON](level-0-sector-01.json) |

### S01 units

| ID | Name | Status | Immediate connections |
| --- | --- | --- | --- |
| `S01-R01` | Main Empty Hall | `IMPLEMENTED` | R02 `VISIBLE_BLOCKED`; R09 `TRAVERSABLE` |
| `S01-R02` | Unreachable Glass Room | `PLANNED` | R01 `VISIBLE_BLOCKED` |
| `S01-R03` | Torn Wallpaper Room | `PLANNED` | R09 `TRAVERSABLE`; external E02 `SECTOR_EXIT` |
| `S01-R04` | Shrinking Room 01 | `PLANNED` | R09, R05 `TRAVERSABLE` |
| `S01-R05` | Shrinking Room 02 | `PLANNED` | R04, R06 `TRAVERSABLE` |
| `S01-R06` | Shrinking Room 03 | `PLANNED` | R05, R07 `TRAVERSABLE` |
| `S01-R07` | Shrinking Room 04 | `PLANNED` | R06, R08 `TRAVERSABLE` |
| `S01-R08` | Shrinking Room 05 / Map Room | `PLANNED` | R07 `TRAVERSABLE` |
| `S01-R09` | Column Hall | `PLANNED` | R01, R03, R04, R10 `TRAVERSABLE` |
| `S01-R10` | West Dead-End Room A | `PLANNED` | R09, R11, C01 `TRAVERSABLE`; external E01 `UNEXPLORED` |
| `S01-R11` | West Dead-End Room B | `PLANNED` | R10 `TRAVERSABLE`; physical `DEAD_END` |
| `S01-C01` | Death Corridor | `PLANNED`; placement open | R10 `TRAVERSABLE`; physical `DEAD_END` |

Only S01-R01 is implemented. It is not `VISUALLY_APPROVED` or `GAMEPLAY_APPROVED`; those statuses require developer review. Every other room and corridor remains documentation-only. The two candidate placements for C01 and the R02 source-footprint conflict remain open in the sector specification. For this first implementation, the developer's normal-yellow instruction resolves R01's A144 surface choice without changing the annotation transcription.

S01-R01's verified future interfaces are development-capped while their adjacent rooms remain unimplemented. X01/R09 and X02/R02 therefore look and collide like ordinary walls in the current playable scene; the clearly named temporary caps are removed only alongside the corresponding future room/interface implementation. This development presentation does not change either connection's documented topology or type.

## Legacy generated implementation

Sector001/Sector002 and their chunks/resources are historical output, not active Level 0 authoring sources.

### Tool classification

| Path | Status | Role |
| --- | --- | --- |
| tools/trace_level_0_from_reference.py | KEEP_REFERENCE | Reconstructs the frozen measurement trace from the master image. Do not run casually against the frozen trace. |
| tools/level_0_annotations.py | KEEP_REFERENCE | Hand-transcribed annotation database. |
| tools/export_level_0_kit.py | KEEP_REFERENCE | Exports reusable architectural kit assets; independent of sector baking. |
| scenes/debug/level_0_golden_room.tscn | KEEP_REFERENCE | Unapproved visual laboratory. |
| scenes/debug/level_0_visual_calibration.tscn | KEEP_REFERENCE | Historical material comparison scene. |
| tools/generate_level_0_from_trace.py | DEPRECATE | Occupancy/greedy full-sector geometry path. |
| tools/export_level_0_bake.py | DEPRECATE | Produces full-sector bake JSON. |
| tools/build_level_0_optimized.py | DEPRECATE | Orchestrates full-sector resource generation. |
| tools/write_level_0_optimized_scenes.py | DEPRECATE | Writes generated sector/chunk scenes and the old test root. |
| scripts/debug/bake_level_0_sector.gd | DEPRECATE | Converts sector bake JSON into generated Godot resources. |
| scripts/debug/level_0_debug_view.gd | DEPRECATE | Debug/capture controller tied to the generated Sector001/Sector002 scene. |

### Generated-only output

The following paths are classified REMOVE_GENERATED_ONLY. They are retained for review in this preparation task, but the active main scene does not load them and new rooms must not depend on them:

- res://scenes/levels/level_0_test.tscn
- res://scenes/levels/level_0/sector_001.tscn
- res://scenes/levels/level_0/sector_002.tscn
- res://scenes/levels/level_0/sector_001_chunks/
- res://scenes/levels/level_0/sector_002_chunks/
- res://scenes/levels/level_0/walk_samples*.json
- res://resources/generated/level_0/sector_001/
- res://resources/generated/level_0/sector_002/

Their audit documents and screenshots remain historical evidence. Removal or archival movement can be reviewed separately; none of these files should be repaired or regenerated.

## Historical milestone rule

After developer review of the S01 specification, the next implementation milestone may build only one explicitly selected `PLANNED` room or corridor, plus its documented immediate interfaces. No S01 unit is automatically approved for geometry by being listed here. Stop for geometry, gameplay, and visual approval before creating the next physically adjacent unit.
