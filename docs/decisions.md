# Decisioni

Le sezioni “Aperte” non autorizzano scelte arbitrarie.

## 2026-08-23 — Setup

- Cartelle iniziali: `assets/`, `scenes/`, `scripts/`, `resources/`, `shaders/`, `docs/`.
- `/docs` esclusa da Godot con `.gdignore`.
- GDScript, nessun C#; Forward+; **Godot 4.5 stable**.
- Git LFS per `*.blend`, `*.fbx`, `*.glb`, `*.psd`, `*.kra`, `*.wav`.
- `.godot/` e percorsi locali editor non tracciati.

## 2026-08-26 — Level 0 room-by-room

- L'authoring automatico a settori completi è abbandonato.
- `Sector001`, `Sector002`, chunk e risorse generate restano storico inattivo e non sono una base da riparare o rigenerare.
- La master map 71-days, il trace, scala/origine, annotazioni e audit restano fonti di riferimento.
- Main scene di sviluppo: `res://scenes/levels/level_0.tscn`, con contenitore `Rooms` inizialmente vuoto.
- Ogni milestone implementa una sola stanza/corridoio definito da crop esatto, con review geometrica, gameplay e visiva prima della stanza fisicamente adiacente.
- La golden room resta laboratorio non approvato; non autorizza materiali o impostazioni globali.
- Questa decisione supersede il workflow attivo di generazione Sector001/Sector002 descritto nella decisione 2026-08-25, ma non supersede la master map né il suo contratto metrico.

## 2026-08-23 — Level 0 blockout

- Griglia 3 × 3 m, snap 1,5 m, soffitto 3 m.
- Design manuale/modulare; procedural generation non approvata.
- Kit `backrooms.blend` → `.glb`; atlas condiviso/UV preservate.
- Look fluorescente giallo-beige con tint separati.
- Player e test level sono prototipi di scala/navigazione, non architettura single-player da estendere.

## 2026-08-25 — Level 0 master map 71-days

**La mappa a due piani (BR Movie + 17-days come piani separati) è DEPRECATA.** Occupancy-fill, kit 3×3, `add_maze` e i blueprint ASCII non sono più fonte di verità.

Nuovo blueprint geometrico autoritativo:

- Reference: `docs/reference/level-0/level-0-final-map.png` (*The currently mapped areas of the Backrooms — 71 days after arrival*, 3800×3700).
- Manifest: `docs/levels/level-0-final-manifest.md`
- Trace: `docs/levels/level-0-final-trace.json` (polilinee/occupancy dalla PNG, non stanze-rettangolo).
- Scala congelata: 0.173846 m/px, origin pixel (0,0) → world (0,0), snap 0.5 m.
- AABB stimata: 658.25 × 642.0 m.
- 3D in questo milestone: **solo** `sector_001` (cluster centrale 17-days). Non costruire Sector 2 senza approvazione.
- Generatore: `tools/trace_level_0_from_reference.py` + `tools/generate_level_0_from_trace.py`. Non è procedural generation.

## 2026-08-25 — Level 0 rifatto (solo geometria) — SUPERSEDED

Il tentativo a due piani (blueprint BR Movie + 17-days, BoxMesh GF/UF, stairwell) è **fallito** come level design rispetto alla master map unica. Conservato solo in Git.

## 2026-08-23 — Level 0 due piani — SUPERSEDED

Layout deterministico a due piani, griglia 3×3. Sostituito il 2026-08-25 (71-days).

## 2026-08-23 — Co-op come fondazione

- Prima cooperativa 1–4, poi gameplay/contenuti.
- Solo = sessione locale con un partecipante.
- Qualunque giocatore può hostare; listen-server host-authoritative iniziale.
- Ogni giocatore possiede più personaggi e ne porta uno con stato/progresso propri.
- Mondo condiviso: livello, entità, NPC, oggetti, loot, incontri, puzzle, eventi, uscite.
- Client inviano intenzioni; host valida/applica.
- Nessun microservizio/container/Kubernetes necessario al runtime peer-hosted iniziale.

## 2026-08-23 — Isolamento e percezione

- Stesso gruppo, stessa istanza di livello.
- Percezione reciproca: canone del livello, non una deroga di progetto.
- Level 0: Isolation Effect. Nessun incontro visivo/fisico nel livello ordinario.
- Red Rooms: pericolose, da evitare; **non** zona di convergenza.
- Manila Room: eccezione canonica di percezione/incontro; **non implementata**.
- Chat di sessione, se presente, è canale extra-diegetico, non comunicazione in-world nel Level 0.

## 2026-08-23 — Lore/contenuti

- Canone: dump locale `docs/wiki/backrooms-wiki-md/`, seguito alla lettera per i fatti Backrooms.
- Game design originale e `/docs` non possono contraddire quel canone.
- La wiki non è un backlog di implementazione: ogni contenuto richiede scheda/decisione.
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

Sessione Direct/LAN → personaggi/spawn/replica → isolamento/chat → Manila Room (canone, non ancora) → vertical slice Object/Entity/Puzzle/Exit → Steam → persistenza → eventuale mobile.

## 2026-08-23 — Player UI / survival prototipo

Controlli: WASD, Shift sprint, Space jump, F flashlight, Tab inventory, 1–5 quick use.
Stato personaggio: sanity, stamina, hunger, thirst, conditions, limb integrity, adaptation per Level.
UI: inventario full-screen che **non** pausa il mondo; HUD minimale/contestuale; 5 quick slot.
Flashlight: prototipo tecnico, non Object wiki.

Non definiti: rate/conseguenze fame-sete, cause/effetti sanity, malattie, fratture, bonus adaptation, capacità inventory definitiva.

## Aperte

- integrazione Godot-Steam/MultiplayerPeer concreta;
- provider mobile, relay e cross-play;
- proprietà/formato/storage salvataggi e Steam Cloud;
- progresso personale vs host;
- host migration/riconnessione/late join;
- fiducia/anti-cheat dei personaggi client;
- transizioni e membri su livelli diversi;
- rate/conseguenze fame-sete, sanity, malattie, fratture, bonus adaptation;
- capacità definitiva inventory/equipment e loot;
- voice chat;
- server dedicati/backend;
- tecnica livelli infiniti/mutevoli;
- primo Object, Entity ed Exit del vertical slice.
