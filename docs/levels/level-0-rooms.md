# Level 0 — room-by-room authoring manifest

Status: **active authoring workflow; repository prepared; no room implemented**.

The authoritative topology remains docs/reference/level-0/level-0-final-map.png. Measurements and annotations remain in docs/levels/level-0-final-trace.json. The trace is a reference and measurement aid; it does not authorize a whole-map or whole-sector bake.

## Active root

- Main scene: res://scenes/levels/level_0.tscn
- Room parent: Level0/Rooms
- Player scene: unchanged at res://scenes/player.tscn
- Placeholder spawn: world origin until the first approved crop supplies an exact position
- Visual laboratory: res://scenes/debug/level_0_golden_room.tscn

The golden room is retained for visual comparison but is **not visually approved**. Its materials, dimensions, environment, and lighting must not be copied into room scenes until the developer approves them.

## Workflow

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

None. Room_001 is the next requested unit, but no `PLANNED` record or geometry is created because its exact source crop and immediate connections have not yet been supplied.

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

## Milestone rule

The next milestone may implement only the exact first room/crop supplied by the developer, plus documentation of its immediate connections. Stop for geometry, gameplay, and visual approval before creating the next physically adjacent room.
