# Level 0 visual specification — Sector001 and Sector002

Status: calibrated implementation standard for the current Sector001/Sector002 milestone. This document does not authorize Sector003 or change the final master map.

## Value classification

- `SOURCE_EXACT`: directly stated by an authoritative project/canonical source.
- `SOURCE_DERIVED`: calculated or adapted from a source while preserving its intent.
- `VISUAL_APPROXIMATION`: selected by controlled visual comparison; it is not an exact video measurement.

The two linked videos are art direction only. No value estimated from a video is classified as `SOURCE_EXACT`.

## Standard materials and dimensions

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

No external file was imported in this pass.

The only texture set expected to provide a substantial improvement over the calibrated current asset is the ambientCG `Carpet011` set:

- `Textures/Carpet1/Carpet011_1K_Color.jpg`
- `Textures/Carpet1/Carpet011_1K_Roughness.jpg`
- `Textures/Carpet1/Carpet011_1K_NormalGL.jpg`
- `Textures/Carpet1/Carpet011_1K_AmbientOcclusion.jpg`

Its independent ambientCG/CC0 provenance is recorded by the reference repository's USDA metadata. `Paper003` and `Plastic010` are also independently CC0 but do not currently offer a substantial enough improvement over BRW_B and BRC_A to justify import. `wall0_2K_Color.png` must not be imported until its independent provenance/license is verified.
