# Documentazione di progetto

Questa cartella è la fonte di verità di `backroom-game`, dopo la richiesta corrente dello sviluppatore. Le regole operative per gli assistenti sono in [`../AGENTS.md`](../AGENTS.md). Godot ignora questa cartella grazie a `.gdignore`.

## Ordine di lettura per Codex

1. [`decisions.md`](decisions.md) — decisioni approvate e questioni aperte.
2. [`game-design.md`](game-design.md) — esperienza e regole confermate.
3. [`architecture.md`](architecture.md) — confini dei sistemi e autorità runtime.
4. [`multiplayer.md`](multiplayer.md) — contratto cooperativo 1–4 e piattaforme.
5. [`content-system.md`](content-system.md) — modello per Levels, Entities, Objects ed Exits.
6. [`lore.md`](lore.md) — canone Backrooms adottato e deroghe.
7. [`development-plan.md`](development-plan.md) — ordine di implementazione e test.
8. [`levels/level-0-rooms.md`](levels/level-0-rooms.md) — workflow attivo room-by-room, convenzione scene, manifest stanze e classificazione del vecchio tooling.
9. [`levels/level-0-final-manifest.md`](levels/level-0-final-manifest.md) — master map 71-days, trace e storico del tentativo generato a settori.

## Interpretazione

- **Decisione/contratto**: vincolo obbligatorio.
- **Target**: struttura prevista, non necessariamente già presente.
- **Proposta/aperto**: non implementare senza conferma.

Prima di modificare il progetto verificare sempre file, scene e script reali. I nomi target nei documenti non vanno trattati come file esistenti.

## Fonti

**Canone Backrooms:** dump locale [`wiki/backrooms-wiki-md/`](wiki/backrooms-wiki-md/index.md). Autoritative per Levels, Entities, Objects, Phenomena, Rooms, Groups, Tales, entrate/uscite, pericoli, habitat e ambienti. Pagine chiave: `level-0.md`, `manila-room.md`, `red-rooms.md`, `normal-levels-i.md`, `entities.md`, `objects.md`.

**Game design originale:** richieste dello sviluppatore e i file di progetto in `/docs`, purché non contraddicano il canone.

**Implementazione tecnica:** `architecture.md`, `multiplayer.md`, codice, Godot 4.5.

Nessuna voce wiki entra automaticamente nel gioco: serve scheda/decisione. Non usare Fandom, Kane Pixels o altre wiki per il canone.

`guide-godot/` è materiale didattico: non definisce il game design e non prevale su queste specifiche.
