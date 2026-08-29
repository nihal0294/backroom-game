# Level 0 - Sector 01 authoring specification

Status: **IN PROGRESS; S01-R01 is IMPLEMENTED; R02-R11 and C01 remain PLANNED**.

Sector `S01` is a human-authored geographic group for the lower-left cluster of the master map. It is not a generation, bake, chunk, or streaming unit. A room remains the smallest implementation and review unit.

## Source and coordinate contract

- Master topology: `docs/reference/level-0/level-0-final-map.png`
- Measurement aid: `docs/levels/level-0-final-trace.json`
- Annotation transcription: `tools/level_0_annotations.py`
- Scale: `0.173846 m/px`
- Mapping: `world_x = pixel_x * 0.173846`, `world_z = pixel_y * 0.173846`
- Floor elevation: `Y = 0.0 m`
- Expected standard ceiling: `Y = 3.0 m`, unless a later source-specific record overrides it
- No topology snap is authorized. The historical 0.5 m snap is a measurement aid only.

Provenance labels used here are limited to `MASTER_MAP_GEOMETRY`, `MASTER_MAP_ANNOTATION`, `EXISTING_TRANSCRIPTION`, `USER_REQUEST`, `VISUAL_REFERENCE`, and `APPROXIMATION`.

### Measurement limitation

The PNG supplies a colored walkable silhouette, wall strokes, openings, marks, and handwritten notes. It does not supply semantic room polygons. Consequently:

- the sector crop and exterior silhouette points are map-derived;
- connection existence is map-derived where a continuous opening is visible;
- room bounds are minimal axis-aligned authoring envelopes measured from the PNG;
- inferred split lines inside uninterrupted open-plan floor are `APPROXIMATION`;
- the dimensions below are envelope measurements, not final wall meshes;
- bounds may overlap at a shared opening or an unresolved open-plan split.

## Sector boundary

| Field | Value | Provenance |
| --- | --- | --- |
| `SECTOR_ID` | `S01` | `USER_REQUEST` |
| `SOURCE_BOUNDS_PX` | `[23, 2945, 690, 3693]` (`min_x, min_y, max_x, max_y`) | `MASTER_MAP_GEOMETRY` + `APPROXIMATION` |
| `SOURCE_BOUNDS_WORLD` | `[3.998, 511.976, 119.954, 642.013] m` (`min_x, min_z, max_x, max_z`) | `MASTER_MAP_GEOMETRY` |
| Crop dimensions | `115.955 x 130.037 m` | `MASTER_MAP_GEOMETRY` |
| `MASTER_MAP_REFERENCE` | `docs/reference/level-0/level-0-final-map.png` | `MASTER_MAP_GEOMETRY` |

The rectangle is the smallest practical review crop that includes the complete named cluster plus the two immediate continuation points. It deliberately excludes the annotation lettering outside the architecture: A141 and A142 coordinates locate handwritten labels, while their arrows point back into this crop.

### External connection points

| ID | Source span px | World span m | Owner | Type | Meaning |
| --- | --- | --- | --- | --- | --- |
| `S01-E01` | approximately `[47,3219]` to `[70,3225]` | `[8.171,559.610]` to `[12.169,560.654]` | `S01-R10` | `UNEXPLORED` | Western dotted continuation owned by A146. Destination is not defined. |
| `S01-E02` | approximately `[648,3191]` to `[690,3205]` | `[112.652,554.743]` to `[119.954,557.176]` | `S01-R03` | `SECTOR_EXIT` | Visible floor continuation into the adjacent yellow cluster. Destination room/sector is intentionally unnamed. |

Both spans are connection records, not permission to define the outside geometry.

## Room catalogue

All origins are `(world_x, 0, world_z)` at the minimum corner of the room envelope. Areas are envelope areas and therefore upper bounds for rotated or concave rooms.

