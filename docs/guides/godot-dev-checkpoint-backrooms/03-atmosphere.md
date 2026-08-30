# 03 — Atmosphere: Environment, nebbia e post-process VHS

## Source

- Titolo: [Godot 4.5 Tutorial: VHS Camcorder Shader & Atmosphere (Backrooms Part 3)](https://www.youtube.com/watch?v=6y34Ir_7eX0)
- ID: `6y34Ir_7eX0`
- Parte: 3 di 5 della serie Backrooms
- Versione dichiarata: Godot 4.5
- Shader pubblico esaminato: [`vhs_cam.gdshader`](https://github.com/spaghettiSyntax/Backrooms_Tutorial/blob/main/vhs_cam.gdshader)
- Riferimenti ufficiali: [volumetric fog](https://docs.godotengine.org/en/4.5/tutorials/3d/volumetric_fog.html), [custom post-processing](https://docs.godotengine.org/en/4.5/tutorials/shaders/custom_postprocessing.html)

## What the tutorial builds

Calibrazione di `WorldEnvironment` e luci, timer/overlay atmosferici e un post-process fullscreen che combina roll, distorsione, rumore, scanline, grille, aberrazione cromatica, vignetta e possibile warp CRT.

## Godot nodes/resources used

- `WorldEnvironment` con risorsa `Environment`;
- luci 3D della scena;
- timer e label/overlay per dati da videocamera;
- `CanvasLayer` e `ColorRect` full-rect;
- `ShaderMaterial` con shader `canvas_item` e `hint_screen_texture`;
- nel codice pubblico extra, una `Label` con timestamp aggiornato.

La gerarchia esatta degli overlay non è pubblicata nel repository; non va inventata come contratto.

## Important implementation techniques

Il post-process campiona la schermata, altera le UV con una banda animata, separa leggermente i canali colore e combina rumore/vignetta. I parametri pubblicati dall'autore includono risoluzione, roll speed/size, distortion, aberration, warp e vignette. Sono valori artistici del tutorial, non preset del progetto.

Godot 4.5 suggerisce `CanvasLayer` + `ColorRect` per un singolo pass fullscreen e segnala `BackBufferCopy` come opzione più efficiente quando basta copiare una regione. Il fog volumetrico funziona solo in Forward+.

## Useful code patterns

Separare sempre tre livelli: illuminazione fisica del mondo, overlay informativi e post-process fullscreen. Lo shader legge la screen texture e combina piccoli offset UV/canale; i parametri devono essere esposti e profilati, non codificati come identità visiva obbligatoria. Gli eventi atmosferici temporizzati devono comandare parametri, non duplicare l'intero `WorldEnvironment`.

## Project applicability

- `WorldEnvironment`, esposizione, ambiente e separazione tra fixture visive/luci reali: `REUSE`/`ADAPT` dalla configurazione corrente.
- nebbia tradizionale leggera per casi motivati: `ADAPT` dopo profiling.
- fog volumetrico globale in Level 0: `REFERENCE_ONLY`; non è richiesto e costa GPU.
- shader VHS/CRT automatico: `DO_NOT_USE`. La richiesta di progetto esclude effetti analogici aggiunti solo perché presenti in una reference.
- aberrazione, scanline, roll e warp persistenti: `DO_NOT_USE` senza decisione artistica/accessibilità esplicita.

## Prestazioni e piattaforme

- PC desktop: un pass fullscreen può essere accettabile, ma va misurato insieme a Forward+, glow e luci.
- Steam Deck: ridurre campionamenti, noise e risoluzione interna; offrire un toggle se l'effetto viene mai approvato.
- Mobile/Compatibility: il fog volumetrico non è supportato; preferire fog non volumetrica o alternative locali economiche.
- Temporal reprojection del fog può produrre ghosting con luci o volumi mobili.
- Ogni effetto camera deve considerare motion sickness, leggibilità UI e fotografie/catture di validazione.

## Differences from our project

Level 0 possiede già `WorldEnvironment`, materiali calibrati, fluorescenti MultiMesh e otto luci reali shadowless in Sector 04. Il problema corrente non è “mancanza di VHS”: è coerenza di geometria, materiale e luce. La UI è già un `CanvasLayer`; un overlay post-process deve stare su un layer deliberato e non contaminare prompt/inventario per accidente.

## Godot 4.5 compatibility

Lo shader pubblico è dichiarato per Godot 4 ed è usato nel tutorial 4.5. Prima di qualsiasi adozione vanno ricontrollati sampler, risoluzione dinamica, stretch mode e comportamento Forward+/Compatibility. Non copiare il file intero: è CC0 secondo l'header, ma resta una soluzione esterna da riesaminare e attribuire correttamente nella documentazione tecnica.

## Multiplayer impact

Environment e post-process sono presentazione locale; non vanno sincronizzati frame per frame. Eventi atmosferici che influenzano gameplay o visibilità condivisa richiedono invece stato autorevole. Paura, glitch o distorsioni non devono mascherare una divergenza tra host e client.
