# Level 0 visual specification

Status: **active Backrooms VR-derived construction standard for Sector 04; awaiting developer visual approval**. It does not authorize another sector automatically.

## Value classification

- `SOURCE_EXACT`: directly stated by an authoritative project/canonical source.
- `SOURCE_DERIVED`: calculated or adapted from a source while preserving its intent.
- `VISUAL_APPROXIMATION`: selected by controlled visual comparison; it is not an exact video measurement.

The two linked videos are art direction only. No value estimated from a video is classified as `SOURCE_EXACT`.

## Active Sector 04 standard

| Property | Chosen standard | Classification | Basis |
| --- | ---: | --- | --- |
| Architectural source | `assets/backrooms_vr/scene.gltf` | `SOURCE_EXACT` | The local CC BY 4.0 model is the developer-selected construction reference. Its room layout is not copied. |
| Topology source | `assets/level_0/maps/sector_04.png` | `SOURCE_EXACT` | The sector image defines the occupied silhouette and proportions. |
| Wall material | `res://resources/materials/level_0/vr_kit/wallpaper.tres`; BRW_B maps | `SOURCE_DERIVED` | Existing tileable asset calibrated to the baked VR palette; VR wall atlases are mesh-specific and unsuitable for the new topology. |
| Wall tint / UV | `Color(0.79, 0.65, 0.36, 1)` / `Vector2(0.20, 0.20)` | `SOURCE_DERIVED` | The prior controlled capture measured `#896C1F` in-game versus `#8A6B24` in the VR preview. |
| Wall height | `2.866 m` | `SOURCE_DERIVED` | Difference between recurrent VR floor and ceiling planes. |
| Wall thickness | `0.30 m`, entirely outside the walkable polygon | `SOURCE_DERIVED` | Recurrent glTF wall depth is approximately 0.296–0.305 m. |
| Carpet | `res://resources/materials/level_0/vr_kit/carpet.tres`; ambientCG Carpet011 | `SOURCE_DERIVED` | CC0 tileable PBR carpet, tinted to the VR target; opaque, metallic 0, minimum roughness 0.88. |
| Ceiling | `res://resources/materials/level_0/vr_kit/ceiling.tres`; 0.60 m acoustic grid | `SOURCE_DERIVED` | Continuous batched slab with shader grid and atlas variation; no per-tile nodes. |
| Baseboard | 0.12 m high, 0.035 m visual projection | `VISUAL_APPROXIMATION` | Matches the VR trim language while leaving collision width unchanged. |
| Socket | plate 0.078 × 0.126 m; centre Y 0.317 m | `SOURCE_DERIVED` | Measured from the local model and emitted as MultiMesh detail. |
| Door / jamb | approximately 2.20 m high; 1.20 m outer frame | mixed `SOURCE_DERIVED` / `VISUAL_APPROXIMATION` | Height follows the VR model; simplified frame width is calibrated for the game player scale. |
| Visual fluorescents | 1.20 × 0.60 m; deterministic scattered layout; majority on | `SOURCE_DERIVED` | Dimensions and sparse/non-row presentation follow VR; exact distribution belongs to Sector 04. |
| Real lights | maximum 8 shadowless OmniLight3D; colour `Color(0.98, 0.96, 0.84, 1)` | `VISUAL_APPROXIMATION` | Visual fixtures and lighting sources remain separate. |
| Environment | background `Color(0.035, 0.028, 0.012, 1)`; ambient `Color(0.56, 0.52, 0.38, 1)` at 0.50; ACES exposure 1.05 | `SOURCE_DERIVED` | Calibrated in Godot 4.5 Forward+ against the local VR render. |

The source and implementation details are recorded in [`../levels/level-0-sector-04.md`](../levels/level-0-sector-04.md). The VR model’s exact attribution remains in `assets/backrooms_vr/license.txt`.

## Historical Sector001/Sector002 standard materials and dimensions

