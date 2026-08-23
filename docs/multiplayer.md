# Contratto multiplayer 1–4

Specifica risultati osservabili e autorità, non nomi definitivi di classi/RPC.

## Invarianti

1. Ogni partita è host-authoritative, anche con un giocatore.
2. Una sessione contiene 1–4 personaggi, uno per peer.
3. Tutti condividono la stessa istanza del livello.
4. Essere nello stesso gruppo non implica essere visibili/interagibili.
5. La chat testuale funziona indipendentemente dalla visibilità spaziale.
6. Solo l'host modifica stato autoritativo.
7. Ogni livello può avere policy diverse di incontro, spawn e transizione.
8. Matchmaking/transport sono sostituibili senza cambiare gameplay e protocollo applicativo.

## Stati sessione

```text
Offline -> Personaggio -> Hosting/Connessione -> Handshake
        -> Caricamento -> Snapshot -> Spawn -> In gioco
        -> Transizione -> In gioco / Chiusura
```

Il client entra in gioco solo dopo compatibilità di protocollo/build/contenuti, accettazione personaggio, caricamento, snapshot e conferma spawn. Gli errori mostrano un motivo e non lasciano avatar orfani.

## Provider e Steam

### Steam PC/Steam Deck

Target principale:

- Steam Lobbies per creazione, ricerca, metadata, join e inviti;
- lobby owner come candidato host della listen-server;
- networking Steam moderno/relay per connessioni internet quando l'adapter scelto lo supporta;
- rich presence, achievement e cloud save solo come servizi opzionali separati.

La lobby coordina il gruppo ma non è il mondo autoritativo. Chat di lobby/pre-partita e chat in-game sono concetti distinti.

### Fallback e mobile

- Direct/LAN deve permettere sviluppo e test senza Steam.
- Un provider futuro deve coprire mobile e, se approvato, cross-play.
- Tutti i provider consegnano alla sessione un peer/collegamento con lo stesso contratto.
- Identità Steam non sostituisce `character_id` e non appare nelle regole dei livelli.
- Il fallimento/assenza di Steam deve produrre fallback o errore UI chiaro, non crash.

La selezione della libreria Godot-Steam o del `MultiplayerPeer` concreto richiede una decisione tecnica futura e verifica di compatibilità con Godot 4.5, export Linux/Steam Deck e licenze.

## Hosting e join

L'host seleziona un personaggio, crea sessione/lobby con limite quattro e carica il mondo prima degli spawn. Il solo usa questo stesso flusso senza pubblicizzare la lobby.

Il join presenta almeno versione protocollo/build, manifest contenuti e schema/ID personaggio. L'host può rifiutare sessione piena, incompatibilità, personaggio invalido o stato non joinabile.

Late join durante gameplay è aperto; l'architettura non deve impedirlo.

## Spawn Level 0

1. Host raccoglie spawn validi.
2. Esclude punti occupati, bloccati o non sicuri secondo regole disponibili.
3. Sceglie casualmente lato host.
4. Evita sovrapposizioni.
5. Crea avatar con authority host e ownership input corretta.
6. Conferma al proprietario.

Il seed deve poter essere fissato nei test. Distanza minima è bilanciamento aperto.

## Mondo condiviso

- Un oggetto raccolto scompare per tutti, salvo contenuto personale esplicito.
- Un puzzle modificato ha un unico stato.
- Un'entità non viene clonata per giocatore.
- Incontri e mutazioni producono conseguenze condivise.
- Porte/anomalie conservano lo stesso stato.

## Isolation Effect

Fuori da una rivelazione valida, per ogni coppia A/B:

- A non vede/renderizza B;
- A non collide/interagisce con B;
- A non sente audio spaziale di B;
- A non riceve marker, distanza o direzione di B;
- azioni di B sul mondo restano reali;
- A e B possono usare la chat di gruppo.

Minimizzare la trasmissione di dati irrilevanti: non basta `visible = false`.

## Policy di rivelazione

### Zona di convergenza
Rivela solo chi occupa contemporaneamente la stessa zona compatibile. Host aggiorna coppie in modo simmetrico. La Red Room è la prima zona confermata.

### Oggetto/effetto
Può rivelare per durata, portatore, bersaglio, area o gruppo; l'ambito va dichiarato dalla scheda.

### Evento
Puzzle/incontri/anomalie possono modificare temporaneamente la policy; decide l'host.

### Revoca
Al termine, revocare replica/presenza, rendering, collisione, interazione, audio e UI. Non annullare effetti già prodotti sul mondo.

Stati supportabili: `hidden`, `visible_only`, `interactive`. Level 0 Red Room usa `interactive`.

## Chat

- Canale iniziale: gruppo/sessione.
- Client invia testo; host valida lunghezza/frequenza, assegna ordine e inoltra.
- Mostra personaggio mittente e testo, non coordinate.
- Testo non validato non controlla BBCode/comandi.
- Persistenza, moderazione, whisper e canali locali sono aperti.

## Richieste e replica

Separare input frequente, richieste discrete (pickup/uso/drop/interazione/ready), eventi affidabili (spawn, inventario, puzzle, chat, livello) e snapshot.

L'host ricava identità dal mittente: non accetta un `peer_id` arbitrario dichiarato dal client.

## Disconnessioni

Rimuovere/sospendere deterministicamente avatar, revocare visibilità/ownership, liberare associazioni, notificare il gruppo e impedire perdita/duplicazione oggetti.

Riconnessione e host migration sono aperte. Inizialmente la chiusura host può terminare pulitamente la sessione.

## Cambio livello

L'uscita propone una transizione all'host e dichiara destinazione/ingresso, precondizioni, partecipanti, esclusi, costi e stato preservato.

Politiche configurabili: solo attivatore, presenti in zona, tutti gli idonei, gruppo intero. Non codificare “porta = cambio scena”.

## Criteri di accettazione

Prima di gameplay esteso dimostrare:

- host con 1 e 2–4 giocatori;
- provider Direct/LAN funzionante senza Steam;
- seam/adattatore Steam sostituibile, anche se implementato in milestone successivo;
- personaggi distinti e spawn casuali non sovrapposti nel medesimo Level 0;
- movimento autorizzato/replicato;
- avatar davvero irrilevanti fuori convergenza;
- chat;
- Red Room con reveal/revoca corretti;
- un oggetto condiviso senza duplicazione;
- una entità simulata dall'host;
- un'uscita non-porta;
- disconnessione pulita.
