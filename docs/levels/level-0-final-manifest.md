# Level 0 — final map manifest

Stato: **blueprint e settore pilota**. Il resto della mappa è tracciato, non costruito in 3D.

## Fonte autoritativa

- Geometria: `docs/reference/level-0/level-0-final-map.png`
  - titolo: *The currently mapped areas of the Backrooms — 71 days after arrival*
  - 3800 × 3700 px, PNG 8-bit RGB, 3 752 461 byte, copia binaria non ricalcolata
- Zoom della stessa zona centrale (non un layout indipendente): `docs/reference/level-0/level-0-17-days-zoom.png`
- Canone: `docs/wiki/backrooms-wiki-md/level-0.md`
- Trace machine-readable: `docs/levels/level-0-final-trace.json`

**La mappa a due piani precedente è deprecata.** Non usare `level-0-blueprint.md`, `level-0-layout.md`, ASCII occupancy, `add_maze`, o i generatori `generate_level_0_blockout.py` / `generate_level_0_layout.py`.

## Scala (congelata)

| | |
| --- | --- |
| origin_px | (0, 0) angolo in alto a sinistra del PNG |
| world X | pixel_x × 0.173846 m |
| world Z | pixel_y × 0.173846 m |
| world Y | su; floor default 0 |
| snap | 0.5 m (pilota); il trace conserva polilinee a ~2 px |
| corridoio tipico | 16.39 px → 2.85 m (centro della fascia 2.4–3.3 m) |
| stretti implicati | 1.46–2.43 m |
| AABB mappa | 658.25 × 642.0 m |

Non cambiare origin / scala / transform.

## Geometry

Occupancy derivata dai pixel colorati della reference, **non** da stanze-rettangolo. I vuoti charcoal tra i rami restano non-walkable (unmapped). I poligoni esterni + buchi interni sono le pareti.

Trace: ~37 superfici classificate, ~354 polilinee di parete (confini di classe + outer/hole). Maschera: `docs/reference/level-0/level-0-floor-mask.png`. Overlay di verifica: `docs/reference/level-0/level-0-trace-overlay.png`.

## Lighting

Default Level 0: fluorescenti a soffitto, non una per ogni tile. Eccezioni locali dalla mappa (poor lighting, flickering, dark, pitch black, orange emergency bulb, very loud lights).

Nel pilota: ~222 fixture, 1 flicker, 2 spente, 1 OmniLight arancione.

## Verticality

Scale e dislivelli sono locali finché la pianta non mostra un piano intero. Vedi `stairs` e `elevation_regions` nel JSON.

Nel pilota:

- water floor Y = −0.30 m
- ceiling too low to pass ≈ 1.15 m
- no ceiling: pareti a 12 m, void_black, nessun soffitto
- long stairway down (ST01): polyline dalla hatch della master (NW→SE, ~24.7 m, larghezza ~2.29 m, drop 1.5 m). Gradini visivi + rampa di collisione; il floor del labirinto a Y=0 è la quota inferiore. Non è un secondo piano.

## Water

Acqua reale (volume + materiale torbido `water_dirty.tres`). Non potabile. Nessuna sete, malattia o infezione.

## Architecture

Colonne, fan, finestre finte, porte bloccate, buche, crawlspace, gate: catalogati nelle annotation. Nel pilota sono modellati: fan a soffitto, pinch impassable, low ceiling, no-ceiling, water, stair, orange bulb.

## Surface/material variations

| Classe | Materiale |
| --- | --- |
| yellow carpet | `carpet_main.tres` |
| green carpet | `carpet_green.tres` |
| pink carpet | `carpet_pink.tres` |
| tiled/grey/concrete | `concrete_floor.tres` |
| water bed | concrete + `water_dirty.tres` |
| walls | `wall_main.tres` |
| ceiling | `ceiling_base.tres` |
| stairs | `stair.tres` |
| void | `void_black.tres` |

## Props/environment

Solo ciò che l'annotation rende obbligatorio. Nessun riempimento generico di sedie. Molti props restano CONTENT_REQUIRED.

## Special rooms

Vedi annotation: house, church, hotel, classroom, red rooms, current base, office pink, theatre, boiler, shop, monochrome rooms, melted rooms, cistern, ecc. Quasi tutte fuori dal pilota.

## Hazards

Red rooms (wiki), bottomless pool / square holes / deep crevice (wiki holes), undrinkable water, impassably narrow, ceiling too low, blackout, sick-feeling passages. Nessun danno automatico in questo milestone.

## Unknown/unreadable annotations

- LOW: 0
- UNREADABLE: 0
- MEDIUM: 4 (etichette lette soprattutto dallo zoom 17-days della stessa zona: flickering unexplored, locked door, unsafe pipe water, horse skull cupboard)

## Canon conflicts requiring review

Vedi anche `canon_conflicts` nel JSON.

1. **Safe water** vs wiki fluidi/Almond Water contaminati → geometria sì, bere no.
2. **Red rooms** mappa vs wiki Red Rooms → geometria rosa/rossa; niente gameplay Red Room; non sono zone d'incontro.
3. **Current base / another survivor** vs Isolation Effect → props/camp ok; niente NPC visibili.
4. **Windows + city + red sun** vs Level 0 solo interno → finestre finte, niente skybox urbano canonico.
5. **Mannequin / nest / caveman / horse skull** vs entità non confermate → niente AI.

## Settori

Il pilota è `sector_001` (17-days-core).

px_box `[1550, 1860, 2420, 2580]` → m_box circa `[269.5, 323.5, 420.5, 448.5]`.

Gli altri settori (~160 m) sono prenotati nel JSON con `built: false`. Non costruirli senza approvazione.

## Pilota — contenuto 3D

- Stanze/passaggi: cluster allagato, verde, grigio poor-lighting, beige adiacente, theatre/boiler a nord, pinch + fan a sud-ovest
- Dislivelli: water −0.30, low ceiling 1.15, no-ceiling 12 m, ST01 da Y=+1.5 a Y=0 lungo la hatch
- Acqua sì; colonne no (weird pillars è fuori pilota)
- Audit occupancy: overlap 0, walkable gap 0, extra 0
- Fixture: fluorescenti esistenti + 1 flicker + 2 off + 1 orange bulb
- Entry: `scenes/levels/level_0_test.tscn` istanzia `sector_001.tscn` (root snello)
- PackedScene: `scenes/levels/level_0/sector_001.tscn` + 16 chunk da 40 m
- Geometria statica: ArrayMesh + ConcavePolygonShape3D in `resources/generated/level_0/sector_001/*.res`
- Fluorescenti identiche: MultiMesh; flicker resta nodo; OmniLight restano nodi
- Rigenerazione: `python tools/build_level_0_optimized.py` (stesso occupancy, niente tscn da 90k righe)

Non procedere al Sector 2 senza approvazione.
