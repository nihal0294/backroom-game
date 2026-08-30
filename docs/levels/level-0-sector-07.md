# Level 0 — Sector 07

## Scope and sources

Sector 07 is a manually authored, static continuation of Sector 04. Its topology is derived from:

- `assets/level_0/maps/sector_07.png` for the local footprint and terminals;
- `assets/level_0/maps/level0_master_numbered.png` for the geographic relation to Sector 04;
- `assets/level_0/maps/sectors_01_12_connections.png` for the Sector 08, 11 and 06 labels;
- `assets/backrooms_vr/` and `docs/reference/level-0-visual-spec.md` for construction and visual proportions.

The diagnostic trace and registration files are measurement evidence only. Runtime construction does not read an image, trace JSON, or generate topology procedurally.

## Registration

The controlled Sector 04 → Sector 07 passage replaces the filled torn-wallpaper patch on Sector 04's west boundary.

| Item | Value | Classification |
|---|---:|---|
| Sector 04 seam centre | world `(-6.000, 29.250)` | SOURCE_DERIVED |
| Clear passage width | `2.150 m` | SOURCE_DERIVED |
| Sector 07 source entrance | local image `(180, 324) px` | SOURCE_DERIVED |
| Sector 07 scale | `0.089583 m/px` | SOURCE_DERIVED |
| Sector 07 root transform | position `(-6, 0, 29.25)`, yaw `180°` | SOURCE_DERIVED |

Registration evidence records A141 at master pixel `(388.04, 1498.19)`. The contour-only nearest-pair diagnostic is Sector 04 `(595,219) px` ↔ Sector 07 `(241,445) px`, at master midpoint `(289.24,1625.98) px`; it is retained as a numeric cross-check, not used as the doorway. Visual inspection of the annotation overlay selects the source-facing Sector 07 branch at `(180,324) px`. That branch is the one extended to the known Sector 04 world anchor; `UnexploredExit` remains at a different end of Sector 04.

This collapses only the cartographic whitespace between the two independently cropped sector drawings. It does not introduce a room or corridor through a mapped non-walkable area. The separate Sector 04 `UnexploredExit` near world `(0, 39)` is preserved and is not used for this connection.

## Static topology contract

The source footprint is frozen as five explicit polygon components plus four explicit narrow connectors. The large component retains its source contour; the connectors restore thin beige passages that are visible in the source but fall below reliable raster-trace thickness.

| ID | Source bounds (px) | Role | Runtime status |
|---|---|---|---|
| S07-C01 | `(180,144)`–`(844,700)` | principal rooms and corridors; includes entrance and Sector 06 arm | implemented |
| S07-C02 | `(660,300)`–`(708,396)` | Sector 11 terminal branch | implemented |
| S07-C03 | `(384,524)`–`(396,532)` | source speck; not a navigable component | deliberately excluded |
| S07-C04 | `(324,692)`–`(448,780)` | southern room group | implemented |
| S07-C05 | `(272,800)`–`(332,908)` | southern tail | implemented |
| S07-L01 | entrance `(180,312)`–`(204,336)` | controlled Sector 04 seam | implemented at 2.15 m clear width |
| S07-L02 | C01 → C02 | thin source connection to Sector 11 | implemented at minimum walkable width |
| S07-L03 | C01 → C04 | thin southern source connection | implemented at minimum walkable width |
| S07-L04 | C04 → C05 | thin southern source connection | implemented at minimum walkable width |

### Authored world-space measurements

Coordinates below are Sector 07 local metres before the root transform. The runtime world mapping is `world_x = -6 - local_x`, `world_z = 29.25 - local_z`.

| Authored polygon | Local X extent | Local Z extent / endpoints | Net width / main size |
|---|---:|---:|---:|
| S07-L01 entrance | `0.000..3.000` | `-1.075..1.075` | `2.150 m` |
| S07-C01 main contour | `0.000..59.483` | `-16.125..33.683` | main AABB `59.483 × 49.808 m`; 137 frozen vertices |
| S07-C02 terminal 11 group | `43.000..47.300` | `-2.150..6.450` | AABB `4.300 × 8.600 m`; 22 vertices |
| S07-C04 south group | `12.900..24.008` | `32.967..40.842` | AABB `11.108 × 7.875 m`; 24 vertices |
| S07-C05 south tail | `8.242..13.617` | `42.642..52.317` | AABB `5.375 × 9.675 m`; 22 vertices |
| S07-L02 | centreline `(44.792,5.733)` → `(44.792,8.600)` | vertical | `2.150 m` |
| S07-L03 | centreline `(24.008,17.200)` → `(18.813,36.817)` | oblique | `2.150 m` |
| S07-L04 | centreline `(17.917,37.267)` → `(10.750,46.225)` | oblique | `2.150 m` |

