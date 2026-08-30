# 02 — Map: moduli, MeshLibrary e GridMap

## Source

- Titolo: [Godot 4.5 Tutorial: Modular Level Design with GridMaps (Backrooms Part 2)](https://www.youtube.com/watch?v=RgwKjQ5oBY0)
- ID: `RgwKjQ5oBY0`
- Parte: 2 di 5 della serie Backrooms
- Versione dichiarata: Godot 4.5
- Riferimenti ufficiali: [GridMap](https://docs.godotengine.org/en/4.5/classes/class_gridmap.html), [MeshLibrary](https://docs.godotengine.org/en/4.5/classes/class_meshlibrary.html)

## What the tutorial builds

Una palette di mesh riutilizzabili, esportata come `mesh_palette.tres`, e uno o più `GridMap` usati per dipingere pareti, pavimento e soffitto. La fase finale aggiunge luci e audio ambientale.

## Godot nodes/resources used

- scena palette con moduli `MeshInstance3D`;
- collisioni statiche associate ai moduli;
- risorsa `MeshLibrary` (`.tres`);
- uno o più `GridMap`, separabili per pareti, pavimento e soffitto;
- mesh/materiali modulari;
- luci e riproduzione del ronzio fluorescente.

Godot 4.5 definisce ogni cella `GridMap` con dimensioni uniformi e un riferimento a un item della `MeshLibrary`; ogni item può includere mesh, collisione e navigation shape. Internamente il `GridMap` raggruppa celle in octant.

## Important implementation techniques

Anche senza adottare `GridMap`, questi controlli sono riutilizzabili per produrre kit puliti:

- unità in metri, scala `1,1,1`, assi e front face coerenti;
- pivot su un punto di aggancio stabile, non al centro casuale del modello;
- modulo base e snapping dichiarati una volta sola;
- lunghezze che sono multipli esatti del modulo, senza correzioni visive a mano;
- spessore parete costante e massa verso il lato non calpestabile;
- mesh distinte per parete dritta, angolo interno, angolo esterno, T, incrocio ed end cap;
- modulo porta con apertura reale, reveal/end cap e nessuna superficie dietro l'anta;
- pavimento e soffitto senza facce coplanari duplicate;
- tile del controsoffitto e fixture con pivot/orientamento compatibili;
- collisioni semplici e aderenti al passaggio visibile;
- materiali tileable; nessun atlas con illuminazione baked ripetuto su moduli generici;
- test di seam, winding, normali, UV, angoli e attraversabilità prima di creare una libreria.

## Useful code patterns

Il valore trasferibile non è un algoritmo GridMap, ma una pipeline di dati: definire dimensione, pivot, lato calpestabile, collisione e varianti di ogni modulo; validare ogni pezzo in una scena isolata; solo dopo comporlo. Per il builder corrente, apertura e corner devono derivare dagli stessi segmenti/topologia usati da mesh e collisione, invece di essere pannelli correttivi sovrapposti.

## Project applicability

- `GridMap` come topologia di Level 0: `DO_NOT_USE` per l'implementazione corrente.
- `MeshLibrary` come sostituzione del builder: `DO_NOT_USE`.
- disciplina di kit modulare, pivot e snapping: `ADAPT` per futuri asset, porte e props.
- painting rapido in una scena prototipo isolata: `REFERENCE_ONLY`, purché non diventi la source of truth.

## Differences from our project

La topologia corrente deriva dalle mappe in `assets/level_0/maps/`, mantiene coordinate continue e viene costruita deterministicamente da union di poligoni, pareti esplicite e `ArrayMesh` aggregate. Un `GridMap` imporrebbe celle uniformi, rotazioni ortogonali discrete e collisioni per item; il corridoio obliquo E-C01, le misure esatte, gli opening e l'aggregazione corrente richiederebbero una seconda rappresentazione della stessa mappa.

Il pattern da conservare è:

```text
mappe autorevoli → forme/partizioni manuali → union → mesh aggregate + collisioni aggregate
```

Non:

```text
mappe autorevoli → ridisegno a celle GridMap
```

## Godot 4.5 compatibility

`GridMap` e `MeshLibrary` sono disponibili. Il `GridMap` è uno static body, usa octant e può produrre mesh baked; ciò non annulla il costo o la necessità di validare collisioni e navigation. La possibilità tecnica non è una decisione progettuale.

## Multiplayer impact

La geometria statica può essere identica su tutti i peer e non richiede RPC per cella. Qualsiasi editor runtime o modifica dinamica di celle diventerebbe stato condiviso autorevole; il progetto non prevede oggi un level editor runtime né generazione procedurale.
