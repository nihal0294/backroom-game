# Decisioni

Le sezioni “Aperte” non autorizzano scelte arbitrarie.

## 2026-08-23 — Setup

- Cartelle iniziali: `assets/`, `scenes/`, `scripts/`, `resources/`, `shaders/`, `docs/`.
- `/docs` esclusa da Godot con `.gdignore`.
- GDScript, nessun C#; Forward+; **Godot 4.5 stable**.
- Git LFS per `*.blend`, `*.fbx`, `*.glb`, `*.psd`, `*.kra`, `*.wav`.
- `.godot/` e percorsi locali editor non tracciati.

## 2026-08-23 — Level 0 blockout

- Griglia 3 × 3 m, snap 1,5 m, soffitto 3 m.
- Design manuale/modulare; procedural generation non approvata.
- Kit `backrooms.blend` → `.glb`; atlas condiviso/UV preservate.
- Look fluorescente giallo-beige con tint separati.
- Player e test level sono prototipi di scala/navigazione, non architettura single-player da estendere.

## 2026-08-23 — Co-op come fondazione

- Prima cooperativa 1–4, poi gameplay/contenuti.
- Solo = sessione locale con un partecipante.
- Qualunque giocatore può hostare; listen-server host-authoritative iniziale.
- Ogni giocatore possiede più personaggi e ne porta uno con stato/progresso propri.
- Mondo condiviso: livello, entità, NPC, oggetti, loot, incontri, puzzle, eventi, uscite.
- Client inviano intenzioni; host valida/applica.
- Nessun microservizio/container/Kubernetes necessario al runtime peer-hosted iniziale.

## 2026-08-23 — Isolamento, convergenza e chat

- Stesso gruppo, non automaticamente visibili.
- Fuori rivelazione: niente visuale, collisione, interazione, audio spaziale o marker.
- Effetti sul mondo osservabili; chat testuale sempre disponibile.
- Regole variabili per livello/zona/oggetto/effetto.
- Red Room Level 0 = convergenza `interactive`, solo presenti, revoca all'uscita.
- Deroga deliberata alla wiki.

## 2026-08-23 — Lore/contenuti

- Fonte principale: Backrooms Wiki, priorità Levels/Entities/Objects.
- Richiesta e deroghe `/docs` prevalgono.
- Ogni contenuto: fonte, `content_id`, adozioni/deroghe, autorità, replica/persistenza.
- Entity non implica ostilità/combattimento; oggetti wiki non automaticamente approvati.
- Exit = condizione di transizione, non necessariamente porta.

## 2026-08-23 — Piattaforme e Steam

- Tutti i giochi, incluso questo, sono pensati primariamente per Steam.
- Steam Deck è un target previsto; cellulari un target eventuale.
- Usare lobby, inviti, matchmaking e networking Steam dove opportuno.
- Gameplay/sessione non devono dipendere direttamente da Steam.
- Session discovery, transport, identità e servizi piattaforma devono essere adapter sostituibili.
- Direct/LAN resta disponibile per sviluppo/fallback.
- Mobile richiederà provider non-Steam; cross-play è obiettivo possibile, non supporto già promesso.
- Non usare l'API Steam legacy `ISteamNetworking`; scegliere integrazione moderna durante il milestone Steam.

## 2026-08-23 — Ordine

Sessione Direct/LAN → personaggi/spawn/replica → isolamento/chat → Red Room → vertical slice Object/Entity/Puzzle/Exit → Steam → persistenza → eventuale mobile.

## Aperte

- integrazione Godot-Steam/MultiplayerPeer concreta;
- provider mobile, relay e cross-play;
- proprietà/formato/storage salvataggi e Steam Cloud;
- progresso personale vs host;
- host migration/riconnessione/late join;
- fiducia/anti-cheat dei personaggi client;
- transizioni e membri su livelli diversi;
- inventario/loot/statistiche/survival;
- voice chat;
- server dedicati/backend;
- tecnica livelli infiniti/mutevoli;
- primo Object, Entity ed Exit del vertical slice.
