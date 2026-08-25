# Level 0 — blueprint geometrico (rifacimento)

Stato: **fonte di verità del layout** per il blockout in `res://scenes/levels/level_0_test.tscn`.

Questo documento trascrive le due piante di reference **prima** della costruzione 3D. Non è un layout procedurale. Non è un’interpretazione libera.

Canone wiki: [`docs/wiki/backrooms-wiki-md/level-0.md`](../wiki/backrooms-wiki-md/level-0.md).
Le label delle mappe di reference (Home, Throne, Theater, Hotel, safe water, Unmapped come void, ecc.) **non** sono contenuti di gioco. Solo topologia. `Stairs?` / `Stairs` → scale reali.

---

## 1. Reference

| Piano | Reference | Ruolo |
| --- | --- | --- |
| Piano terra (GF, Y = 0) | **BR Movie Map** | Pianta da trasporre. Silhouette, densità, scale. |
| Piano superiore (UF, Y = 3) | **17 days after arrival** | Pianta da trasporre. Ancora più segmentata del GF. |

Scala: 1 unità Godot = 1 m. Player ~1.80 m, camera 1.68 m.

Quote:

| Superficie | Y |
| --- | --- |
| Pavimento GF | 0.00 |
| Soffitto GF (non sui pozzi scala / double-height) | 3.00 |
| Pavimento UF | 3.00 |
| Soffitto UF / chiusura pozzi | 6.00 |

Dislivello scale: 3.00 m.

---

## 2. Perché il layout precedente è fallito

Il generatore `tools/generate_level_0_layout.py` riempiva **grossi rettangoli walkable** (`add_rect` su cluster 15–54 m). I muri nascevano solo sul perimetro cella-occupata vs cella-vuota. Internamente era un open space. I `punch` toglievano poche celle, insufficienti.

Conseguenze osservate:

1. Pianta ≠ reference (blob rettangolare, non i 16 tratti della Movie Map).
2. Grande stanza aperta con poche intersezioni.
3. Muri buggati (vedi §11).
4. Scale `stair_3x_3` (alzata 3 m su corsa 3 m, ~45°) sotto lastre di soffitto/pavimento.
5. Nessun foro UF, nessun volume di stairwell.
6. Ogni cella 3×3 = floor kit con soffitto sul sotto + luce.

**Non si corregge aggiungendo muri a un blob.** Si ricostruisce come grafo stanze + corridoi.

---

## 3. Metodo di trasposizione

1. Estrarre la silhouette e le masse dalle due piante.
2. Assegnare macro-regioni riconoscibili.
3. Costruire **corridoi come spazi propri** (spine) e **stanze come rettangoli distinti** con muri in comune tranne alle aperture.
4. Due spazi adiacenti = muro pieno, salvo apertura nominata.
5. Lo stesso `space_id` su più rettangoli = interno continuo (corridoio che piega, senza muro al jog).
6. Adattamento locale permesso: lunghezze, larghezze, posizione esatta di un’apertura. Vietato: fondere cluster, cancellare loop, appiattire la silhouette.

Griglia di snap: **0.6 m** (larghezze 1.8 / 2.4 / 3.0 / 3.6 / 4.8 / 6.0).

Spessore muro: **0.12 m**. Altezza stanza tipica: **3.00 m**.

---

## 4. Dimensioni bersaglio

| Piano | Estensione XY | Note |
| --- | --- | --- |
| Ground Floor | ~126 × 94 m | Silhouette irregolare, non un rettangolo pieno |
| Upper Floor | ~120 × 90 m | Inset / offset rispetto al GF; masse diverse |

L’ingombro deriva dal numero di stanze e corridoi, non da chilometri vuoti.

---

## 5. Ground Floor — lettura della BR Movie Map

Orientamento: **nord = +Z**, est = +X, origine = angolo sud-ovest del bounding box.

La pianta GF non è “alcune stanze collegate”. Conserva questi 17 tratti:

