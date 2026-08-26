# Level 0 annotation fidelity — Sector001 and Sector002 (historical)

Status: **inactive audit of the deprecated generated sectors**. Preserve as evidence only; it is not a room-by-room implementation manifest. Active room status belongs in `docs/levels/level-0-rooms.md`.

This matrix audits what the player can actually see or collide with. Presence in `level-0-final-trace.json` alone is not implementation.

## Sector001

| annotation_id | source_text | geometry_effect | material_effect | lighting_effect | prop_effect | implementation_status |
|---|---|---|---|---|---|---|
| A093 | Water here is undrinkable | Flooded floor is lowered 0.30 m inside E01; solid substrate remains. | Dirty transparent water only in E01. | Receives surrounding light; no dedicated light. | No interaction is exposed, so the water cannot be consumed. | `IMPLEMENTED_SOURCE_APPROX` |
| A094 | Ceiling too low to pass | Absolute 1.15 m ceiling and matching wall profile in E02 physically block the 1.8 m player capsule. | Standard dirty ceiling/wall finish. | No special source. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A095 | Long stairway down | ST01 follows the traced hatch/polyline with a 1.5 m drop and aggregated ramp collision. | Stair finish plus aligned ceiling continuation. | Standard sparse lighting. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A096 | room with tiny entrances | Source-mask openings and wall collision share the same preserved navigable face; full-size capsule connectivity is tested around the annotation. | Standard room finish. | Standard sparse lighting. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A097 | Theatre? | Master-map footprint only; no invented stage/tiering. | No source-defined theatre finish. | No source-defined theatre rig. | Seating/stage content is undefined. | `CONTENT_REQUIRED` |
| A098 | Boiler room | Master-map footprint only; no invented boiler layout. | No source-defined boiler finish. | No source-defined boiler lighting. | Boiler/mechanical content is undefined. | `CONTENT_REQUIRED` |
| A099 | green carpet area | Source footprint unchanged. | Distinct green carpet material in the annotated source-colour region. | Standard sparse lighting. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A100 | no ceiling - walls rise into darkness | Ceiling omitted in E03; surrounding wallpapered walls rise to a finite 12 m rendering cap. | Standard wall material continues upward. | No normal ceiling fixtures inside the no-ceiling profile; dark environment above. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A105 | poor lighting here | No topology change. | Standard surfaces. | Fixture spacing increases to 9.5 m; two fixtures are off and one flickers locally. | Batched off fixtures plus one local flicker fixture. | `IMPLEMENTED_SOURCE_APPROX` |
| A106 | Impassably narrow | Explicit source pinch remains collision-blocked; it is not treated as an accidental walkable opening. | Standard wall finish. | Standard surrounding light. | None. | `IMPLEMENTED_EXACT` |
| A107 | Large fan in ceiling | Batched ceiling remains intact around a visible fan-sized feature. | Dark trim material. | No extra Light3D. | Low-cost crossed fan geometry at the annotated location. | `IMPLEMENTED_SOURCE_APPROX` |
| A122 | found femur here | None. | None. | None. | A canon/content-approved femur asset and placement decision are absent. | `CONTENT_REQUIRED` |
| A162 | Theoretical interconnected unlit region | Region remains outside generated walkable occupancy. | No surfaces are invented. | No lights are generated. | None. | `IMPLEMENTED_EXACT` |

## Sector002

| annotation_id | source_text | geometry_effect | material_effect | lighting_effect | prop_effect | implementation_status |
|---|---|---|---|---|---|---|
| A001 | Unexplored... how much further can I go? | The source zigzag spur is retained without inventing an exit or continuation. | Standard Level 0 finish. | Sparse standard lighting where a ceiling exists. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A002 | Line of posters - Closing down sale | Five thin, non-colliding poster planes follow the indicated west wall. | Dedicated closing-sale poster material. | Uses room lighting; no per-poster lights. | Five posters. | `IMPLEMENTED_SOURCE_APPROX` |
| A003 | These walls stop short of the ceiling | Pointed partition-wall runs stop at 2.15 m under the coherent 3.0 m ceiling. | Standard wallpaper on partitions. | Light passes through the 0.85 m upper gap. | None. | `IMPLEMENTED_SOURCE_APPROX` |
| A004 | Tall room - unreachable doors in wall near roof | Raised floor at 0.8 m, 7.0 m room height, and door-like high wall trims near Y 6.15. | Standard tall-room wall/ceiling finishes. | Sparse lights are placed at the high ceiling. | Three unreachable door-like trims. | `IMPLEMENTED_SOURCE_APPROX` |
| A005 | This area seems like a normal house | Source domestic room footprint is retained. | Pink/salmon and grey source regions differ from default carpet. | Standard sparse interior lighting. | Low-cost sofa, table, and toilet-like placeholder blocks mark the mapped domestic functions; final prop art remains replaceable. | `IMPLEMENTED_SOURCE_APPROX` |

## Remaining content decisions

`A097`, `A098`, and `A122` are deliberately not promoted to “implemented” by adding generic assets. Their source text does not define enough visual detail, and no approved content sheet currently supplies it. Resolving them requires an explicit content decision rather than a generator guess.
