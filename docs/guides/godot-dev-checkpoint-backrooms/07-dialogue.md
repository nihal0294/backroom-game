# 07 — Extra autonomo: sistema di dialogo

## Source

- Video: [Build a Godot 4.5 Dialogue System in Under 10 Minutes](https://www.youtube.com/watch?v=9UNLXwTxfQQ)
- ID: `9UNLXwTxfQQ`
- Canale: Godot Dev Checkpoint
- Collocazione: tutorial autonomo, non parte della serie Backrooms
- Versione dichiarata: Godot 4.5

## What the tutorial builds

Il tutorial crea una UI di dialogo riutilizzabile, organizza i controlli con anchor/container, applica uno stile, avanza tra battute memorizzate in array e gestisce l'input mentre il resto della scena è in pausa.

## Godot nodes/resources used

- `CanvasLayer` per la UI;
- nodi `Control`, container, pannello e label per il layout;
- script con sequenza di righe e indice corrente;
- input action per avanzare;
- `SceneTree.paused` e process mode della UI.

La gerarchia puntuale mostrata nel video non è presente nel repository Backrooms pubblico consultato. Sono documentati solo i componenti confermati da titolo, descrizione e capitoli; eventuali nomi specifici restano `UNKNOWN`.

## Important implementation techniques

Una funzione apre la UI e carica una sequenza; un indice seleziona la battuta; l'input avanza o chiude. La UI continua a processare durante la pausa grazie al proprio process mode.

## Useful code patterns

Mantenere separati contenuto, indice corrente e rendering UI; usare anchor/container per la risoluzione; instradare l'input attraverso lo stato UI già esistente. Nel progetto cooperativo, sostituire la pausa globale con un blocco locale esplicito del controllo.

## Project applicability

- principi di layout con anchor/container: `REFERENCE_ONLY`;
- componente dialogo futuro: `REFERENCE_ONLY`, finché contenuti e flusso non sono progettati;
- array hardcoded per dialoghi di produzione: `DO_NOT_USE`;
- pausa globale del `SceneTree` durante un dialogo: `DO_NOT_USE` nel multiplayer;
- blocco locale di movimento/input durante UI: `ADAPT` usando il flusso `is_busy_in_ui()` esistente;
- testo/lore derivato dal tutorial: `DO_NOT_USE`.

## Differences from our project

Esistono già HUD e inventario su `CanvasLayer`; non esiste un sistema dialoghi approvato. Se sarà richiesto, dovrà integrarsi con il sistema UI corrente, usare contenuti documentati e non creare un secondo coordinatore globale.

## Godot 4.5 compatibility

I nodi UI e i process mode sono correnti. La pausa del `SceneTree` ferma il processing dei nodi in base al loro process mode e influenza anche la fisica; è utile in un esempio single-player, ma non equivale a una pausa di sessione cooperativa.

## Multiplayer impact

Una conversazione puramente locale può bloccare solo input/camera del partecipante interessato. Trigger, scelta condivisa, ricompense o avanzamento narrativo devono avere autorità host. Gli altri partecipanti non devono essere congelati tramite pausa globale salvo una decisione esplicita di session design.
