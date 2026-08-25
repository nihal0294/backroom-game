# Level 0 — layout deterministico

**Il layout occupancy-fill descritto sotto è FALLITO e sostituito.**

Fonte di verità attuale: [`level-0-blueprint.md`](level-0-blueprint.md)  
Generatore: `tools/generate_level_0_blockout.py`  
Scena: `res://scenes/levels/level_0_test.tscn`

Il testo che segue è lo storico del blockout kit 3×3 (blob walkable, scale contro soffitto, fluorescenti per cella). Non usarlo per costruire.

---

Fonte canone: [`docs/wiki/backrooms-wiki-md/level-0.md`](../wiki/backrooms-wiki-md/level-0.md)

Le mappe “BR Movie map” e “17 days after arrival” sono solo reference di **topologia**. Label non canoniche (safe water, theater, throne, home, green carpet, ecc.) **non** sono contenuti di gioco.

## Quote

| Piano | Y |
| --- | --- |
| Piano terra | 0 m |
| Piano superiore | 3 m |
| Soffitto piano superiore / double-height | 6 m |

1 unità Godot = 1 m. Griglia tecnica 3 m, snap 1,5 m usato per scale/offset.

## Dimensioni approssimative

- Piano terra: ~57 × 48 m (232 celle walkable)
- Piano superiore: ~54 × 39 m (179 celle walkable)

I due piani sono nella **stessa istanza**, collegati da scale reali. Nessun teleport.

## Macro-sezioni — piano terra (Reference A)

| Sezione | Ruolo |
| --- | --- |
| NorthLoop | Corridoio periferico lungo (visuale est-ovest) + S01/S02 |
| WestCluster | Cluster irregolare, dead-end ovest, spawn anonimo |
| CentralMaze | Alta densità, isole interne, loop |
| Anomalous room | Footprint “throne room”: stanza riconoscibile, **nessun trono** |
| PillarSection | Pillar Variation canonica, lattice 3×3 |
| SouthSection | Stanza ampia + SE più intricato |

Spawn test: stanza anonima ovest-sud (`10.5, 0, 13.5`). Non è una base.

## Macro-sezioni — piano superiore (Reference B)

| Sezione | Ruolo |
| --- | --- |
| CentralComplex | Nucleo ramificato |
| WestSection | Ala ovest più ampia |
| EastSection | Ala est |
| BlackoutSection | Blackout Zone (niente fluorescenti) |
| HoleSection | Hole Variation geometrica (pits + catch sotto) |
| SharedVerticalSpaces | Double-height + ballatoio |

## Scale

| Stair ID | Ground Floor | Upper Floor | Type |
| --- | --- | --- | --- |
| S01 | North corridor (~10.5, 43.5) | stessa XY a Y=3 | straight, rise north |
| S02 | North-central (~34.5, 43.5) | stessa XY a Y=3 | straight, rise north |
| S03 | South-west (~7.5, 16.5) | stessa XY a Y=3 | straight, rise south |

Collisioni: mesh a gradini + rampa invisibile per il `CharacterBody3D`.

## Materiali

| Superficie | Resource |
| --- | --- |
| Walls principali | `BRW_A_Mat.tres` (override) |
| Walls secondarie (NW / upper south) | `BRW_B` già sulle scene `br_wall_b_*` |
| Floor | `br_floor_3x_3` (kit: BRF + soffitto BRC sul sotto) |
| Ceiling | stesso modulo piano a Y=3 / Y=6 |
| Trim | scene door/hole del kit (`DWTrim` interno) |

Vecchio atlas `assets/textures/environment/level_0/backrooms.png`: **non usato** in questa mappa. Resta per i moduli GLB legacy.

## Variazioni canoniche implementate (solo architettura)

1. Arch Variation — aperture `br_wall_a_3x_3_hole` in un settore di transizione
2. Pillar Room — sala est, pilastri in griglia
3. Hole Variation — gruppo di floor hole a est-sud del piano superiore + lastra di catch a Y=-6 (niente morte/respawn)
4. Blackout Zone — settore ovest piano superiore senza luci
5. Double-height — vuoto a Y=3 su 4 celle, soffitto a 6 m, rail sul ballatoio

Non implementati: Peripheral Shift, Red Room gameplay, Manila Room, uscite di livello, Entities.

## Dalle reference, intenzionalmente NON portato in gioco

safe water, bathroom, hotel, theater, boiler, concrete biome, green carpet, alberi dipinti, base/Home, survivor, oggetti, “Unmapped” come void, trono.

“Stairs?” → scale reali S01–S03.

## Note

- `apply_level_0_materials.gd` non è sulla scena; ignora comunque i `ShaderMaterial` del pack.
- Hole pits: caduta possibile fino al catch; non è definito dove “portino” i buchi (wiki: sconosciuto).