| # | Tratto reference | Regione | Come viene tenuto |
| --- | --- | --- | --- |
| 1 | Lunghissimo corridoio/percorso superiore | `GF_A_NORTH_CORRIDOR` | Spine ~114 × 3 m, con hook ovest a U |
| 2 | Lungo ramo verticale occidentale | `GF_B_WEST_COMPLEX` | Corridoio ~3 × 60 m, x ≈ 6 |
| 3 | Grande cluster occidentale | `GF_B_WEST_COMPLEX` | 8+ stanze + loop interno + dead-end ovest |
| 4 | Complesso centrale-occidentale | `GF_C_CENTRAL_MAZE` bordo ovest | Griglia densa che tocca B |
| 5 | Nucleo centrale intricato | `GF_C_CENTRAL_MAZE` | Griglia stanze 6–7 m + alley 2.4 m |
| 6 | Grande camera centrale | `GF_D_CENTRAL_ROOM` | ~15 × 16.5 m, 1 tramezzo, eccezione aperta |
| 7 | Collegamento verso est | `GF_D` → `GF_E` | Corridoio corto 3 m |
| 8 | Grande camera orientale regolare | `GF_E_EAST_LARGE_ROOM` | ~24 × 18 m, 4 setti regolari (non vuota) |
| 9 | Complesso nord-est | `GF_F_NORTHEAST_COMPLEX` | Maze 3×2 + dead-end |
| 10 | Complesso sud-est | `GF_G_SOUTHEAST_COMPLEX` | Maze 3×3 |
| 11 | Ramo lunghissimo a est | `GF_G` | Corridoio ~18–24 m verso x max |
| 12 | Settore meridionale centrale | `GF_H_SOUTH_CENTRAL` | Stanze medie attorno al quadrato |
| 13 | Grande spazio quadrangolare basso-centro | `GF_H` | ~16.5 × 16.5 m, 1 tramezzo |
| 14 | Numerosi piccoli loop | C, B, F, G, H | Alleys a griglia + loop di cluster |
| 15 | Diramazioni corte | tutte | Stub 3–6 m |
| 16 | Dead end “unmapped” | B ovest, A nord, G est, I sud-ovest | Stanze chiuse, non void |
| 17 | Scale della reference | STAIR_A, B, C | Pozzi veri, vedi §9 |

### 5.1 Macro-regioni GF — connessioni

```
GF_A_NORTH_CORRIDOR
  -> GF_B_WEST_COMPLEX     (hook ovest / verticale)
  -> GF_C_CENTRAL_MAZE     (discese sud dalla spine)
  -> GF_F_NORTHEAST_COMPLEX
  -> STAIR_A, STAIR_B

GF_B_WEST_COMPLEX
  -> GF_A
  -> GF_C
  -> GF_I_SOUTHWEST_BRANCH
  -> double-height (pozzo visivo, non scala)

GF_C_CENTRAL_MAZE
  -> GF_B
  -> GF_D_CENTRAL_ROOM
  -> GF_H_SOUTH_CENTRAL
  -> GF_A

GF_D_CENTRAL_ROOM
  -> GF_C
  -> GF_E_EAST_LARGE_ROOM
  -> GF_H (secondario)

GF_E_EAST_LARGE_ROOM
  -> GF_D
  -> GF_F
  -> GF_G

GF_F_NORTHEAST_COMPLEX
  -> GF_A
  -> GF_E

GF_G_SOUTHEAST_COMPLEX
  -> GF_E
  -> GF_H
  -> ramo est (dead-end)

GF_H_SOUTH_CENTRAL
  -> GF_C
  -> GF_D
  -> GF_G
  -> GF_I

GF_I_SOUTHWEST_BRANCH
  -> GF_B
  -> GF_H
  -> STAIR_C
```

### 5.2 Corridoi principali GF

| ID spazio | Regione | Ruolo | Larghezza | Lunghezza approx |
| --- | --- | --- | --- | --- |
| `A_SPINE` | A | Percorso nord, jog/hook ovest | 3.0 | 114 + hook 9 |
| `B_VERT` | B | Ramo verticale ovest | 3.0 | 60 |
| `B_COR_H` | B | Traversa nel cluster ovest | 2.4 | 18 |
| `C_CH*` / `C_CV*` | C | Alleys del maze centrale | 2.4 | griglia |
| `D_LINK_E` | D | Ponte verso E | 3.0 | 6 |
| `F_CH*` / `F_CV*` | F | Alleys NE | 2.4 | griglia |
| `G_CH*` / `G_CV*` | G | Alleys SE | 2.4 | griglia |
| `G_EAST_ARM` | G | Ramo est lunghissimo | 3.0 | 22 |
| `H_COR_N` | H | Traversa sud-centro | 3.0 | 24 |
| `I_VERT` | I | Discesa SW | 2.4 | 18 |
| `I_COR_H` | I | Traversa spawn | 2.4 | 16 |

