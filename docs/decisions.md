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

## 2026-08-25 — Level 0 rifatto (solo geometria)

Il blockout kit 3×3 (occupancy-fill, ~57×48 m) è **fallito** come level design: open space, muri kit, scale senza pozzo, fluorescenti per cella.
Sostituito da:

- Blueprint: `docs/levels/level-0-blueprint.md` (trascrizione delle due piante).
- Generatore: `tools/generate_level_0_blockout.py` (grafo stanze+corridoi, BoxMesh 0.12 m).
- GF ~142×84 m, UF ~139×81 m, Y 0 / 3 / 6.
- Tre stairwell switchback (alzata 0.167 / pedata 0.28), foro UF, headroom ≥ 3.0 m sul percorso.
- Nessun materiale PBR, nessuna fluorescente, nessun prop. Placeholder + una DirectionalLight di debug.
- Vista ortografica F9/F10/F11.

## 2026-08-23 — Level 0 due piani

- Layout deterministico (niente procedural generation).
- **Superseded 2026-08-25** (vedi sopra). Storico: piano terra ~57×48 m, kit BackroomsLikeAsset2.
- Label delle mappe di reference non canoniche non sono contenuti di gioco.
Vedi `docs/levels/level-0-blueprint.md`.

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
