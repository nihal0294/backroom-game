# Level 0 — standard visuale corrente

Stato: **CURRENT — usato dalla Golden Room V2 e da Sector 04 V2; in attesa di review visiva finale**.

Questa specifica riguarda il linguaggio costruttivo e visivo. La topologia resta definita dalle immagini in `assets/level_0/maps/`; `assets/backrooms_vr/scene.gltf` non sostituisce mai la pianta di gioco.

Classificazioni:

- `SOURCE_EXACT`: valore o asset assunto direttamente da una fonte di progetto selezionata.
- `SOURCE_DERIVED`: misura o regola ricavata dalla fonte con ispezione tecnica.
- `VISUAL_APPROXIMATION`: calibrazione scelta per ottenere in Godot 4.5 il risultato desiderato.

## Standard

| Voce | Valore corrente | Classificazione | Motivazione |
| --- | --- | --- | --- |
| Pianta | `sector_04.png` nel contesto di `level0_master_numbered.png` | `SOURCE_EXACT` | Definisce sagoma, proporzioni e connessioni del settore; non viene ricavata dal modello VR. |
| Riferimento architettonico | `assets/backrooms_vr/scene.gltf` | `SOURCE_EXACT` | È la fonte selezionata per altezza, spessore, finiture, controsoffitto, lampade, stipiti, prese e dettagli. |
| Materiale parete | `res://resources/materials/level_0/vr_kit/wallpaper.tres`; BRW_B color/normal/ORM 2K | `SOURCE_DERIVED` | BRW_B è tileable e riproduce il pattern della reference senza riutilizzare gli atlas VR con illuminazione cotta. |
| Tint parete | `Color(1.00, 0.93, 0.72, 1)`; saturazione sorgente `0.45`; contrasto pattern `0.13`; midpoint `Color(0.90, 0.86, 0.74, 1)` | `VISUAL_APPROXIMATION` | Mantiene il giallo-beige malato senza virare verso arancio saturo o bianco. |
| UV parete | scala world-space `0.20 × 0.20` | `SOURCE_DERIVED` | Calibrata sulle proporzioni del pattern visibile nel modello VR. |
| Risposta parete | metallic `0`; roughness clamp `0.84–1.00`; specular `0.08`; normal strength `0.28`; AO influence `0.14` | `VISUAL_APPROXIMATION` | Wallpaper opaca e vecchia, con rilievo leggibile ma non plastificato. |
| Altezza standard | pavimento `Y = 0`; intradosso soffitto `Y = 2.866 m` | `SOURCE_DERIVED` | Misura ricorrente floor-to-ceiling ricavata dalla scena VR. |
| Spessore parete | `0.30 m`, estruso verso il lato non calpestabile | `SOURCE_DERIVED` | Il modello VR misura circa `0.296–0.305 m`; la separazione visuale/collisione conserva lo spazio navigabile. |
| Battiscopa | altezza `0.12 m`; sporgenza `0.035 m` in Sector 04 (`0.03 m` nel test Golden) | `VISUAL_APPROXIMATION` | Proporzione visiva derivata dalla reference, adattata alla geometria aggregata. |
| Pavimento | `res://resources/materials/level_0/vr_kit/sector_04_orange_carpet.tres`; set ambientCG Carpet011 | `SOURCE_DERIVED` | Usa color, roughness, normal e AO indipendenti; nessun atlas baked o ORM ambiguo. |
| Tint moquette | `Color(0.58, 0.41, 0.16, 1)`; saturazione sorgente `0.58`; UV `0.72 × 0.72` | `VISUAL_APPROXIMATION` | Traduce l'area arancio/marrone muta di Sector 04 mantenendo una fibra sporca leggibile. |
| Risposta moquette | opaque; metallic `0`; roughness clamp `0.88–1.00`; specular `0.04`; normal strength `0.54`; AO influence `0.18` | `VISUAL_APPROXIMATION` | Elimina la risposta vetrosa e mantiene il materiale morbido e opaco. |
| Geometria pavimento | unica triangolazione della union dei 14 poligoni, senza superfici coplanari duplicate | `SOURCE_DERIVED` | La regola deriva dalla topologia della pianta ed elimina overlap e z-fighting. |
| Sistema soffitto | mesh continua dalla stessa union del pavimento; materiale `res://resources/materials/level_0/vr_kit/ceiling.tres` | `SOURCE_DERIVED` | Un solo piano coerente impedisce salti casuali fra stanze/chunk. |
| Modulo controsoffitto | griglia metrica `0.60 m`; divisore half-width `0.008 m`; tint pannello `Color(0.73, 0.65, 0.58, 1)`; divisore `Color(0.42, 0.39, 0.32, 1)`; dirty rate `0.14` | `SOURCE_DERIVED` per modulo; `VISUAL_APPROXIMATION` per colori e sporco | Riproduce pannelli acustici e profili sospesi senza creare un nodo per tile. |
| Risposta soffitto | metallic `0`; roughness clamp `0.82–1.00`; specular `0.06`; normal strength `0.18`; indirect emission `0.48` | `VISUAL_APPROXIMATION` | Conserva la lettura del controsoffitto nelle zone non illuminate senza uniformare la luce reale. |
| Porta VR, involucro doppio | `2.1053 × 2.2771 × 0.2088 m` | `SOURCE_EXACT` | AABB dell'isola aggregata `Exit_Door` dopo l'import Godot; non equivale a una singola apertura. |
| Anta VR singola | lastra sorgente circa `0.9897 × 2.1917 × 0.0357 m`; risorsa estratta con ferramenta `1.0626 × 2.2095 × 0.1819 m` | `SOURCE_EXACT` | L'anta mantiene mesh, UV e materiale `Exit_Door`; il maggiore ingombro include maniglione e ferramenta. |
| Apertura porta adottata | luce netta `1.20 × 2.20 m`; ingombro esterno stipite/taglio parete `1.37 × 2.285 m`; tolleranza giunzione `≤ 0.001 m` | `VISUAL_APPROXIMATION` | Un unico descriptor alimenta taglio parete, frame e collisione; la singola luce netta della sorgente VR non è isolabile con certezza. |
| Stipite adottato | larghezza visibile `0.085 m`; profondità casing `0.060 m`; proiezione faccia `0.020 m`; reveal continuo `0.302 m` (`0.30 m` parete + `1.5 mm` per lato) | `VISUAL_APPROXIMATION` | Un frame completo e bifacciale nasconde i cap dell'apertura. Le dimensioni individuali dello stipite sorgente restano sconosciute; il materiale uniforme evita di ripetere l'atlas baked `Wood` su BoxMesh generiche. |
| Presa | centro `Y = 0.317 m`; mesh `Socket_1` ripetuta senza collisione | `SOURCE_DERIVED` | Posizione e modello provengono dal kit VR; il dettaglio resta economico. |
| Bocchetta HVAC | mesh `Vent_1` orizzontale a `Y = 2.84 m`; cinque istanze in Sector 04 | `SOURCE_DERIVED` per asset/quota; `VISUAL_APPROXIMATION` per distribuzione | Le bocchette appartengono al controsoffitto e non alle pareti. |
| Pannello fluorescente | `1.20 × 0.60 m`, quota `Y = 2.84 m`; emissione warm-white | `SOURCE_DERIVED` per dimensione/quota; `VISUAL_APPROXIMATION` per emissione | Il pannello visivo è separato dalla sorgente luminosa reale. |
| Distribuzione fluorescenti | Sector 04: 27 fixture, 24 accese e 3 spente, in due MultiMesh | `VISUAL_APPROXIMATION` | Distribuzione manuale irregolare e leggibile, non diagonale o perfettamente seriale. |
| Luce reale | massimo 8 `OmniLight3D`, senza ombre, solo presso fixture accese | `VISUAL_APPROXIMATION` | Mantiene zone più scure e limita il costo Forward+. |
| Environment | background `Color(0.035, 0.028, 0.012, 1)`; ambient `Color(0.56, 0.52, 0.38, 1)` a `0.50`; ACES exposure `1.05`; glow `0.06` | `VISUAL_APPROXIMATION` | Bilancia leggibilità, tono giallo sporco e buio fra i pannelli senza copiare numeri Godot 3. |

