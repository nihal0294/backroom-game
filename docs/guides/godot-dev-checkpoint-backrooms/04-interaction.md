# 04 — Interaction system e porte fisiche

## Source

- Video: [Godot 4.5 Tutorial: Interaction System & Physics Doors (Backrooms Part 4)](https://www.youtube.com/watch?v=LcQNQeYmSPc)
- ID: `LcQNQeYmSPc`
- Canale: Godot Dev Checkpoint
- Parte: 4 della serie principale
- Versione dichiarata: Godot 4.5
- Codice pubblico consultato: `player.gd`, `door.gd` e `tape.gd` del repository `spaghettiSyntax/Backrooms_Tutorial`.

## What the tutorial builds

Il tutorial aggiunge un'interazione frontale tramite raycast, un contratto informale `interact()`, una porta incernierata animata e un oggetto raccoglibile. La porta occupa una vera apertura architettonica: anta, collisione e rotazione condividono il medesimo pivot.

## Godot nodes/resources used

- `CharacterBody3D` del giocatore;
- `Camera3D` con `RayCast3D` di interazione;
- corpo interagibile con metodo `interact()`;
- `Node3D` usato come cerniera;
- corpo statico/mesh/collisione dell'anta come figli della cerniera;
- tween della rotazione Y tra chiuso e circa 90 gradi;
- oggetto raccoglibile che reagisce e viene rimosso.

La descrizione del video cita una classe padre “Interactable”; nel codice pubblico consultato il giocatore usa soprattutto duck typing con `has_method("interact")`. La gerarchia esatta mostrata in ogni fotogramma del video non è trattata come dato certo quando non è verificabile nel progetto pubblico.

## Important implementation techniques

1. il raycast parte dalla visuale, non dal centro fisico del capsule collider;
2. all'input di interazione si legge il collider corrente;
3. se l'oggetto espone il contratto previsto, viene invocata l'interazione;
4. la porta ruota il nodo cerniera, così mesh e collisione restano solidali;
5. uno stato booleano distingue apertura e chiusura;
6. un tween breve evita il cambio istantaneo.

Il pattern è valido come introduzione, ma non gestisce concorrenza, autorità di rete, blocco durante l'animazione, scelta del lato di apertura o risalita robusta dalla shape colpita al proprietario logico.

## Useful code patterns

Il pattern minimo è: aggiornare il raycast all'input, ottenere il collider, risalire al proprietario interagibile e invocare un solo contratto. Per una porta, tutte le parti mobili restano figlie della cerniera; uno stato impedisce richieste sovrapposte e la direzione può essere ricavata dal prodotto scalare tra lato dell'anta e posizione dell'interactor. Il progetto applica già questa variante più robusta.

## Differences from our project

Il progetto possiede già una soluzione più completa:

- `res://scenes/player.tscn` contiene `InteractionRay` sotto la camera;
- `res://scripts/player.gd` forza l'aggiornamento del raycast quando serve, risale i parent e passa il giocatore come `interactor`;
- `res://scenes/props/level_0/push_door.tscn` separa cerniera, `AnimatableBody3D`, mesh e collisione;
- `res://scripts/props/level_0/push_door.gd` sceglie il verso in base al lato del giocatore, impedisce sovrapposizioni di animazione e usa 95 gradi;
- Sector 04 e il door test costruiscono un'apertura reale, non una parete nascosta dietro l'anta;
- la collisione segue già l'anta durante tutto il movimento.

## Project applicability

- sistema `InteractionRay` corrente: `REUSE`;
- contratto corrente `interact(interactor)`: `REUSE`;
- porta corrente con cerniera e collisione mobile: `REUSE`;
- nuova classe padre o nuovo interaction manager parallelo: `DO_NOT_USE`;
- suggerimento contestuale “Premi E”: `ADAPT` in futuro sopra il target già rilevato;
- pickup che chiama direttamente `queue_free()`: `DO_NOT_USE` per oggetti condivisi senza autorità host;
- tween di una cerniera come principio locale: `REUSE`, già applicato con maggiori garanzie.

## Regole tecniche per le porte del progetto

- l'apertura nella geometria e nella collisione del muro deve essere reale;
- il telaio deve avere montanti, traverso e profondità leggibile, senza texture atlas ripetute arbitrariamente;
- pivot, anta e collisione devono usare la stessa cerniera;
- il passaggio chiuso non deve avere collisioni invisibili aggiuntive;
- l'anta aperta non deve chiudere accidentalmente un corridoio previsto come percorribile;
- soglia, battiscopa e telaio devono terminare in modo coerente all'apertura;
- l'interazione deve restare sul sistema esistente e non duplicare il raycast.

## Godot 4.5 compatibility

`RayCast3D`, `Tween`, `AnimatableBody3D` e il pattern di rotazione di un `Node3D` sono compatibili. Il risultato di `RayCast3D` è aggiornato per frame fisico; quando serve una lettura immediata dopo un cambio, il progetto usa correttamente `force_raycast_update()`.

## Multiplayer impact

Il tutorial è single-player. Nel progetto cooperativo l'input locale può proporre `request_toggle`, ma lo stato condiviso della porta deve diventare host-authoritative quando il networking viene collegato. L'host convalida distanza, stato e disponibilità; i client ricevono stato/trasformazione. Pickup, consumo e rimozione non devono essere decisi autonomamente da ogni client.
