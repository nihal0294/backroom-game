# Level 0 — Sector 07 manual plan

## Runtime contract

Sector 07 is manually authored vector geometry. `sector_07.png`, `level0_master_numbered.png` and `sectors_01_12_connections.png` are references used to define the plan; runtime generation does not sample pixels, load the trace JSON or call `build_traced()`.

The source-plan coordinates remain metric and deterministic. All rooms, corridors, partitions, columns, openings, fixtures and markers share one authoring coordinate system. A registration correction is then applied uniformly:

```gdscript
registered_local = source_plan_local + Vector2(6.0, -6.0)
world = Transform3D(yaw_150_degrees, Vector3(-6.0, 0.0, 29.26)) * registered_local
```

The root remains on the torn-wallpaper seam at world `(-6.00, 29.26)`. The manual body offset is not an independent room origin: it is one constant transform applied to the complete plan. A `2.60 m` connector joins the fixed seam to R09.

## Cause of the previous ammassamento

The rejected implementation combined raster-cell occupancy, crop-relative source coordinates and locally positioned room/connector additions. Its sector registration placed valid Sector 07 regions inside the existing Sector 04 footprint and Map Room. Consequently several floors and walls were stacked in world space even when their local coordinates looked separate.

The replacement removes the raster construction path from `sector_07.gd`. Rotation-only registration cannot satisfy the fixed Sector 04 footprint: the best sampled rotation without a body offset still produced 588 overlapping samples. The selected yaw `150°` plus the uniform `(6,-6) m` body offset produces zero overlap samples at `0.25 m` spacing and also passes the runtime collision-volume regression.

## Architecture

- Floor: local profiled `Y = 0`.
- Ceiling: `2.866 m` above the local floor; it follows the Dark Room descent.
- Wall thickness: `0.30 m`.
- Baseboard: `0.12 m` high, `0.035 m` projection.
- Standard openings: at least `2.60 m`; narrowest authored corridor is `2.90 m`.
- Static geometry: 36 manual input polygons processed by the shared aggregate builder.
- Repeated fixtures/details: MultiMesh.
- Real lights: 8, shadows disabled.
- Sector terminals 06, 08 and 11: capped markers only; no adjacent sectors instantiated.

## Room inventory

Centres below are source-plan local coordinates before the uniform registration offset.

| ID | Name | Centre X/Z | Maximum size | Main connections |
|---|---|---:|---:|---|
| R01 | Dark Room | `(57.60,-12.80)` | `9.60 × 11.60 m` | C01, terminal 06/ramp |
| R02 | Sector 11 vestibule | `(50.20,0.00)` | `5.20 × 5.10 m` | C02, terminal 11 |
| R03 | East transition chamber | `(36.50,-16.40)` | `8.80 × 7.60 m` | C03, core |
| R04 | Core east hall | `(28.60,-10.60)` | `8.20 × 19.20 m` | core |
| R05 | North-east core room | `(24.00,-0.40)` | `10.80 × 11.00 m` | core |
| R06 | North central room | `(17.80,0.00)` | `14.00 × 11.00 m` | C04, core |
| R07 | West pocket | `(7.00,-2.20)` | `7.80 × 11.00 m` | connector 04, core |
| R08 | Central crossing | `(14.00,-9.20)` | `16.00 × 13.00 m` | core |
| R09 | Torn-wallpaper vestibule | `(6.50,0.00)` | `5.00 × 5.00 m` | connector 04, core |
| R10 | South-west core room | `(11.00,-13.00)` | `10.30 × 9.60 m` | core, C05 |
| R11 | South hall | `(17.20,-23.00)` | `20.80 × 12.80 m` | C05, C06, C07 |
| R12 | East ring side room | `(32.30,-35.00)` | `6.80 × 6.20 m` | C07 |
| R13 | Square-hole room | `(24.00,-40.00)` | `7.00 × 7.00 m` | C06, R14/R15 |
| R14 | Lower junction | `(18.50,-45.00)` | `9.20 × 8.60 m` | R13, C08 |
| R15 | Lower east side room | `(31.00,-43.00)` | `8.40 × 6.00 m` | R13 |
| R16 | Nest antechamber | `(12.20,-51.40)` | `8.00 × 7.80 m` | C08, R17 |
| R17 | Nest terminal room | `(11.50,-56.80)` | `6.00 × 4.60 m` | R16 |

J01 is the `5.60 × 5.00 m` Sector 11 T-junction centred at `(50.20,-10.70)`.

## Corridor inventory

