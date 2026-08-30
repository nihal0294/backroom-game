# 06 — Bonus: prompt di interazione e schermata di vittoria

## Source

- Video: [How to Add "Press E to Interact" & Win Screens in Godot 4.5](https://www.youtube.com/watch?v=3nA8hdRFLeY)
- ID: `3nA8hdRFLeY`
- Canale: Godot Dev Checkpoint
- Collocazione: bonus collegato alla serie Backrooms, non “Parte 6” titolata
- Versione dichiarata: Godot 4.5

## What the tutorial builds

Il video estende il raycast con un prompt contestuale, distingue porta e nastro, conta il pickup richiesto e mostra una schermata di vittoria al raggiungimento della condizione.

## Godot nodes/resources used

- `RayCast3D` del giocatore;
- elementi `Control`/label per il prompt;
- variabili o proprietà esposte dagli oggetti interagibili;
- schermata UI di vittoria;
- contatore dell'oggetto raccolto.

Il repository pubblico della serie permette di verificare il pattern di interazione e il pickup, ma non offre una gerarchia completa e versionata di ogni nodo UI mostrato nel bonus. I dettagli non verificabili restano `UNKNOWN`, non vengono ricostruiti per supposizione.

## Important implementation techniques

Il target sotto il raycast espone informazioni sufficienti a scegliere il testo; l'interfaccia viene mostrata solo quando il bersaglio è valido. Il pickup incrementa uno stato e la condizione finale attiva una UI dedicata.

## Useful code patterns

Far derivare testo e visibilità del prompt dallo stesso target già risolto per `interact()`. Separare la presentazione locale del prompt dallo stato obiettivo: il primo può aggiornarsi per client, il secondo deve ricevere una conferma autorevole.

## Project applicability

- prompt contestuale che legge il target corrente: `ADAPT`;
- secondo raycast o interaction manager solo per il prompt: `DO_NOT_USE`;
- conteggio “1 tape = win”: `DO_NOT_USE`, perché non è game design del progetto;
- schermata di vittoria generica: `REFERENCE_ONLY`;
- proprietà descrittiva dell'interagibile: `ADAPT` se verrà definito un contratto UI minimo;
- stato obiettivo locale nel player: `DO_NOT_USE` per progressi condivisi.

## Differences from our project

Il player possiede già `InteractionRay`, inventario, HUD e un controllo `is_busy_in_ui()`. Un futuro prompt dovrebbe leggere lo stesso bersaglio risolto da `res://scripts/player.gd`, senza duplicare collision query o logica `interact()`. Le porte correnti potrebbero fornire un testo in base a stato/possibilità, ma questa API non è ancora definita.

## Godot 4.5 compatibility

Canvas UI, input actions e raycast sono compatibili. La visibilità del prompt è presentazione locale; la condizione di completamento è invece stato di gameplay e va modellata separatamente.

## Multiplayer impact

Ogni client può mostrare localmente il prompt del proprio mirino. Raccolta, conteggio e completamento devono essere confermati dall'host e sincronizzati. Una UI finale può reagire allo stato condiviso, ma non determinarlo.