## Implementazione e prestazioni

- Floor, ceiling, walls e baseboards sono ArrayMesh aggregati.
- Prese, stipiti, pannelli porta, vent e fixture ripetute usano MultiMesh.
- Il modello VR completo resta disponibile solo nella scena di reference `res://scenes/dev/backrooms_vr_reference.tscn`.
- Le texture atlas VR non sono materiali tileable per la geometria del settore.
- Il materiale sorgente `Wood` è usato dal modello soprattutto per battiscopa aggregati; non è il materiale del gruppo `Exit_Door` e non va applicato come texture ripetuta agli stipiti procedurali.
- Non si usa parallax o displacement.

## Provenienza

`assets/backrooms_vr/scene.gltf` è “Backrooms VR” di carlcapu9, CC BY 4.0; attribuzione completa in `assets/backrooms_vr/license.txt`. BRW_B è coperto dalla dichiarazione CC0 in `assets/textures/environment/BackroomsLikeAsset2/README.txt`. Carpet011 e Plastic010 mantengono i rispettivi file `SOURCE.md` accanto alle texture.

## Evidenza corrente

Le immagini di review sono esclusivamente:

- `captures/golden_room_*.png`;
- `captures/door_test_*.png`;
- `captures/sector_04_map_room_*.png`, `captures/sector_04_push_door_*.png` e le cinque `captures/sector_04_*seam*.png`/`sector_04_wall_t_junction_closeup.png`;
- `captures/backrooms_vr_preview.png` come confronto immutabile.

Questi valori sono lo standard implementato corrente, ma restano modificabili dopo la review visiva dello sviluppatore.