| ID | Authoring name | Bounds px | World origin m | Envelope W x D m | Envelope area m2 | Annotations |
| --- | --- | --- | --- | --- | --- | --- |
| `S01-R01` | Main Empty Hall | `[24,3223,555,3659]` | `(4.172,0,560.306)` | `92.31 x 75.80` | `6997.0`; traced concave floor estimate `2589.0` | A143, A144 |
| `S01-R02` | Unreachable Glass Room | `[206,3524,310,3626]` | `(35.812,0,612.633)` | `18.08 x 17.73` | `320.6` | A145 |
| `S01-R03` | Torn Wallpaper Room | `[514,3149,647,3261]` | `(89.357,0,547.441)` | `23.12 x 19.47` | `450.2`; traced branch estimate `239.7` | A141 |
| `S01-R04` | Shrinking Room 01 | `[440,3065,552,3187]` | `(76.492,0,532.838)` | `19.47 x 21.21` | `413.0` | A143 |
| `S01-R05` | Shrinking Room 02 | `[428,3018,513,3116]` | `(74.406,0,524.667)` | `14.78 x 17.04` | `251.8` | A143 |
| `S01-R06` | Shrinking Room 03 | `[402,2974,489,3065]` | `(69.886,0,517.018)` | `15.12 x 15.82` | `239.3` | A143 |
| `S01-R07` | Shrinking Room 04 | `[377,3010,440,3060]` | `(65.540,0,523.276)` | `10.95 x 8.69` | `95.2` | A143 |
| `S01-R08` | Shrinking Room 05 / Map Room | `[409,2945,431,2986]` | `(71.103,0,511.976)` | `3.82 x 7.13` | `27.3` | A142, A143 |
| `S01-R09` | Column Hall | `[178,3076,475,3264]` | `(30.945,0,534.750)` | `51.63 x 32.68` | `1687.5` | none |
| `S01-R10` | West Dead-End Room A | `[88,3137,244,3267]` | `(15.298,0,545.355)` | `27.12 x 22.60` | `612.9` | A146 at external edge |
| `S01-R11` | West Dead-End Room B | `[28,3093,102,3181]` | `(4.868,0,537.706)` | `12.86 x 15.30` | `196.8` | none |

The shrinking envelopes reduce numerically in the required order: `413.0 > 251.8 > 239.3 > 95.2 > 27.3 m2`. R06 is slightly wider than R05 on the map X axis, but its depth and envelope area are smaller. The perceived reduction is therefore supported without forcing equal dimensions or snapping.

## Room records

### S01-R01 - Main Empty Hall

- Status: `IMPLEMENTED`; not `VISUALLY_APPROVED`; not `GAMEPLAY_APPROVED`.
- Scene: `res://scenes/levels/level_0/rooms/s01_r01.tscn`, instanced under `Level0/Rooms` at world transform `(4.172304, 0, 560.305658)`.
- Geometry verification: `captures/s01_r01_source_overlay.png` compares the original master-map crop with the 30-point outline. The vertices match the visible orange/tan silhouette and were not changed. The previous implementation incorrectly treated polygon edge `0 -> 1` as X01; the actual X01 span is closing edge `29 -> 0`. That boundary-index error, not the polygon, caused the large missing exterior wall and black void.
- Geometry: the verified 30-point source silhouette is triangulated directly into 28 triangles for one floor ArrayMesh and one matching ceiling ArrayMesh. A single mitered ArrayMesh follows the real boundary for permanent walls. Floor and wall collisions are aggregated `ConcavePolygonShape3D` resources.
- Floor: one continuous `Y = 0` surface using all four ambientCG Carpet011 maps through `res://resources/materials/level_0/rooms/s01_r01_carpet.tres`. The VR-palette pass uses tint `Color(0.48, 0.36, 0.15, 1)`, preserves 58% of source saturation, and remains matte/non-metallic. Its measured sample `#452D07` matches the local Backrooms VR target `#442C09`.
- Walls: BackroomsLikeAsset2 BRW_B 2K color, normal, and ORM maps in `res://resources/materials/level_0/rooms/s01_r01_wall.tres`; tint `Color(0.79, 0.65, 0.36, 1)`, world-metre UV scale `0.20`, source saturation `0.55`, and pattern contrast `0.20`. Its measured sample `#896C1F` matches the local Backrooms VR target `#8A6B24`. Thickness stays `0.15 m`, extending toward non-walkable space.
- Ceiling: one coherent underside at `Y = 3.20 m` uses the clean/dirty ceiling regions from the existing Level 0 atlas referenced by `tile_clean.glb` and `tile_dirty.glb`; Plastic010 supplies only roughness and normal micro-detail. The shader repeats one atlas cell per `0.60 x 0.60 m` module, draws one `0.016 m`-wide divider, and adds a constant `0.48` indirect-emission factor to approximate the baked ceiling response in the VR reference without adding lights. Its measured sample `#A49983` matches the VR target `#A39784`. Dirty-cell selection is deterministic at 14%. The geometry remains one ArrayMesh with no per-tile nodes.
- Lighting: 60 flush `1.20 x 0.60 m` visual panels are deterministically scattered and snapped to the acoustic grid: 52 lit in one MultiMesh and 8 unlit in a second MultiMesh. There are still only 12 fixture-aligned, shadowless OmniLight3D nodes, at energy `1.40`/`1.22`, range `11.5 m`, and attenuation `1.30`; none belongs to an unlit panel. Lit panels and real lights use dirty warm-white `Color(0.98, 0.96, 0.84, 1)`.
- Spawn: `(20.861520, 0.1, 608.461000)`, facing northeast into the hall.
- X01: the future `TRAVERSABLE` span remains documented, but R09 does not exist. `TemporaryX01WallCap` closes edge `29 -> 0` with the normal wall material and collision until R09 is implemented.
- X02: no R02 geometry is present. `TemporaryX02WallCap` closes edge `5 -> 6` with the normal wall material and collision, preventing a glass view into raw WorldEnvironment void. It will be replaced by the source-required visible-blocked glass interface only when R02 has real geometry behind it.
- Source geometry: the enormous concave orange/tan hall dominating the crop. Its map-derived exterior outline encloses approximately `2589.0 m2`; the bounds above include its concavity.
- Openings: `S01-X01` to R09; `S01-X02` to R02 is visibility-only through the future barrier.
- Connections: `TRAVERSABLE -> S01-R09`; `VISIBLE_BLOCKED -> S01-R02`.
- Environment: completely empty. No furniture, props, or decorative objects.
- Surface decision for R01 implementation: `STANDARD_LEVEL_0_YELLOW`, resolved by the explicit implementation request. A144 and the PNG's orange/tan drafting fill remain preserved as source evidence rather than being rewritten.
- Provenance: geometry `MASTER_MAP_GEOMETRY`; emptiness `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION`; normal-yellow proposal `USER_REQUEST`.