### 5.3 Stanze / spazi distinguibili GF (minimo 20; bersaglio ~45)

Piccole (4–7 m): la maggioranza di C, F, G, I, dead-end.
Medie (7–12 m): cluster B, H peri, A laterali.
Grandi (12–18 m): `D_MAIN`, `H_SQUARE`.
Molto grande (>18 m): solo `E_MAIN` (~24 × 18), con setti interni.

Elenco nominale (implementato dal generatore, stessi id):

**A** — `A_R01`…`A_R07` (stanze appese alla spine, alcune dead-end a nord).
**B** — `B_R01`…`B_R08`, `B_DEAD_W1`…`B_DEAD_W3`.
**C** — maze `C_R{row}{col}` (12 stanze) + 1–2 extra di bordo.
**D** — `D_MAIN`, `D_ALC_N`, `D_ALC_E`.
**E** — `E_MAIN` (unica eccezione molto grande).
**F** — maze 6 stanze + `F_DEAD_NE`.
**G** — maze 9 stanze + `G_EAST_END` + `G_DEAD_S`.
**H** — `H_SQUARE`, `H_R01`…`H_R06`.
**I** — `I_SPAWN`, `I_R01`…`I_R05`, `I_DEAD_SW`.

### 5.4 Loop GF (minimo 5)

1. Cluster B: `B_COR_H` + `B_VERT` + stanze perimetrali.
2. Maze C: ogni faccia 2×2 della griglia è un loop.
3. Maze F.
4. Maze G.
5. Anello H: `H_SQUARE` / `H_R*` / `H_COR_N`.
6. Anello lungo A_SPINE → C → H → I → B_VERT → A (perimetro giocabile).

### 5.5 Dead end GF

| ID | Dove | Note |
| --- | --- | --- |
| `B_DEAD_W1`–`W3` | ovest di `B_VERT` | “Unmapped” ovest: stanza chiusa, non vuoto |
| `A_R01`, `A_R04` | nord della spine | diramazioni corte |
| `F_DEAD_NE` | estremo NE | |
| `G_EAST_END` | fondo del ramo est | |
| `G_DEAD_S` | stub sud-est | |
| `I_DEAD_SW` | angolo SW | |

### 5.6 Intersezioni GF (minimo 10)

T o croce in: hook A/B, B_COR_H/B_VERT, ogni incrocio alley C (4+), D_LINK_E, F, G, H_COR_N, I_COR_H, innesto G_EAST_ARM, innesto A→F.

---

## 6. Upper Floor — lettura della 17-days map

La seconda pianta è **più segmentata** della prima. Non è una copia del GF e non è una stanza unica.

Tratti da conservare:

| Tratto | Regione UF |
| --- | --- |
| Nucleo centrale estremamente complesso | `UF_C_CENTRAL_MAZE` |
| Grandi ramificazioni / pinch-and-spread | `UF_H`, `UF_G` |
| Lunghi corridoi | `UF_A` nord, `UF_G` est |
| Molte stanze irregolari | tutte |
| Cluster laterali | `UF_F`, `UF_I` |
| Settore occidentale grande (suddiviso) | `UF_B_WEST_SECTOR` |
| Settore orientale grande (suddiviso) | `UF_E_EAST_SECTOR` |
| Ramo nord | `UF_A_NORTH_BRANCH` |
| Ramificazioni sud | `UF_H_SOUTH_BRANCH` |
| Loop piccoli e grandi | C, B, E, H |
| Dead end | A, F, G, I |
| Stanza molto alta + vista verticale | `UF_D_TALL_ROOM` / `GF` sotto |
| Tre arrivi scala | STAIR_A/B/C |

### 6.1 Macro-regioni UF — connessioni

