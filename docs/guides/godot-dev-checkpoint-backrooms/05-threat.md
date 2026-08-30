# 05 — Threat: navigazione, inseguimento e jumpscare

## Source

- Video: [Godot 4.5 Tutorial: Nextbot AI & Enemy Pathfinding (Backrooms Part 5)](https://www.youtube.com/watch?v=d9IesA3hDn4)
- ID: `d9IesA3hDn4`
- Canale: Godot Dev Checkpoint
- Parte: 5 della serie principale
- Versione dichiarata: Godot 4.5
- Codice pubblico consultato: `enemy.gd` del repository `spaghettiSyntax/Backrooms_Tutorial`.

## What the tutorial builds

Il tutorial prepara una regione navigabile, crea un inseguitore basato su `NavigationAgent3D`, individua il giocatore tramite gruppo, aggiorna il percorso, applica una distanza di aggressione e innesca glitch, teleport/flicker, jumpscare e game over.

Questa scheda descrive la tecnica. Non approva una creatura, un “nextbot”, un comportamento ostile o un jumpscare per il game design corrente.

## Godot nodes/resources used

- `NavigationRegion3D` e `NavigationMesh` per il bake;
- `CharacterBody3D` per il soggetto mobile;
- `NavigationAgent3D` per il path following;
- mesh/immagine dell'inseguitore;
- `AudioStreamPlayer3D`;
- gruppo del giocatore per acquisire il target;
- UI/effetti per glitch, jumpscare e game over.

## Important implementation techniques

Il codice pubblico assegna la posizione del giocatore come target, legge il prossimo punto del percorso nel physics tick e muove il corpo verso di esso. Usa soglie di distanza per attivazione e cattura; alcuni effetti manipolano direttamente la scena e infine la ricaricano.

Per Godot 4.5, dopo aver impostato una destinazione, `get_next_path_position()` va interrogato nel ciclo fisico per aggiornare la logica interna dell'agente. Va evitata la chiamata ripetuta da callback che possano innescare aggiornamenti ricorsivi.

## Useful code patterns

Separare percezione, selezione del target, richiesta di percorso, locomozione e conseguenza della cattura. Il breve script tutorial li concentra nello stesso nodo; una futura implementazione approvata dovrebbe mantenere aggiornamento del percorso nel physics tick e trasformare gli esiti di gameplay in comandi autoritativi, senza copiare il reload della scena.

## Project applicability

- studio di `NavigationRegion3D`/`NavigationAgent3D`: `REFERENCE_ONLY`;
- modello nextbot con inseguimento incessante: `DO_NOT_USE` senza scheda di game design e verifica canonica;
- aggiunta di un nemico a Sector 04: `DO_NOT_USE` in questo milestone;
- bake della navigazione sulla mappa aggregata: `REFERENCE_ONLY`, richiede una decisione separata;
- audio spaziale e feedback locali: `ADAPT` solo per una minaccia già approvata;
- ricaricare direttamente la scena alla cattura: `DO_NOT_USE` nel flusso cooperativo;
- teleport/flicker/jumpscare del tutorial: `REFERENCE_ONLY`, non stile predefinito del progetto.

## Differences from our project

Il progetto non definisce ancora in questi file una creatura per Level 0, una threat loop o una pipeline di navigazione. La geometria corrente è costruita da trace/topologia e mesh aggregate, non da GridMap; un eventuale bake deve quindi essere provato sui veri pavimenti, aperture e collisioni. Le porte dinamiche richiederebbero inoltre una strategia esplicita per ostacoli, link o ricalcolo.

Secondo `AGENTS.md`, una creatura non è automaticamente un nemico combattibile. Canone, scheda contenuto e game design precedono qualsiasi scelta di AI.

## Godot 4.5 compatibility

I nodi di navigazione usati sono correnti. Il bake, le mappe di navigazione e l'avoidance hanno costi e cicli di aggiornamento distinti: non vanno dedotti dal breve esempio. Prima di integrarli servono test su passaggi stretti, porte, settori caricati e agent radius coerente con il player.

## Multiplayer impact

La logica del tutorial è single-player. In cooperativa l'host dovrebbe possedere target selection, percorso, trasformazione autoritativa, cattura/danno e transizioni di stato. I client possono riprodurre animazioni, audio ed effetti confermati. Cercare localmente “il player” come unico nodo o ricaricare la scena dal client non è compatibile con sessioni 1–4 giocatori.