The eight inputs merge to one union. Floor and ceiling use that same footprint; A140 removes only the explicit square floor opening and A137 raises only the explicit terminal-06 floor strip.

### Future terminal markers

| Marker | Local position | Approx. world position | Outward direction | Reserved clear width | Current state |
|---|---:|---:|---|---:|---|
| `Terminal08` | `(10.033, 0, -16.125)` | `(-16.033, 0, 45.375)` | world `+Z` | `2.15 m` | source-capped |
| `Terminal11` | `(44.075, 0, -2.150)` | `(-50.075, 0, 31.400)` | world `+Z` | `2.15 m` | source-capped |
| `Terminal06` | `(59.125, 0, 11.288)` | `(-65.125, 0, 17.962)` | world `-X` | `2.15 m` | source-capped |

Terminal directions 08, 11 and 06 end in full collision walls for this milestone and carry non-gameplay markers for future sector work. No Sector 05 connection is created.

## Environmental annotations

| Annotation | Source text | Implementation |
|---|---|---|
| A136 | Door jammed — frame warped | Static, visibly skewed door/frame obstruction near the east branch; no invented interaction. |
| A137 | Slope down strongly; walls cracked; lights broken | Terminal 06 approach rises `0.75 m` when approached from Sector 07 (therefore descends into Sector 07 from terminal 06), has dark crack strips and uses broken/off fixtures with reduced real-light coverage. |
| A138 | Same yellow floor | Dedicated yellow-beige rough carpet material in the annotated east zone. |
| A139 | Music source unknown | `CONTENT_REQUIRED`: location marker only; no music asset or gameplay source was invented. |
| A140 | Square hole | Real `1.00 × 1.00 m` opening removed from floor render/collision, with dark colliding shaft walls and no false bottom. |

## Construction and performance constraints

- Standard ceiling height: `2.866 m`.
- Wall thickness: `0.30 m`, extruded away from walkable floor by the shared architecture builder.
- Floor, wall, ceiling and baseboard are aggregate `ArrayMesh` resources.
- Floor and wall collision use aggregate concave shapes.
- Repeated fixtures, sockets, vents and terminal caps use `MultiMeshInstance3D` where appropriate.
- Visible fixtures are separate from a maximum of eight sparse, shadowless real lights.
- Sector 07 uses 21 fixture panels (18 on, 3 off), six sockets, four ceiling vents and eight real shadowless lights.
- Sector 07 is always loaded with Sector 04 in the current Level 0 scene; streaming remains a future concern.

## Diagnostic artifacts

- `docs/levels/level-0-sector-07-trace.json`
- `docs/levels/level-0-sector-04-07-registration.json`
- `captures/sector_07_trace_overlay.png`
- `captures/sector_04_07_connection_overlay.png`
- `captures/sector_04_07_connection_overlay_closeup.png`

## Validation evidence

Godot 4.5 validation result:

`SECTOR07_VALIDATION: PASS polygons=8 union=1 floor_triangles=268 floor_duplicates=0 fixtures=21 on=18 off=3 lights=8 sockets=6 vents=4 passage=2.15m hole=real slope=0.75m terminals=08+11+06 capped=true junction_delta=0.000000m`

The existing CharacterBody3D crossed centre, left edge and right edge without falling. Centre crossings ended at world `X=-6.900` from Sector 04 and `X=-5.100` from Sector 07.

Sector 07 subtree audit:

`nodes=39 MeshInstance3D=6 ArrayMesh=11 StaticBody3D=4 CollisionShape3D=4 MultiMeshInstance3D=5 Light3D=8 shadow_lights=0`

Combined Level 0 runtime audit (Sector 04, Sector 07, Player and UI):

`nodes=217 MeshInstance3D=14 ArrayMesh=22 StaticBody3D=8 CollisionShape3D=9 MultiMeshInstance3D=11 Light3D=17 shadow_lights=0`

Forward+ review captures:

- `captures/sector_07_topdown.png`;
- `captures/sector_07_main_cluster.png`;
- `captures/sector_07_narrow_corridor.png`;
- `captures/sector_07_lighting.png`;
- `captures/sector_07_hole_or_slope.png`;
- `captures/sector_04_07_connection_from_04.png`;
- `captures/sector_04_07_connection_from_07.png`;
- `captures/sector_04_07_connection_closeup_left.png`;
- `captures/sector_04_07_connection_closeup_right.png`.