```
UF_A_NORTH_BRANCH
  -> UF_B_WEST_SECTOR
  -> UF_C_CENTRAL_MAZE
  -> UF_F_NORTHEAST
  -> STAIR_A, STAIR_B (arrivi)

UF_B_WEST_SECTOR
  -> UF_A
  -> UF_C
  -> UF_I_SOUTHWEST
  -> UF_D_TALL_ROOM (ballatoio)

UF_C_CENTRAL_MAZE
  -> UF_A, UF_B, UF_E, UF_H, UF_D

UF_D_TALL_ROOM
  -> UF_B, UF_C
  -> vuoto verticale sul GF (non è una scala)

UF_E_EAST_SECTOR
  -> UF_C, UF_F, UF_G

UF_F_NORTHEAST
  -> UF_A, UF_E

UF_G_SOUTHEAST
  -> UF_E, UF_H
  -> lungo corridoio est

UF_H_SOUTH_BRANCH
  -> UF_C, UF_G, UF_I

UF_I_SOUTHWEST
  -> UF_B, UF_H
  -> STAIR_C (arrivo)
```

### 6.2 Target UF

- 9 macro-regioni (elenco sopra)
- 25+ stanze/spazi distinguibili (maze C 16 stanze + B/E suddivisi + H/G/I)
- ≥5 loop
- 3 arrivi stairwell
- 1 zona double-height / ballatoio (`UF_D`)

Le funzioni “base / office / blackout / green carpet” della 17-days map **non** si implementano. Solo la massa.

---

## 7. Schema GF (schematico, nord in alto)

Ogni carattere ≈ 6 m. Non è la mesh; è la massa.

```
        0        20        40        60        80       100       120
        |         |         |         |         |         |         |
  90    .  sA====A_SPINE================sB=========A========F F F X
  84    B  A   r r     C C C C     r        r       F F F F
  78    B  r r r r     C C C C   D D D D        E E E E  F
  72    B  r r r r     C C C C   D D D D        E E E E
  66    X  r r * *     C C C C   D D D D   =    E E E E
  60    B  r r * *     C C C C   D= = =D======  E E E E
  54    B  r r r r     C C C C         =        E   |  G G G
  48    B  I I r r     H H H H H H     =        G G G G G
  42    B  I I     =================H=======        G G G G
  36    |  I sC I   H H H H H H H H H          G G G G====X
  30    |  I I I    H H [H_SQUARE ] H H        G G G     ramo est
  24    |  I X I    H H [  16.5   ] r          G X
  18    |           H H [         ] r
  12    .           .     quadrato
```

`sA/sB/sC` = stairwell. `*` = double-height. `X` = dead end. `=` = corridoio. Lettere = regioni.

Validazione top-down: da lontano si devono leggere **spine nord, barra ovest, cluster B, maze C, camera D, blocco E, NE, SE, ramo est, quadrato H, ramo I**. Se si vede un rettangolo quasi vuoto, il test è fallito.

---

## 8. Schema UF (schematico, nord in alto)

```
  90      A A A A A A A A A A A A A A     F F F X
  84      A   r r   C C C C C C    r      F F F
  78    B B B r r   C C C C C C    E E E  F
  72    B B B r     C C C C C C    E E E E
  66    B B * *     C C C C C C    E E E E
  60    B B * *     C C C C        E E   |
  54    B B B B     C     |        E E   G G G
  48    I I B B     H H H H H      G G G G G
  42    I sC  I     H H r r r      G G G G====X
  36    I I I I     H H r r          G X
  30    I X         H   ramo sud
```

Silhouette più spezzata del GF: pinch tra C e E, pinch tra H e G, ramo nord distinto, ovest a masse, est a masse, sud ramificato.

---

## 9. Scale — tre stairwell

La reference GF marca più `Stairs?`. Tre collegamenti fisici distinti:

| ID | GF | UF | Note |
| --- | --- | --- | --- |
| **STAIR_A** | alcova nord-ovest sulla spine `A_SPINE` (~x=12, z=90) | `UF_A_NORTH_BRANCH` | Reference: stairs nord-sinistra |
| **STAIR_B** | alcova nord-centro sulla spine (~x=54, z=90) | `UF_A` / bordo `UF_C` | Reference: stairs nord-centro |
| **STAIR_C** | alcova SW in `GF_I` (~x=9, z=31) | `UF_I_SOUTHWEST` | Reference: stairs sud-ovest |

