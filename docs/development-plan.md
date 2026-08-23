# Piano di sviluppo network-first

Costruire prima una fondazione cooperativa giocabile, poi ampliare il gioco. Non sviluppare sistemi estesi single-player da convertire dopo.

## Milestone 0 — allineamento

- Godot 4.5 stable;
- co-op 1–4 e host authority;
- mondo condiviso, isolamento/convergenza;
- modelli Levels/Entities/Objects/Exits;
- provider di piattaforma separati dal gameplay;
- questioni aperte registrate.

## Milestone 1 — sessione minima Direct/LAN

- Host/Join;
- listen-server massimo quattro;
- handshake protocollo/build;
- roster e cleanup;
- solo via host locale;
- istanze multiple locali;
- adapter `SessionProvider`/`TransportProvider`, con implementazione Direct/LAN iniziale.

Niente matchmaking pubblico, account, relay o server dedicato in questa fase.

## Milestone 2 — personaggi runtime e Level 0

- `character_id` separato da `peer_id`;
- ownership input;
- spawn host-authoritative casuale/non sovrapposto;
- movimento/stato replicati;
- camera/input solo locali;
- disconnessione senza orfani.

Usare payload persistente temporaneo versionato, non consolidare il salvataggio definitivo.

## Milestone 3 — isolamento e chat

- avatar remoti irrilevanti fuori convergenza;
- nessuna collisione/interazione/audio/marker;
- chat host-relayed;
- diagnostica senza leak nell'UI;
- test 2/3/4 giocatori.

## Milestone 4 — Red Room

- volume/section autoritativo;
- ingressi/uscite calcolati dall'host;
- visibilità simmetrica solo tra presenti;
- policy `interactive`;
- revoca completa;
- test simultanei/rapidi.

## Milestone 5 — vertical slice condiviso

- un Object con pickup concorrente senza duplicazione;
- una Entity semplice simulata dall'host;
- un puzzle/interazione condiviso;
- una Exit non-porta;
- snapshot coerente;
- test con latenza/perdita simulata se possibile.

Contenuti con scheda lore/`content_id`; non scegliere automaticamente Almond Water o Entity senza approvazione.

## Milestone 6 — Steam PC/Deck

- scegliere integrazione compatibile con Godot 4.5 e Linux/Steam Deck;
- Steam Lobbies: create/search/join/invite e metadata build/protocollo;
- associare lobby owner e host senza accoppiare gameplay;
- transport moderno Steam/relay tramite adapter;
- fallback chiaro quando Steam non è disponibile;
- input controller completo e UI leggibile su Deck;
- test Windows + Linux/SteamOS;
- non rompere Direct/LAN.

Non usare l'API legacy `ISteamNetworking`. Verificare documentazione ufficiale corrente al momento dell'implementazione.

## Milestone 7 — persistenza personaggi

Bloccato finché non sono decisi proprietà/storage, progresso reale, inventario/sessione, validazione, crash/conflitti e migrazioni. Steam Cloud potrà essere adapter opzionale, non formato proprietario.

## Milestone 8 — mobile/cross-platform

Bloccato finché non sono decisi provider sessione/relay/identità e scope cross-play.

- UI touch/responsive e input astratto;
- budget performance/memoria/termico;
- permessi rete/export;
- salvataggio alternativo a Steam Cloud;
- compatibilità protocollo/contenuti;
- nessuna dipendenza runtime obbligatoria da Steam.

## Espansione

Dopo milestone 1–5: ampliare Level 0, scegliere contenuti reali, introdurre Level 1 e nuovi livelli. Backend/server dedicati solo per requisiti concreti.

## Matrice minima test

| Caso | Verifica |
| --- | --- |
| 1 giocatore | stesso flusso host |
| 2 giocatori | ownership/replica/isolamento/convergenza |
| 4 giocatori | limite, coppie visibili, concorrenza |
| join rifiutato | incompatibilità/pieno senza residui |
| disconnect client | cleanup e consistenza |
| chiusura host | termine pulito |
| pickup simultaneo | una assegnazione |
| Red Room parziale | vede solo presenti |
| revoca Red Room | nessun dato/collisione/audio residuo |
| uscita | precondizioni/partecipanti host-authoritative |
| Steam assente | Direct/LAN/fallback senza crash |
| Steam Deck | controller/UI/performance |

## Definition of Done condivisa

Autorità dichiarata, richieste validate, snapshot/replica, cleanup, nessun ramo single-player, test 1/2/4, isolamento verificato, persistenza separata, documentazione aggiornata e commit limitato.