| Property | Chosen standard | Classification | Basis |
|---|---:|---|---|
| Default wall material | `res://resources/materials/level_0/wall_main.tres`, BRW_B texture set | `VISUAL_APPROXIMATION` | BRW_A, raw BRW_B, and calibrated BRW_B were compared in `res://scenes/debug/level_0_visual_calibration.tscn`; BRW_B retains the aged patterned-wallpaper read. |
| Wall tint | `Color(0.88, 0.84, 0.78, 1)` | `VISUAL_APPROXIMATION` | Muted dirty cream/yellow-beige under the chosen Godot 4.5 environment; avoids raw BRW_B green and the first overly orange candidate. |
| Wall UV scale | `Vector3(0.5, 0.5, 0.5)` world-triplanar | `SOURCE_DERIVED` | Adapted from the existing BRW_B scale and the external Godot 3 wallpaper reference (~0.8) for this generator's world-space shader. |
| Wall roughness / specular / normal | `1.12 / 0.16 / 0.65` | `VISUAL_APPROXIMATION` | Mostly matte old wallpaper without a plastic highlight. Effective shader roughness remains clamped to 1.0. |
| Wall thickness | `0.24 m` total | `VISUAL_APPROXIMATION` | Calibrated for visible mass and opening end caps. The previous 0.12 m navigable face is preserved exactly; the extra 0.12 m extends only into non-walkable space. |
| Default ceiling underside | world `Y = 3.0 m` | `SOURCE_EXACT` | `level-0-final-manifest.md` and trace elevation contract. It is absolute and does not follow water-surface floor lowering. |
| Low ceiling E02 | world `Y = 1.15 m` | `SOURCE_EXACT` | Final trace elevation region. |
| No ceiling E03 | no ceiling mesh; wallpapered walls rise to `12 m` into dark background | mixed: region `SOURCE_EXACT`, wall extent `VISUAL_APPROXIMATION` | The absence is source-defined; 12 m is a finite rendering approximation of “walls rise into darkness.” |
| Tall room A004 | floor `Y = 0.8 m`, ceiling underside `Y = 7.8 m` | `SOURCE_DERIVED` | Seven-metre room height within the documented 6–8 m interpretation, added to the raised floor. |
| Ceiling visual system | BRC_A acoustic-grid material on chunked ArrayMesh slabs; fixtures in MultiMesh | `SOURCE_DERIVED` | Preserves the existing optimized architecture and adapts the external suspended-panel/fixture composition without per-tile nodes. |
| Ceiling tint / roughness / specular / normal | `Color(0.78, 0.76, 0.68, 1) / 1.08 / 0.12 / 0.22` | `VISUAL_APPROXIMATION` | Dirty warm off-white acoustic panels with subdued response. |
| Default carpet | `res://resources/materials/level_0/carpet_main.tres`, BRF_B | `VISUAL_APPROXIMATION` | BRF_A, raw BRF_B, and calibrated BRF_B were compared; BRF_B supplies the best existing fibrous read. |
| Carpet tint / roughness / metallic / specular / normal | `Color(0.82, 0.70, 0.68, 1) / 1.20 / 0 / 0.08 / 0.85` | `VISUAL_APPROXIMATION` | Dirty beige-brown, fabric-like, opaque, and non-metallic. No displacement or parallax. |

## Fluorescent and environment standard