### 9.1 Che cos’è uno stairwell (obbligo)

**Piano inferiore**

- pavimento del pozzo
- scala che sale
- **nessun soffitto GF** sul volume della scala

**Piano superiore**

- pavimento normale attorno
- **apertura** nel pavimento UF
- bordo fisico (parapetto 1.1 m) attorno al foro, con varco all’uscita
- soffitto del pozzo = soffitto UF a 6 m

Vietato: scala e lastra ceiling/floor nello stesso volume.

### 9.2 Geometria scala

Il kit `Scenes/Stairs/stair_3x_3.tscn` è una rampa **3 m di alzata su 3 m di corsa (~45°)**. Fuori target (alzata 0.16–0.18, pedata 0.27–0.30). Non usato per questo blockout.

Tipologia: **due rampe parallele + pianerottolo** (switchback).

| Parametro | Valore |
| --- | --- |
| Rampe | 2 × 9 gradini |
| Alzata | 0.1667 m (9 × 0.1667 = 1.50 m / rampa) |
| Pedata | 0.28 m (9 × 0.28 = 2.52 m di corsa) |
| Larghezza rampa | 1.20 m |
| Pianerottolo | 2.52 × 1.20 m a Y = 1.50 |
| Inclinazione | atan(1.50/2.52) ≈ 30.8° |
| Pozzo | 4.5 × 4.5 m |
| Pareti pozzo | 0 → 6 m, aperture GF (0–3) e UF (3–6) |
| Collisione locomotiva | rampa BoxShape invisibile coincidente, non i gradini |

### 9.3 Headroom

In ogni punto percorribile della scala: spazio libero verticale **pavimento-scala → ostacolo ≥ 2.10 m** (meglio 2.2–2.4).

Con pozzo aperto fino a Y = 6:

- piede (Y = 0): 6.00 m
- pianerottolo (Y = 1.50): 4.50 m
- sbarco (Y = 3.00): 3.00 m (stanza UF)

Minimo sul percorso scala: **3.00 m** ≥ 2.10 m.

Il player è alto 1.80 m: a sbarco restano 1.20 m sopra la testa, identici a una stanza 3 m. Non si alza il soffitto UF solo per le scale.

Controllo automatico nel generatore (campioni lungo le rampe).

---

## 10. Double-height / ballatoio

Non è una scala.

| | |
| --- | --- |
| Footprint | ~10.8 × 12.0 m in `GF_B` / `UF_D` (~x=18–28.8, z=48–60) |
| GF | pavimento sì, soffitto no, pareti perimetrali 6 m |
| UF | foro centrale ~7.2 × 8.4 m, ballatoio 1.8 m, parapetto 1.1 m |
| Soffitto | 6.00 m continuo |

Collegamento verticale **visivo** tra i due piani.

---

## 11. Muri — causa dei bug precedenti

Cause **confermate** dal codice/asset, non ipotesi:

1. **Topologia**: occupancy-fill → muri solo sul perimetro del blob. Non è un bug di mesh, è il layout.
2. **Soffitto sul sotto del floor kit**: `br_floor_3x_3` ha il soffitto sul fondo. Lastre a Y = 0 e Y = 3 mettono un soffitto **coplanare** al pavimento UF e attraversano le scale.
3. **Kit `stair_3x_3` + lastra**: AABB scala 3×3×3 nello stesso volume del floor/ceiling della cella.
4. **OmniLight per cella**: 159 luci, una ogni 3×3, lette come “fluorescenti a tappeto”.
5. **Possibile z-fight angoli**: `br_wall_a_3x_3` (3 × 3 × 0.25, pivot centro) + `br_wall_a_post_3m` sullo stesso spigolo.
6. **Legacy `wall_*.glb`**: atlas a spessore ~0, coplanari se raddoppiati.

Cause **probabili**: yaw 0/90/180 su pivot non coincidente col filo muro; due facce coplanari se una cella e il vicino piazzano entrambi (il generatore tentava di deduplicare, ma floor underside vs wall top restavano).

**Questo blockout (metodo B):** `BoxMesh` + `BoxShape3D`, spessore 0.12 m, **un solo segmento per spigolo**, segmenti collineari uniti, niente kit muro/floor/stair, niente fluorescenti.

