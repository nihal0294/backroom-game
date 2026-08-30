# Level 0 — Sector 07

## Authority and coordinate contract

Sector 07 is a static, deterministically baked continuation of Sector 04. Topology comes from `assets/level_0/maps/sector_07.png`; relative placement and annotations come from `level0_master_numbered.png`; external terminals come from `sectors_01_12_connections.png`. Backrooms VR assets provide visual language only.

The 1024 × 1024 source uses one coordinate system throughout:

```gdscript
local_x = (pixel_x - 180.0) * 0.09
local_z = (pixel_y - 143.0) * 0.09
```

Useful source bounds are X `180…844`, Y `143…906`, producing the required local AABB of approximately `59.85 × 68.76 m`. The old `0.089583 m/px` scale and Y origin `324` are retired.

## Confirmed root cause and replacement pipeline

The previous implementation mixed a Y origin of `324` with source points measured from the full PNG, then merged the main contour and hand-added connectors into one union polygon. The union could not retain exterior-connected void contours; the scene transform also anchored local `(0,0)` rather than source `(180,323)`. Those three errors caused rooms to bunch together, filled the voids and placed Sector 07 across Sector 04.

The replacement pipeline is:

1. `tools/trace_sector_07.gd` samples the PNG at `SAMPLE_STEP = 4` and simplifies closed boundary loops with `POLYGON_EPSILON_CELLS = 2.50`;
2. non-overlapping greedy rectangles freeze floor and ceiling occupancy;
3. all outer and inner loops, eight source-visible internal partitions, 12 dark pillars and the exact square hole are frozen in `sector_07_layout.gd`;
4. `level0_architecture_builder.gd::build_traced()` emits four aggregate meshes and two aggregate collision resources without polygon union;
5. approved Sector 04 footprints are excluded at 0.36 m trace-cell granularity, except the shared seam, preventing stacked geometry where the manually approved Sector 04 footprint differs from raster registration.

The noisy crop-edge fragments at the Sector 04 entrance are replaced, not overlaid, by one exact 2.15 m diagonal corridor. Under the selected 225-degree registration its local south-east direction maps to the west-facing normal of Sector 04. Traced wall segments have closed end faces; their coplanar horizontal caps are omitted to prevent floor/ceiling z-fighting. A visual-only ceiling continuation sits 4 mm above the primary underside and extends behind outward wall mass, covering trace-resolution seams without changing collision or floor occupancy.

Runtime does not read the PNG or JSON.

## Registration and Sector 04 protection

| Item | Value |
|---|---:|
| Sector 04 seam centre | world `(-6.00, 29.26)` |
| Source anchor | pixel `(180,323)` = local `(0.00,16.20)` |
| Clear width | `2.15 m` |
| Selected root | position `(5.45513,0,40.71513)`, yaw `225°` |
| Map Room | `3.20 × 3.60 m`, unchanged |
| MapMount | `(-17.4625,1.45,22.80)`, unchanged |

The tested 0°, 180° and 203° candidates overlapped approved Sector 04 geometry; 180° and 203° specifically invaded the Map Room. The 225° candidate clears its protected volume and points the western source branch away from the seam. The deterministic Sector 04 footprint exclusion makes the 2.15 m seam the only shared collision surface. `%UnexploredExit` is not used.

## Rooms

These audit polygons describe visible source regions; runtime geometry remains the exact traced occupancy, not these control envelopes.

| ID | Maximum size | Openings |
|---|---:|---|
| R07-01 | `12.24 × 10.08 m` | C07-01, 03, 04 |
| R07-02 | `11.88 × 9.00 m` | C07-02, 03, 05 |
| R07-03 | `17.28 × 13.32 m` | C07-04, 06, 10 |
| R07-04 | `7.20 × 14.04 m` | C07-05, 06 |
| R07-05 | `14.40 × 9.00 m` | C07-06, 07 |
| R07-06 | `17.64 × 10.44 m` | C07-07, 08, 09 |
| R07-07 | `15.48 × 11.16 m` | C07-10, 11, 13 |
| R07-08 | `11.16 × 7.92 m` | C07-11, 12, 14 |
| R07-09 | `9.00 × 10.80 m` | C07-12, 13 |
| R07-10 | `11.16 × 7.92 m` | C07-14, 15 |
| R07-11 | `5.40 × 5.76 m` | C07-15, 16 |
| R07-12 | `3.24 × 4.32 m` | C07-16 |

The three required large voids remain without floor or ceiling and have traced perimeter walls. Their control envelopes are approximately `(354…430,304…412)`, `(343…465,427…541)` and `(363…470,525…644)` px.

## Corridor audit

Bearings are in source-local X/Z. Complete endpoints, metre coordinates, predecessor/successor and room polygons are stored in `level-0-sector-07-trace.json`.