| Property | Chosen standard | Classification | Basis |
|---|---:|---|---|
| Visual fixture spacing | nominal `5.8 m`; poor-light region `9.5 m` | `VISUAL_APPROXIMATION` | Dense visible institutional rhythm; emitted as batched MultiMeshes. |
| Emissive colour / energy | `Color(0.96, 0.95, 0.84, 1) / 1.8` | `SOURCE_DERIVED` | Adapted from the external Godot 3 warm fluorescent value to Godot 4.5 exposure. |
| Sparse OmniLight spacing | `11.5 m` | `VISUAL_APPROXIMATION` | Separates visible fixtures from actual lights and leaves visible darkening between pools. |
| OmniLight colour | `Color(0.96, 0.95, 0.84, 1)` | `SOURCE_DERIVED` | Warmer/sicker than white without becoming orange or neon. |
| OmniLight energy / range / attenuation / specular | `1.4 / 8.5 m / 1.5 / 0.14` | `VISUAL_APPROXIMATION` | Godot 4.5 Forward+ calibration; old Godot 3 values were treated only as balance references. |
| Shadow strategy | normal fluorescents off; the single orange special bulb on | `SOURCE_DERIVED` | Avoids one shadow map per fixture while preserving a targeted special-light cue. |
| Ambient colour / energy | `Color(0.43, 0.42, 0.36, 1) / 0.24` | `SOURCE_DERIVED` | Adapted from external ambient `Color(0.4706, 0.4549, 0.3608)` at energy 0.4. |
| Tonemap | ACES, exposure `1.08` | `VISUAL_APPROXIMATION` | Calibrated in Forward+; the external Godot 3 exposure 2.0 was not copied blindly. |
| SSAO | enabled, radius `0.85`, intensity `0.85` | `VISUAL_APPROXIMATION` | Supplies restrained contact depth around wall mass and ceiling grid. |
| Glow | normalized, intensity `0.20` | `VISUAL_APPROXIMATION` | Keeps tubes visible without recreating the prior clipped fluorescent bloom. |
| Fog | colour `Color(0.43, 0.42, 0.36, 1)`, density `0.0045` | `VISUAL_APPROXIMATION` | Subtle distance integration, not a new gameplay phenomenon. |

## Geometry rules

- Default ceiling height is selected per occupied 0.5 m source cell and then greedily merged only with cells of the same explicit ceiling profile. Floor material rectangles never choose ceiling height.
- Wall runs split only at source-derived height/profile boundaries and are re-merged afterward. This prevents a segment centre from leaking a low/tall/no-ceiling treatment across a room boundary.
- Wall collision and visible wall mass use the same boxes. Increasing thickness must not move the established walkable face.
- E01 alone may classify blue source pixels as water in Sector001. Blue drafting marks outside E01 are normal floor and cannot receive transparent water.
- Normal ceiling, wall, carpet, light, and collision geometry remain chunked/aggregated. No tile, wall, or fixture may become a per-element gameplay node.

## External reference asset decision

No external file was imported during the historical Sector001/Sector002 pass. Carpet011 was later imported under `assets/textures/environment/ambientcg/Carpet011/` for the unapproved golden-room experiment; that import does not make it the approved default for future rooms.

The only texture set expected to provide a substantial improvement over the calibrated current asset is the ambientCG `Carpet011` set:

- `Textures/Carpet1/Carpet011_1K_Color.jpg`
- `Textures/Carpet1/Carpet011_1K_Roughness.jpg`
- `Textures/Carpet1/Carpet011_1K_NormalGL.jpg`
- `Textures/Carpet1/Carpet011_1K_AmbientOcclusion.jpg`

Its independent ambientCG/CC0 provenance is recorded by the reference repository's USDA metadata. The historical generated-sector pass did not consider `Paper003` and `Plastic010` a sufficient improvement over BRW_B and BRC_A. The room-specific S01-R01 correction below supersedes that historical decision for R01 only. `wall0_2K_Color.png` must not be imported until its independent provenance/license is verified.

## S01-R01 calibration override — VR palette, awaiting visual approval

This section records the 2026-08-27 correction pass for the only active room,
S01-R01. It overrides the historical generated-sector values for that room
only. Nothing here is yet `VISUALLY_APPROVED` or a standard for later rooms.

