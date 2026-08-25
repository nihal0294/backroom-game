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

## Interpretazione

- **Decisione/contratto**: vincolo obbligatorio.
- **Target**: struttura prevista, non necessariamente già presente.
- **Proposta/aperto**: non implementare senza conferma.

Prima di modificare il progetto verificare sempre file, scene e script reali. I nomi target nei documenti non vanno trattati come file esistenti.

## Fonti

La fonte lore principale è la copia locale della Backrooms Wiki in [`wiki/backrooms-wiki-md/`](wiki/backrooms-wiki-md/index.md) (snapshot Markdown di https://backrooms-wiki.wikidot.com/). Pagine chiave: `level-0.md`, `normal-levels-i.md`, `entities.md`, `objects.md`.

Richieste correnti e deroghe nei file di progetto in `/docs` hanno priorità sulla wiki. Nessuna voce wiki entra automaticamente nel gioco.

`guide-godot/` contiene materiale didattico: non definisce il game design e non prevale su queste specifiche.
