# Architettura

Stato: target approvato; infrastruttura multiplayer non ancora implementata.

## Stack

- **Godot 4.5 stable**;
- GDScript;
- Forward+;
- API multiplayer high-level di Godot 4.5;
- VS Code e Git/GitHub.

`project.godot` dichiara `"4.5"`. Non aggiornare automaticamente né usare API successive.

## Principio network-first

Ogni sistema che modifica gameplay o stato condiviso nasce per 1–4 giocatori. Non è ammesso costruire una versione single-player autoritativa sul client da convertire in seguito.

Il solo crea lo stesso host locale, usa la stessa sessione/autorità e istanzia un partecipante. Evitare rami permanenti `single_player` che duplicano regole o simulazione.

## Topologia iniziale

Sessione **listen-server host-authoritative**:

- host = server + client locale;
- fino a tre client remoti;
- host proprietario della verità di sessione/mondo;
- client proprietario di input, camera e UI locali;
- simulazione indipendente da camera/UI dell'host, per non bloccare server dedicati futuri.

## Piattaforme e provider

La piattaforma commerciale primaria è Steam su PC e Steam Deck. L'integrazione Steam è un **adapter**, non il dominio del gioco.

Separare almeno:

- `SessionProvider`: crea/cerca/unisce lobby e inviti;
- `TransportProvider`: produce/configura il `MultiplayerPeer` usato da Godot;
- `PlatformIdentity`: mappa identità piattaforma a identità sessione senza sostituire `character_id`;
- servizi opzionali: achievement, cloud save, rich presence.

Provider target:

- **Steam**: lobby/matchmaking/inviti e networking moderno/relay quando disponibile;
- **Direct/LAN**: sviluppo, test e fallback senza Steam;
- **Mobile/cross-platform**: provider futuro compatibile con lo stesso contratto, da scegliere.

Il gameplay usa `MultiplayerAPI`, RPC e contratti comuni; non deve chiamare Steam direttamente. Non usare la vecchia API Steam `ISteamNetworking`, indicata come deprecata: valutare API moderne Steam Networking Sockets/Messages o un `MultiplayerPeer` Godot compatibile quando si implementa l'adapter.

Steam lobby discovery e trasporto sono responsabilità separate: trovare una lobby non deve modificare regole di simulazione. Il proprietario della lobby può essere candidato host, ma l'associazione va esplicita.

Non promettere cross-play Steam/mobile finché identità, discovery, relay e compatibilità build non sono scelti. L'astrazione deve renderlo possibile, non dichiararlo già supportato.

## Domini

### Sessione
Creazione/join, handshake, limite, roster, associazione peer-personaggio e chiusura. Nessuna regola specifica di livello.

### Personaggio persistente
Identità/progresso durevoli; non usa `peer_id`. Modello versionato, storage aperto.

### Personaggio runtime
Avatar temporaneo: movimento, stato, interazioni. Collega `character_id` stabile a `peer_id` effimero.

### Mondo di sessione
Livello, entità, NPC, oggetti, loot, puzzle, incontri, uscite e mutazioni. Autorità host.

### Contenuto
Definizioni e scene per Levels, Entities, Objects ed Exits. Non gestisce connessioni/salvataggi direttamente.

### Presentazione locale
Camera, input, HUD, menu, chat e audio locale. Non decide esiti autoritativi.

## Autorità

| Stato/azione | Autorità | Client |
| --- | --- | --- |
| Lobby discovery/inviti | provider piattaforma | richiede e presenta risultati |
| Connessione e roster | Host | richiede join, riceve snapshot |
| Peer/personaggio | Host dopo validazione | presenta personaggio |
| Input | Client proprietario | invia intenzioni |
| Stato runtime | Host | interpola/predice se previsto |
| Spawn/despawn | Host | replica |
| Entità/NPC | Host | presenta |
| Oggetti/loot/inventario runtime | Host | richiede pickup/uso/drop |
| Puzzle/incontri/uscite | Host | richiede interazione |
| Visibilità giocatori | Host per policy | applica |
| Chat | Host ordina/inoltra | invia/riceve |
| Camera/HUD/menu | Locale | esclusivamente locale |
| Salvataggio persistente | Aperto | non definito |

Il client invia intenzioni, mai risultati. L'host verifica distanza, stato, permessi e precondizioni, applica e replica.

## Identità

- `peer_id`: connessione effimera;
- `platform_user_id`: identità provider, non universale;
- `character_id`: personaggio stabile;
- `session_id`: partita;
- `level_instance_id`: livello nella sessione;
- `network_object_id`: istanza runtime;
- `content_id`: definizione stabile, es. `level:0`.

Non usare NodePath, nomi nodo, indici o posizioni come identità persistenti/network.

## Flusso

1. Selezione personaggio.
2. Provider crea/trova la sessione e stabilisce il trasporto.
3. Handshake di protocollo, build, contenuti e schema personaggio.
4. Host accetta/associa peer-personaggio.
5. Host invia manifest e snapshot.
6. Host sceglie spawn e crea avatar runtime.
7. Client invia richieste; host simula e replica.
8. Eventi affidabili aggiornano inventario, puzzle, chat, spawn e transizioni.

## Visibilità/rilevanza

Non basta nascondere la mesh. La policy controlla replica/presenza, rendering, collisione, interazione, audio e UI/posizione. La chat è separata. Vedi [`multiplayer.md`](multiplayer.md).

## Persistenza separata

Separare `CharacterSave`, `SessionSnapshot` e `RuntimeState`. Non serializzare nodi/scene interi: dati espliciti, versionati e migrabili. Proprietà, storage e conflitti sono aperti.

Steam Cloud, se usato, è uno storage adapter opzionale e non il formato del salvataggio; una build non-Steam deve poter usare lo stesso schema altrove.

## Contenuti

Levels, Entities, Objects ed Exits usano definizioni stabili più scene/comportamenti dedicati come in [`content-system.md`](content-system.md). Generalizzare solo da contenuti reali o dal vertical slice.

## Struttura target, non esistente

```text
scripts/
  multiplayer/   sessione, provider, transport, handshake, replica
  characters/    modello persistente e avatar runtime
  world/         stato condiviso, transizioni, interazioni
  content/       Resource e validazione
  ui/            lobby e chat
resources/{levels,entities,objects}/
scenes/{multiplayer,characters,levels,entities,objects}/
```

Creare solo durante il milestone relativo.

## Stato corrente

- `res://scenes/levels/level_0_test.tscn` come main scene;
- `res://scenes/player.tscn` con movimento, flashlight, CharacterStatus, InventoryRuntime e UI locale;
- Input Map in `project.godot`;
- inventario locale che non pausa lo SceneTree;
- nessuna lobby, rete, chat o persistenza;
- Level 0 manuale/modulare;
- nessun Object/Entity wiki implementato.

Player e blockout sono prototipi network-first: stato sul personaggio, UI locale, niente `Global.player`.

## Vincoli

- nessun microservizio/container/Kubernetes nel runtime Godot;
- nessun backend cloud richiesto per il vertical slice;
- nessun autoload senza responsabilità globale concreta;
- nessun dato client attendibile senza validazione host;
- nessuna API oltre Godot 4.5;
- UI navigabile con mouse/tastiera; focus pronto per controller/Steam Deck;
- nessuna logica gameplay condizionata direttamente da `Steam.is_running()` o equivalenti;
- l'inventario non usa `get_tree().paused`.

## Aperto

Adapter Steam concreto, provider mobile, cross-play, persistenza, host migration, late join definitivo, anti-cheat, transizioni, server dedicati, Manila Room. Vedi [`decisions.md`](decisions.md).