| ID | Name | Centreline | Total length | Net width |
|---|---|---|---:|---:|
| C01 | First east spine | `(56.8,-10.7) → (54,-10.7) → (52,-11.7)` | `5.04 m` | `3.60 m` |
| C02 | Sector 11 branch | `(50,-10) → (50,-5) → (50,-1)` | `9.00 m` | `3.20 m` |
| C03 | Bent east spine | `(49,-11.8) → (44,-13.3) → (40.8,-14.7) → (38,-16.5)` | `12.04 m` | `3.60 m` |
| C04 | Sector 08 branch | `(14.8,2.3) → (14,7.3) → (13,12.3) → (11.4,18)` | `16.08 m` | `3.20 m` |
| C05 | Ring west side | `(12,-22.5) → (13,-26.2) → (14.8,-28.5)` | `6.75 m` | `3.20 m` |
| C06 | Ring south side | `(14.8,-28.5) → (20,-31.7) → (25.6,-34.9) → (25.6,-36.5)` | `14.16 m` | `3.20 m` |
| C07 | Ring east/music side | `(25.6,-34.9) → (29,-32.7) → (30.8,-28.7) → (28.4,-25.7)` | `12.28 m` | `3.20 m` |
| C08 | Nest neck | `(18.6,-47) → (17.2,-48.9) → (14,-52.7) → (12,-52)` | `9.45 m` | `2.90 m` |

The C07 ring uses one small manually meshed bridge between two aggregate polygons. This preserves the ring void without asking `Geometry2D` to encode a hole as one simple polygon. Both bridge interfaces have explicit `3.00 m` wall cuts and pass the real capsule sweep.

## Registered terminals

| Terminal | Registered local X/Y/Z | World X/Y/Z | Width | State |
|---|---:|---:|---:|---|
| 04 | `(0.000,0.000,0.000)` | `(-6.000,0.000,29.260)` | `2.60 m` | connected to Sector 04 |
| 06 | `(70.600,-0.987,-11.700)` | `(-72.991,-0.987,4.092)` | `3.20 m` | capped marker |
| 08 | `(17.400,0.000,12.000)` | `(-15.069,0.000,10.168)` | `3.20 m` | capped marker |
| 11 | `(56.000,0.000,-7.000)` | `(-57.997,0.000,7.322)` | `3.20 m` | capped marker |

## Special areas and annotations

- Dark Room: 8 structural columns, 3 neutral placeholder props and uneven/broken lighting.
- Descent from terminal 06: continuous ramp, approximately `7.5°`, `0.987 m` drop; floor, walls and ceiling follow it.
- Warped/jammed door: static visual and collision only; no interaction was invented.
- Distant music: marker only in the C07/southern zone; the existing audio architecture was not changed.
- Square hole: real `1.20 × 1.20 m` floor opening with a collidable shaft border; no death system was added.
- Nest sequence: R16 and R17 remain separate, cramped rooms with placeholder clutter; no entity or active nest was invented.
- Three principal plan voids remain outside the walkable geometry and are not paved or ceiling-filled.
- Sector 04 Map Room and MapMount remain fixed and unobstructed.

## Validation evidence

Final registration audit:

```text
SECTOR07_REGISTRATION: anchor=(-6.0, 0.0, 29.26) yaw=150.0 plan_offset=(6.0, -6.0) overlap_samples=0 sample_step=0.25
```

Final Godot 4.5 validation:

```text
SECTOR07_ROUTE: id=ROUTE-06-CORE passed=true
SECTOR07_ROUTE: id=ROUTE-11 passed=true
SECTOR07_ROUTE: id=ROUTE-08 passed=true
SECTOR07_ROUTE: id=ROUTE-04 passed=true
SECTOR07_ROUTE: id=ROUTE-RING passed=true
SECTOR07_ROUTE: id=ROUTE-NEST passed=true
SECTOR07_AUDIO_SPATIAL: real_lights=8 hums=8 near_unit=1.35 far_cutoff=8.00 off_fixtures=8
SECTOR07_MANUAL_VALIDATION: PASS rooms=17 corridors=8 junctions=1 shapes=36 floor_step=0.50 routes=6 columns=22 props=10 lights=8
```

Performance/build audit:

```text
nodes=100 MeshInstance3D=28 ArrayMesh=33 StaticBody3D=18 CollisionShape3D=18 MultiMeshInstance3D=5 Light3D=8 shadow_lights=0
input=36 union=4 boundary=189->188 floor_triangles=181 ceiling_triangles=181 fixtures=29 on=21 off=8 lights=8
```

Validation covers room-centre/corner floor rays, every corridor centreline at `0.50 m`, six full real-capsule routes, ramp support, hole absence, Dark Room inventory, static jammed door, Map Room floor/protected volume/MapMount/sightline and Sector 04 collision overlap outside the authorized seam.

Artifacts:

- `captures/sector_07_manual_overlay.png`
- `captures/sector_07_topdown.png`
- `captures/sector_07_dark_room_from_06.png`
- `captures/sector_07_dark_room_west_exit.png`
- `captures/sector_07_sector11_junction.png`
- `captures/sector_07_core.png`
- `captures/sector_07_sector08_branch.png`
- `captures/sector_07_south_ring.png`
- `captures/sector_07_hole_room.png`
- `captures/sector_07_nest_antechamber.png`
- `captures/sector_07_nest_terminal.png`
- `captures/sector_04_map_room_regression.png`
- `captures/sector_04_07_connection_from_04.png`
- `captures/sector_04_07_connection_from_07.png`
- `captures/sector_04_07_connection_ceiling.png`
