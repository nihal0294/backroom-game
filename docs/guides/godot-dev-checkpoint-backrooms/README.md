# Godot Dev Checkpoint — Backrooms Guide

## Purpose

Questa cartella è una reference tecnica esterna curata per Godot 4.5, gameplay in prima persona, costruzione di ambienti Backrooms-style, atmosfera, interazioni, porte/oggetti e AI/navigation. Non è una specifica di gioco, non è canone Backrooms e non autorizza l'importazione automatica di codice, asset o sistemi.

## Authority

Quando questa guida e il progetto differiscono, prevalgono sempre:

1. `AGENTS.md`;
2. la wiki locale per i fatti canonici;
3. la richiesta corrente e le decisioni in `docs/`;
4. l'architettura, le scene e il codice correnti;
5. questa guida esterna.

Ogni pattern va ricontrollato contro Godot 4.5 stable e contro l'architettura host-authoritative 1–4 giocatori. Il fatto che un tutorial sia realizzato con Godot 4.5 non rende automaticamente adatta al progetto la sua architettura.

## Source

Creator e canale: [Godot Dev Checkpoint (`@GodotDevCheckpoint`)](https://www.youtube.com/@GodotDevCheckpoint). Titoli e ordine sotto sono stati verificati dai metadata pubblici; le prime cinque righe costituiscono la serie principale dichiarata.

| Parte | ID | Titolo ufficiale | Tipo | Scheda | Valutazione principale |
| --- | --- | --- | --- | --- | --- |
| 1 | `zTe6u3H01zo` | [Godot 4.5 Tutorial: Horror FPS Controller & Head Bob (Backrooms Part 1)](https://www.youtube.com/watch?v=zTe6u3H01zo) | Serie principale | [01-player.md](01-player.md) | `ADAPT` solo per pattern locali; nessuna sostituzione del controller |
| 2 | `RgwKjQ5oBY0` | [Godot 4.5 Tutorial: Modular Level Design with GridMaps (Backrooms Part 2)](https://www.youtube.com/watch?v=RgwKjQ5oBY0) | Serie principale | [02-map.md](02-map.md) | `REFERENCE_ONLY` per la topologia corrente |
| 3 | `6y34Ir_7eX0` | [Godot 4.5 Tutorial: VHS Camcorder Shader & Atmosphere (Backrooms Part 3)](https://www.youtube.com/watch?v=6y34Ir_7eX0) | Serie principale | [03-atmosphere.md](03-atmosphere.md) | `ADAPT` per Environment; `DO_NOT_USE` automatico per VHS |
| 4 | `LcQNQeYmSPc` | [Godot 4.5 Tutorial: Interaction System & Physics Doors (Backrooms Part 4)](https://www.youtube.com/watch?v=LcQNQeYmSPc) | Serie principale | [04-interaction.md](04-interaction.md) | `REUSE` del sistema corrente, non del sistema tutorial |
| 5 | `d9IesA3hDn4` | [Godot 4.5 Tutorial: Nextbot AI & Enemy Pathfinding (Backrooms Part 5)](https://www.youtube.com/watch?v=d9IesA3hDn4) | Serie principale | [05-threat.md](05-threat.md) | `REFERENCE_ONLY`; nessuna entità implementata |
| Bonus | `3nA8hdRFLeY` | [How to Add "Press E to Interact" & Win Screens in Godot 4.5](https://www.youtube.com/watch?v=3nA8hdRFLeY) | Bonus della serie | [06-interaction-prompt-and-win.md](06-interaction-prompt-and-win.md) | `ADAPT` prompt; `DO_NOT_USE` vittoria non definita |
| Extra | `9UNLXwTxfQQ` | [Build a Godot 4.5 Dialogue System in Under 10 Minutes](https://www.youtube.com/watch?v=9UNLXwTxfQQ) | Tutorial autonomo | [07-dialogue.md](07-dialogue.md) | `REFERENCE_ONLY` |

## Classificazioni

- `REUSE`: il progetto possiede già una soluzione coerente; estenderla invece di crearne una parallela.
- `ADAPT`: il concetto è utile, ma API, responsabilità o prestazioni vanno adattate.
- `REFERENCE_ONLY`: materiale di studio, non una decisione di implementazione.
- `DO_NOT_USE`: in conflitto con vincoli, design o architettura correnti.

## Metodo e limiti

La verifica usa titoli, descrizioni e capitoli pubblicati dall'autore, il repository pubblico [Backrooms_Tutorial](https://github.com/spaghettiSyntax/Backrooms_Tutorial) e la documentazione ufficiale Godot 4.5. Non sono stati aggiunti al repository video, trascrizioni o codice del tutorial. Quando la fonte pubblica non conferma un nodo o un valore, la scheda lo dichiara invece di ricostruirlo per supposizione.

La matrice conclusiva è in [project-applicability.md](project-applicability.md).