### S01-R02 - Unreachable Glass Room

- Source geometry: an enclosed orange/tan island/cell visible within the concavity of R01.
- Opening: `S01-X02`, approximately `3.69 m`, future clear glass barrier.
- Connection: `VISIBLE_BLOCKED <- S01-R01`. No second entrance is recorded.
- Future barrier: clear visibility, no visible padlock or obvious locking device, cannot be opened or crossed.
- Ambiguity: the PNG-visible island has an approximately `18.08 x 17.73 m` envelope and appears internally lobed; this conflicts with the user-perceived `~3 x 3 m` single room. The bounds preserve the source. Exact cell subdivision and playable interior area remain open before geometry.
- Provenance: unreachable condition `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION`; glass/barrier presentation `USER_REQUEST`; room envelope `MASTER_MAP_GEOMETRY` + `APPROXIMATION`.

### S01-R03 - Torn Wallpaper Room

- Source geometry: right/east branch of the hub, diagonally above R01.
- Openings: `S01-X08` from R09; `S01-X13` to external point E02.
- Connections: `TRAVERSABLE <- S01-R09`; `SECTOR_EXIT -> S01-E02`.
- Environment: standard Level 0 except heavily torn/peeling wallpaper with hanging edges.
- Hazard note only: A141 reports a cut from touching the paper. No damage mechanic is defined.
- Dead-end check: it is not recorded as a dead end because the master silhouette visibly continues east at E02.
- Provenance: branch/openings `MASTER_MAP_GEOMETRY`; torn paper and cut report `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION`.

### S01-R04 through S01-R08 - Shrinking sequence

The top branch is recorded as one ordered authoring sequence:

`S01-R04 -> S01-R05 -> S01-R06 -> S01-R07 -> S01-R08`

The PNG contains partial internal wall strokes but no semantic room layer. The ordered vocabulary is `USER_REQUEST`; the envelopes and visible openings are `MASTER_MAP_GEOMETRY`; split placement is `APPROXIMATION`.

| Room | Entrance | Entrance width | Exit | Exit width | Future identity |
| --- | --- | --- | --- | --- | --- |
| R04 | `S01-X03` from R09 | `~11.06 m` open hub span | `S01-X04` | `~3.96 m` | Largest room in sequence |
| R05 | `S01-X04` | `~3.96 m` | `S01-X05` | `~3.30 m` | Second room |
| R06 | `S01-X05` | `~3.30 m` | `S01-X06` | `~3.20 m` | Third room |
| R07 | `S01-X06` | `~3.20 m` | `S01-X07` | `~3.13 m` | Fourth room |
| R08 | `S01-X07` | `~3.13 m` | none | none | Smallest/final room; future sketched-map floor prop |