| Property | S01-R01 value | Classification | Basis |
|---|---:|---|---|
| Wall maps | BackroomsLikeAsset2 BRW_B 2K color, normal, ORM | `SOURCE_DERIVED` | Best match among the existing CC0 assets for the vertical arrow wallpaper visible in the supplied references; the unverified external `wall0_2K_Color.png` remains unused. |
| Wall tint / UV / pattern | `Color(0.79, 0.65, 0.36, 1)` / `Vector2(0.20, 0.20)` / source saturation `0.55` / pattern contrast `0.20` | `SOURCE_DERIVED` | Calibrated against the local CC BY 4.0 `Backrooms VR` render. The final room sample is `#896C1F`, versus `#8A6B24` in the VR preview. The lower pattern contrast retains the wallpaper identity without the previous oversized, high-contrast arrows. |
| Wall thickness | `0.15 m` | `VISUAL_APPROXIMATION` | Requested standard partition calibration; extrusion remains on the non-walkable side. |
| Carpet maps | ambientCG Carpet011 color, roughness, OpenGL normal, AO | `SOURCE_DERIVED` | Existing independently documented CC0 set; no displacement or parallax. |
| Carpet processing | tint `Color(0.48, 0.36, 0.15, 1)`, source saturation `0.58`, roughness minimum `0.88`, metallic `0`, specular `0.04` | `SOURCE_DERIVED` | Produces the dark old brown carpet of the VR target while retaining the independently sourced Carpet011 PBR response. The final room sample is `#452D07`, versus `#442C09` in the VR preview. |
| Ceiling maps | existing Level 0 `backrooms.png` clean/dirty tile atlas; ambientCG Plastic010 roughness and OpenGL normal | `SOURCE_DERIVED` | The atlas regions and UVs are taken from the existing `tile_clean.glb` and `tile_dirty.glb` assets. Plastic010 remains only as inexpensive micro-surface detail. |
| Ceiling underside | world `Y = 3.20 m` | `VISUAL_APPROXIMATION` | Room-specific visual calibration requested after the 3.0 m result read too low/heavy. It is not master-map canon. |
| Ceiling tint / grid / indirect response | `Color(0.73, 0.65, 0.58, 1)`; `0.60 m` acoustic module; divider `Color(0.42, 0.39, 0.32, 1)` with `0.008 m` half-width; 14% dirty-tile variation; emission factor `0.48` | `SOURCE_DERIVED` | One atlas-sampled acoustic cell per metric module prevents doubled baked/procedural lines. The inexpensive emission term approximates the baked indirect ceiling response of the VR reference without adding Light3D nodes. The final room sample is `#A49983`, versus `#A39784` in the VR preview. |
| Fixtures / real lights | 60 panels: 52 on and 8 off, split over two MultiMeshes; 12 shadowless OmniLight3D at energy `1.40`/`1.22`, range `11.5 m`, attenuation `1.30` | `VISUAL_APPROXIMATION` | Deterministically scattered 6 m distribution cells are jittered and snapped to the 0.60 m ceiling grid. All fixtures share one axis. Only lit visual fixtures may receive a real light. |
| Fluorescent colour | panel emission `Color(0.98, 0.96, 0.84, 1)`; real-light colour `Color(0.98, 0.96, 0.84, 1)` | `VISUAL_APPROXIMATION` | Dirty warm-white illumination that remains close to white and does not become the same mustard hue as the walls. |
| Environment | background `Color(0.035, 0.028, 0.012, 1)`; ambient `Color(0.56, 0.52, 0.38, 1)` at `0.50`; ACES exposure `1.05`; glow `0.06` | `SOURCE_DERIVED` | Preserves readable but substantially darker inter-fixture areas like the VR target instead of filling the entire room with uniform yellow ambient light. |

Final VR-palette capture evidence is stored as
`captures/s01_r01_*_vr_palette_v7.png`. The values are not approved as a
standard for later rooms until developer review.

`assets/backrooms_vr/scene.gltf` is a Sketchfab mesh by carlcapu9 licensed
CC BY 4.0; exact attribution is retained in
`assets/backrooms_vr/license.txt`. Its `Wall_1...4`, `Moquette_1...4`, and
`Ceiling_1...4` images are 4K baked UV atlases containing mesh-specific light,
shadow, seams, and empty regions. They are valid visual/palette evidence but
are not tileable source maps for the room-by-room geometry. No VR atlas is
bound by the final S01-R01 materials; the existing tileable BRW_B, Carpet011,
and ceiling sources remain in use.

Imported ambientCG source records remain stored beside their maps. BRW_B is
covered by the BackroomsLikeAsset2 CC0 declaration in
`assets/textures/environment/BackroomsLikeAsset2/README.txt`. Paper003 remains
available but is no longer used by S01-R01.