| ID | Source endpoints (px) | Length | Net width | Bearing |
|---|---|---:|---:|---:|
| C07-01 | `(180,323)→(244,356)` | 6.481 m | 2.15 m | 27.3° |
| C07-02 | `(294,143)→(320,286)` | 13.081 m | 2.15 m | 79.7° |
| C07-03 | `(244,356)→(316,344)` | 6.569 m | 3.60 m | -9.5° |
| C07-04 | `(288,412)→(380,420)` | 8.311 m | 3.60 m | 5.0° |
| C07-05 | `(424,324)→(500,392)` | 9.178 m | 3.60 m | 41.8° |
| C07-06 | `(464,500)→(560,488)` | 8.707 m | 3.60 m | -7.1° |
| C07-07 | `(560,488)→(700,444)` | 13.208 m | 3.60 m | -17.4° |
| C07-08 | `(680,420)→(680,333)` | 7.830 m | 2.15 m | -90.0° |
| C07-09 | `(700,444)→(826,450)` | 11.353 m | 3.60 m | 2.7° |
| C07-10 | `(300,548)→(328,608)` | 5.959 m | 2.15 m | 65.0° |
| C07-11 | `(328,608)→(436,672)` | 11.298 m | 2.15 m | 30.7° |
| C07-12 | `(436,672)→(488,668)` | 4.694 m | 2.15 m | -4.4° |
| C07-13 | `(488,668)→(464,580)` | 8.209 m | 2.15 m | -105.3° |
| C07-14 | `(408,700)→(388,744)` | 4.350 m | 2.15 m | 114.4° |
| C07-15 | `(388,744)→(328,812)` | 8.162 m | 2.15 m | 131.4° |
| C07-16 | `(312,800)→(288,900)` | 9.256 m | 2.15 m | 103.5° |

## Architecture and annotations

- Wall thickness `0.30 m`, mass toward non-walkable space.
- Floor at local `Y=0`; ceiling `2.866 m` above the local profiled floor.
- Baseboard `0.12 m` high with `0.035 m` projection.
- 0.60 m ceiling tessellation; profiled floor, walls and ceiling share the same slope function.
- The east descent is `7.5°` over `7.5 m`, dropping `0.987 m`; three fixtures are off/broken and crack strips are visual only.
- The square hole is `1.20 × 1.20 m` at approximately `(421,737)` px. Its floor triangles are absent and its shaft has collision; no death system was invented.
- The distant-music annotation is marker-only at `(468,652)` px (`CONTENT_REQUIRED`).
- The jammed/warped door remains static and visual; no interaction was invented.
- The terminal “nest” rooms remain separate and empty; no entity or active nest was invented.
- Terminal markers are source-capped at 08 `(294,143)`, 11 `(665,333)` and 06 `(826,380)`; no other sector is instantiated.
- Normal Level 0 yellow carpet is used, not Sector 04's orange special carpet.

Lighting stays at 21 batched fixtures (18 on, 3 off), eight sparse real lights, no shadows, six sockets and four vents.

## Validation evidence

Sector 07:

`SECTOR07_VALIDATION: PASS traced_rects=8999 floor_triangles=17998 fixtures=21 on=18 off=3 lights=8 sockets=6 vents=4 passage=2.15m hole=real slope_drop=0.987m terminals=08+11+06 capped=true`

Sector 04 regression with Sector 07 loaded:

`SECTOR04_V2_VALIDATION: PASS ... map_room=3.20x3.60 passage=1.20 sector07_passage=2.15 clearances=2.50+2.10 ... duplicates=0`

The combined test checks five Map Room floor points, its protected collision volume, MapMount transform, entrance-to-map sightline, all approved Sector 04 footprints at 0.50 m intervals, the three large voids, hole floor absence, terminals, aggregate mesh duplication, four real-controller seam crossings and a 1.20 m real-capsule traversal probe inside every one of the 16 audited corridors. Chord endpoints remain room/corridor control centres, so the traversal probes deliberately test each corridor interior rather than cutting across authored bends at the endpoints.

Sector 07 performance remains batched:

`nodes=39 MeshInstance3D=6 ArrayMesh=11 StaticBody3D=4 CollisionShape3D=4 MultiMeshInstance3D=5 Light3D=8 shadow_lights=0`

Final build audit: `input=8999 union=0 boundary=1282->1282 floor_triangles=17998 ceiling_triangles=20586`. Generated resources are `63,347 B` for the JSON trace, `44,225 B` for the frozen layout script, `111,895 B` for the overlay and `148,397 B` for the top-down capture.

Artifacts:

- `captures/sector_07_trace_overlay.png`
- `captures/sector_07_topdown.png`
- `captures/sector_07_main_cluster.png`
- `captures/sector_07_narrow_corridor.png`
- `captures/sector_07_lighting.png`
- `captures/sector_07_hole_or_slope.png`
- `captures/sector_04_map_room_regression.png`
- `captures/sector_04_07_connection_from_04.png`
- `captures/sector_04_07_connection_from_07.png`