A142 belongs to R08. The map prop may communicate that nearby areas are recognizable while distant areas are unreliable, but dynamic map mutation is not authorized. A143 is assigned primarily to the full R04-R08 reduction and secondarily to R01's emptiness; the handwriting placement does not isolate it to one room.

### S01-R09 - Column Hall

- Source geometry: large central/western open room connecting the sector branches.
- Connections: `TRAVERSABLE -> S01-R01`, R03, R04, and R10.
- Columns: six distinguishable map marks, approximately at source pixels `(290,3156)`, `(304,3148)`, `(318,3140)`, `(332,3132)`, `(346,3124)`, `(360,3116)`.
- The marks are evenly spaced and sufficiently distinct to record as six future structural columns. Their footprint, shape, and height are not encoded and remain `APPROXIMATION` until a room build is requested.
- Environment: otherwise empty; no furniture or extra props.
- Provenance: hall/openings and six marks `MASTER_MAP_GEOMETRY`; interpretation as structural columns `USER_REQUEST` + `APPROXIMATION`.

### S01-R10 and S01-R11 - West dead-end group

- R10 is the western junction space after R09.
- R11 is the northwestern terminal chamber reached through the narrow north spur.
- R10 connections: `TRAVERSABLE <- S01-R09`; `TRAVERSABLE -> S01-R11`; `UNEXPLORED -> S01-E01`; logical `TRAVERSABLE -> S01-C01` with corridor placement still open.
- R11 termination: `DEAD_END`; no door, secret passage, or exit is recorded.
- The southwest spur from R10 also terminates at a wall and is candidate B for C01. If the north spur becomes C01 instead, the southwest spur remains an ordinary physical `DEAD_END`.
- Provenance: rooms, spurs, terminations, and E01 `MASTER_MAP_GEOMETRY`; A146 meaning `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION`.

## Corridor record

### S01-C01 - Death Corridor

- Source: `USER_REQUEST_2026_08_26` (`USER_REQUEST`). It is not sourced from A141-A146.
- Logical connection: physically traversable from R10 and physically terminates; `TRAVERSABLE <- S01-R10`, then `DEAD_END`.
- Floor elevation: `0.0 m`.
- Expected standard ceiling: `3.0 m`.
- Future environment: normal lights absent/off; essentially pitch black; simple wall writing `MORTE` and one arrow.
- Explicitly absent: monster, jumpscare, instant death, teleport, damage, or scripted event.

Two map corridors are equally plausible, so spatial assignment is `OPEN`:

| Candidate | Bounds px | World origin m | Envelope W x D m | Topological consequence |
| --- | --- | --- | --- | --- |
| A - north spur | `[75,3147,132,3212]` | `(13.038,0,547.093)` | `9.91 x 11.30` | C01 occupies the link toward R11; R11 remains the terminal room. |
| B - southwest spur | `[98,3224,175,3295]` | `(17.037,0,560.480)` | `13.39 x 12.34` | C01 is the standalone southwest dead-end; the R10-R11 link remains ordinary. |

Candidate B is not silently preferred. A developer decision is required before geometry.

## Connection graph

Only the five allowed connection types are used.

```text
S01-R01
|-- VISIBLE_BLOCKED -> S01-R02
`-- TRAVERSABLE ----> S01-R09
    |-- TRAVERSABLE -> S01-R03
    |   `-- SECTOR_EXIT -> S01-E02
    |-- TRAVERSABLE -> S01-R04
    |   `-- TRAVERSABLE -> S01-R05
    |       `-- TRAVERSABLE -> S01-R06
    |           `-- TRAVERSABLE -> S01-R07
    |               `-- TRAVERSABLE -> S01-R08
    `-- TRAVERSABLE -> S01-R10
        |-- TRAVERSABLE -> S01-R11
        |   `-- DEAD_END
        |-- UNEXPLORED -> S01-E01
        `-- TRAVERSABLE -> S01-C01 (candidate A or B: OPEN)
            `-- DEAD_END
```

## Opening register

Spans are measured between approximate map endpoints. They must be rechecked against the source crop when the adjacent room is implemented; they must not be snapped in a way that closes or moves a passage.