---

## 12. Aperture, corridoi, soffitto, luci

- Aperture (non porte ogni 3 m): 1.2 / 1.5 / 1.8 / 2.4 / 3.0 m in funzione del bordo condiviso.
- Auto-apertura **stanza ↔ corridoio** se condividono un bordo. **Stanza ↔ stanza** = muro, salvo link espliciti per loop.
- Corridoio ↔ corridoio: apertura larga (quasi tutto il bordo) oppure stesso `space_id`.
- Soffitto: lastre continue per spazio, **senza lampade**. Fori solo su stairwell e double-height.
- Luci di questo task: `WorldEnvironment` + **una** `DirectionalLight3D` di debug. Niente Omni per cella.

---

## 13. Spawn e player

Spawn GF: `I_SPAWN` (stanza anonima sud-ovest, ~x=16, z=28). Non è una base.

Si preservano: player, sprint, stamina, jump, flashlight, Inventory, HUD, CharacterStatus. Questo task non li modifica.

---

## 14. Vista top-down di debug (obbligatoria)

Nodi nella scena, **non** gameplay:

- `DebugViews/TopDownGround` — Camera3D ortografica
- `DebugViews/TopDownUpper`
- Script `res://scripts/debug/level_0_debug_view.gd`

Tasti fisici (senza Input Map):

| Tasto | Azione |
| --- | --- |
| F8 | camera player |
| F9 | top-down GF (nasconde UF) |
| F10 | top-down UF (nasconde GF) |
| F11 | cattura PNG in `captures/` |

Argomento: `godot --path . -- --capture-topdown`

Criterio di fallimento: da lontano un grosso rettangolo quasi vuoto.

---

## 15. Fuori da questo task

Niente: materiali PBR finali, fluorescenti, props, Entities, Objects, puzzle, survival, Red Room, Manila Room, Hole Variation, Blackout gameplay, audio, decorazioni, procedural generation.

`docs/levels/level-0-layout.md` descriveva il layout **fallito**; resta come storico e rinvia qui.

---

## 16. Metriche implementate (blockout 2026-08-25)

| | GF | UF |
| --- | --- | --- |
| AABB walkable | 142.2 × 84.0 m | 139.2 × 81.0 m |
| Stanze / spazi named `room` | 74 | 64 |
| Macro-regioni | 9 | 9 |
| Loop (griglie maze + cluster) | ~17 | ~15 |
| Celle walkable 0.6 m | 18029 (~6490 m²) | 15029 |
| Vicinanza architettonica | 84% | 88% |

Scale (angolo SW del pozzo 4.8×4.8 m):

| ID | XY | Ingresso GF | Sbarco UF |
| --- | --- | --- | --- |
| STAIR_A | 12.0, 90.0 | `A_SPINE` sud | `UF_A_SPINE` |
| STAIR_B | 52.8, 90.0 | `A_SPINE` sud | `UF_A_SPINE` |
| STAIR_C | 9.0, 30.0 | `B_VERT` ovest | `UF_I_LAND` |

Quote: GF 0 / soffitto 3; UF 3 / soffitto 6. Headroom scale (tread→soffitto pozzo): min **3.00 m**.

Muri: BoxMesh + BoxShape3D, spessore 0.12 m, un segmento per spigolo.

Spawn: `I_SPAWN` (18.3, 0, 26.4).

Top-down: `captures/level_0_topdown_gf.png`, `captures/level_0_topdown_uf.png`. In gioco: F8 player, F9 GF, F10 UF, F11 cattura. I soffitti si nascondono in F9/F10 per far vedere i muri.

---

## 17. Checklist di fallimento

Continuare a correggere se:

- [ ] GF dall’alto non ricorda la BR Movie Map
- [ ] UF dall’alto non ricorda la 17-days map
- [ ] maggioranza open space
- [ ] sotto i minimi di stanze / intersezioni / loop
- [ ] scala contro soffitto, senza foro UF, o soffitto nel pozzo
- [ ] z-fighting evidente; muro ruotato/stirato/bucato
- [ ] player attraversa muri o si incastra nelle scale
- [ ] fluorescente su ogni tile