| ID | From | To | Type | Approximate source span px | Width m |
| --- | --- | --- | --- | --- | --- |
| `S01-X01` | R01 | R09 | `TRAVERSABLE` | `[313,3223]` to `[338,3364]` | `24.89` |
| `S01-X02` | R01 | R02 | `VISIBLE_BLOCKED` | `[310,3563]` to `[288,3583]` | `5.17` |
| `S01-X03` | R09 | R04 | `TRAVERSABLE` | `[373,3108]` to `[428,3076]` | `11.06` |
| `S01-X04` | R04 | R05 | `TRAVERSABLE` | `[440,3070]` to `[462,3064]` | `3.96` |
| `S01-X05` | R05 | R06 | `TRAVERSABLE` | `[440,3037]` to `[458,3031]` | `3.30` |
| `S01-X06` | R06 | R07 | `TRAVERSABLE` | `[421,3051]` to `[428,3034]` | `3.20` |
| `S01-X07` | R07 | R08 | `TRAVERSABLE` | `[409,2982]` to `[427,2982]` | `3.13` |
| `S01-X08` | R09 | R03 | `TRAVERSABLE` | `[474,3228]` to `[501,3162]` | `12.40` |
| `S01-X09` | R09 | R10 | `TRAVERSABLE` | `[146,3211]` to `[179,3147]` | `12.52` |
| `S01-X10` | R10 | R11 | `TRAVERSABLE` | `[88,3147]` to `[101,3137]` | `2.85` |
| `S01-X11` | R10 | C01 | `TRAVERSABLE` | candidate-dependent | open |
| `S01-X12` | R10 | E01 | `UNEXPLORED` | `[47,3219]` to `[70,3225]` | `4.13` |
| `S01-X13` | R03 | E02 | `SECTOR_EXIT` | `[648,3191]` to `[690,3205]` | `7.70` |
| `S01-X14` | R11 | wall | `DEAD_END` | northwest terminal wall | n/a |
| `S01-X15` | C01 | wall | `DEAD_END` | candidate-dependent terminal wall | n/a |

## Annotation ownership

| Annotation | Source text | Ownership | Provenance | Interpretation status |
| --- | --- | --- | --- | --- |
| A141 | "Torn wall paper- I got cut when I touched it" | `S01-R03` | `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION` | Room identity; hazard documented only. |
| A142 | "Found sketched map here..." | `S01-R08` | `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION` | Future floor prop; no dynamic mutation. |
| A143 | "The further I go the less there is" | primary `S01-R04`-`S01-R08`; secondary `S01-R01` | `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION` | Scope inferred from placement and shrinking/empty architecture; remains interpretive. |
| A144 | "This orange area is completely empty" | `S01-R01` | `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION` | Emptiness accepted; surface color open. |
| A145 | "Unreachable room through here" | `S01-R02` | `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION` | Visible blocked relationship. |
| A146 | "Unexplored" | `S01-E01`, adjacent to `S01-R10` | `MASTER_MAP_ANNOTATION` + `EXISTING_TRANSCRIPTION` | External destination intentionally undefined. |

## Visual standard for future rooms - documentation only

Normal rooms inherit the supplied visual-reference direction: warm yellow/beige subtly patterned wallpaper, matte beige carpet, coherent suspended ceiling, fluorescent panels integrated into that ceiling, believable wall thickness, and soft institutional illumination. Normal floor must not appear glossy black and the ceiling must not become stacked slabs. A special room changes only its explicit feature.

This is `VISUAL_REFERENCE`, not topology and not implemented material work. No supplied look image is used to infer a wall, room, or opening.

## Decisions and remaining conflicts

1. `S01-OD01 SURFACE_COLOR_DECISION = RESOLVED_FOR_R01`: the explicit implementation request selects standard yellow for R01. The orange/tan source evidence is retained.
2. `S01-OD02 C01_PLACEMENT = OPEN`: north spur candidate A and southwest spur candidate B are equally plausible from the master map.
3. `S01-OD03 R02_FOOTPRINT = OPEN`: the source envelope is much larger and more lobed than the perceived `~3 x 3 m` room. Do not rescale the map to force the estimate.
4. `S01-OD04 ROOM_SPLITS = OPEN_FOR_BUILD_RECHECK`: R04-R08 order is stable, but exact wall-centerline polygons must be rechecked one room at a time because the PNG has no semantic room layer.
5. `S01-OD05 A143_SCOPE = OPEN_INTERPRETATION`: primary ownership is the shrinking sequence, with secondary relevance to R01; the handwriting itself does not prove a single-room owner.

S01-R01 is the only implemented room. This milestone adds no R02/R09 geometry, prop, generator output, gameplay approval, visual approval, commit, or push.
