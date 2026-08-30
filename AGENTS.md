# AGENTS.md — PROJECT DEVELOPMENT RULES

## 1. Progetto

Questo repository contiene un gioco sviluppato con:

- **Godot 4.5 stable**
- **GDScript**
- renderer **Forward+**
- VS Code
- Git / GitHub / GitHub Desktop

Il gioco è un **survival 3D in prima persona** ambientato in un mondo liminale ispirato alle Backrooms.

Pilastri generali:

- esplorazione;
- sopravvivenza;
- ambienti liminali e labirintici;
- creature;
- horror e tensione;
- puzzle e sfide logiche;
- obiettivi da completare;
- elementi GDR;
- cooperativa/multiplayer.

Questi sono indirizzi generali, non sistemi già definiti.

Non assumere automaticamente l'esistenza di fame, sete, sanità mentale, crafting, stamina, inventario, skill tree, combattimento, generazione procedurale o altre meccaniche se non sono documentate.

---

## 2. Fonte di verità

Prima di modificare sistemi importanti consulta `/docs` e, per i fatti canonici, la wiki locale.

Distinguere tre piani:

**A) Canone Backrooms** — autoritativo: dump locale `docs/wiki/backrooms-wiki-md/`.
Vale per Levels, Entities, Objects, Phenomena, Rooms, Groups, Tales, entrate/uscite, pericoli, habitat e caratteristiche ambientali.
Una richiesta di gameplay **non** può riscrivere un fatto canonico. Se la richiesta contraddice la wiki, seguire la wiki e segnalare il conflitto.
Non usare Fandom, altre wiki, Kane Pixels, altri giochi Backrooms o ricordi generici per integrare il canone.

**B) Game design originale** — richieste dello sviluppatore e `/docs`, purché non contraddicano il canone.
Meccaniche, UI, sessioni, networking e astrazioni tecniche stanno qui.

**C) Implementazione tecnica** — `/docs` (architecture/multiplayer), codice e scene esistenti, Godot 4.5.

Ordine operativo:

1. fatti canonici: pagina wiki locale pertinente;
2. richiesta corrente, se non riscrive il canone;
3. documentazione di progetto (`decisions.md`, `game-design.md`, `architecture.md`, `multiplayer.md`, `content-system.md`, `lore.md`, `development-plan.md`);
4. codice e scene esistenti;
5. convenzioni già presenti;
6. documentazione ufficiale Godot 4.5;
7. proposta dell'assistente.

Non inventare informazioni mancanti.

Se qualcosa non è definito, dichiaralo e presenta l'eventuale soluzione come **proposta**, non come comportamento già deciso.

Se due documenti di progetto sono in conflitto, segnala il conflitto invece di scegliere arbitrariamente.

### Wiki locale

Copia offline della [Backrooms Wiki](https://backrooms-wiki.wikidot.com/), snapshot in Markdown:

- indice: `docs/wiki/backrooms-wiki-md/index.md`
- pagina: `docs/wiki/backrooms-wiki-md/<slug>.md`
- slug = path Wikidot (`https://backrooms-wiki.wikidot.com/level-0` → `level-0.md`)
- indici utili: `normal-levels-i.md`, `entities.md`, `objects.md`
- script di download: `docs/wiki/download_backrooms_wiki.py`

Quando serve una voce specifica, leggi quella pagina del dump. Non usare ricordi generici, Fandom u/altre wiki.

I file `archived__*` sono revisioni storiche: preferisci la pagina corrente con lo slug normale.

Il dump è un archivio di riferimento, non un catalogo di feature da implementare. Nessun Level, Entity, Object, Tale o immagine entra nel gioco solo perché esiste nella wiki: serve una scheda/decisione in `/docs` conforme a `content-system.md`.

Le immagini nelle pagine possono essere link remote Wikidot. Se esiste un file locale accanto alla pagina, usalo; altrimenti il Markdown resta la fonte testuale. Non scaricare automaticamente l'intera gallery.

### Guide tecniche esterne curate

I documenti in `docs/guides/` sono riferimenti tecnici esterni selezionati e commentati. Non sono canone, game design o autorità architetturale, e non autorizzano automaticamente feature. Prima di applicarli, verificarli contro Godot 4.5, la documentazione corrente, il codice e le scene del progetto.

---

## 3. Non progettare sistemi a caso

Il progetto è in sviluppo progressivo.

Prima di creare qualcosa verifica se esiste già:

- uno script;
- una scena;
- una classe;
- una Resource;
- un autoload;
- un componente;
- una convenzione equivalente.

Non introdurre senza necessità:

- nuovi manager globali;
- autoload;
- event bus;
- service locator;
- dependency injection;
- framework interni;
- gerarchie complesse;
- state machine globali;
- sistemi paralleli a quelli esistenti.

Una nuova architettura deve risolvere un problema concreto.

---

## 4. Principio di minima modifica

Preferisci sempre:

1. soluzione coerente con `/docs`;
2. soluzione coerente con il progetto esistente;
3. minor numero possibile di modifiche;
4. soluzione semplice da testare;
5. soluzione semplice da revisionare e annullare tramite Git.

Non effettuare refactor non richiesti.

Non modificare codice estraneo al problema.

Non cambiare game design per rendere più semplice l'implementazione tecnica.

---

## 5. Godot

Usa esclusivamente API e sintassi compatibili con **Godot 4.5 stable**.

Non inventare:

- classi;
- metodi;
- proprietà;
- segnali;
- callback;
- annotazioni.

Quando una funzionalità non funziona, considera sia il codice sia:

- Scene Tree;
- Inspector;
- segnali;
- gruppi;
- Input Map;
- collision layer/mask;
- Resources;
- Project Settings;
- animazioni;
- Navigation;
- proprietà esportate.

Non presumere che ogni problema sia nello script.

Quando servono modifiche sia al codice sia all'editor, separale chiaramente:

### VS Code
Modifiche a script e file testuali.

### Godot
Modifiche a scene, nodi, Inspector e Project Settings.

---

## 6. Codice

Quando modifichi codice esistente:

1. leggilo prima;
2. controlla le dipendenze;
3. preserva il comportamento non coinvolto;
4. evita rinominare API pubbliche senza necessità;
5. modifica solo ciò che serve.

Mantieni naming e stile già presenti.

Usa file completi solo quando necessario. Per modifiche locali preferisci frammenti o funzioni complete.

Non utilizzare `...` nel codice che deve essere copiato direttamente.

---

## 7. Percorsi e struttura

Quando conosci il percorso reale di un file, utilizzalo:

`res://path/file.gd`

Non inventare nomi di:

- file;
- cartelle;
- scene;
- nodi;
- autoload;

come se esistessero già.

Se un nome è solo un esempio, dichiaralo.

Non riorganizzare significativamente le cartelle senza una motivazione concreta.

---

## 8. Game design

Rispetta ciò che viene definito in `/docs`.

Per Levels, Entities, Objects, stanze, storie e descrizioni canoniche leggi la pagina corrispondente in `docs/wiki/backrooms-wiki-md/`. Il game design originale non può contraddire quel canone.

In particolare non inventare regole per:

- survival;
- creature;
- puzzle;
- livelli;
- elementi GDR;
- progressione;
- multiplayer;
- lore.

Le creature non devono essere considerate automaticamente nemici da combattere.

I labirinti devono poter disorientare intenzionalmente senza diventare inutilmente illeggibili.

I puzzle devono rispettare soluzione e difficoltà definite dal game design.

"Survival" e "GDR" indicano una direzione generale e non autorizzano ad aggiungere automaticamente sistemi standard del genere.

---

## 9. Prima persona e multiplayer

Il gioco è 3D in prima persona.

Quando pertinente considera:

- CharacterBody3D;
- camera;
- collisioni;
- interazioni;
- mouse/controller;
- scale coerenti;
- feedback audiovisivo.

Non aggiungere automaticamente sprint, crouch, head bob, stamina, leaning o altre funzionalità non richieste.

Il progetto nasce come cooperativa host-authoritative per 1–4 giocatori. Anche il solo usa lo stesso flusso multiplayer con un partecipante. Consulta `docs/multiplayer.md` e `docs/architecture.md` prima di modificare stato di gameplay.

Quando un sistema diventa realmente multiplayer considera:

- autorità;
- ownership;
- sincronizzazione;
- RPC;
- spawn/despawn;
- host/client;
- stato condiviso.

Non creare prima una versione single-player di un sistema condiviso con l'intenzione di convertirla in seguito. Evita comunque networking in elementi puramente locali come camera e menu che non modificano lo stato della sessione.

---

## 10. Debugging

Non riscrivere un sistema appena compare un bug.

Analizza prima:

- primo errore significativo;
- file e linea;
- stack trace;
- riferimento null;
- scena;
- Inspector;
- ordine di inizializzazione;
- segnali;
- input;
- collisioni;
- risorse;
- dipendenze.

Distingui sempre:

- causa confermata;
- causa probabile;
- ipotesi.

Preferisci test mirati e breakpoint a decine di `print()` casuali.

---

## 11. Performance

Priorità:

1. correttezza;
2. semplicità;
3. manutenibilità;
4. coerenza;
5. performance.

Non ottimizzare prematuramente.

Quando esiste un problema concreto considera soprattutto:

- codice eseguito ogni frame;
- numero di nodi;
- draw call;
- luci e ombre;
- shader;
- collisioni;
- AI/navigation;
- asset pesanti;
- networking.

---

## 12. Asset 3D

Gli asset devono essere coerenti con Godot per:

- scala;
- orientamento;
- pivot;
- materiali;
- collisioni;
- animazioni;
- performance.

Per modelli destinati al gioco preferisci `.glb` quando appropriato.

Prima di aggiungere asset binari pesanti controlla `.gitattributes` e la configurazione Git LFS.

---

## 13. Git

Le modifiche devono produrre diff leggibili.

Preferisci:

- una feature alla volta;
- fix isolati;
- refactor separati dalle feature;
- commit concettualmente coerenti.

Per modifiche importanti usa branch dedicati quando appropriato, ad esempio:

`feature/player-controller`

`feature/coop`

`feature/puzzle-system`

`fix/player-collision`

Non creare branch inutili per modifiche minime.

---

## 14. Decisioni importanti

Prima di introdurre modifiche strutturali come:

- nuovi autoload;
- architettura multiplayer;
- procedural generation;
- salvataggi;
- nuovi sistemi globali;
- grandi riorganizzazioni;
- framework puzzle o creature;

spiega prima:

- problema;
- soluzione proposta;
- file coinvolti;
- dipendenze;
- rischi.

Le decisioni tecniche importanti e durature devono essere documentate in `/docs`.

---

## Regola fondamentale

La soluzione migliore è quella che:

- rispetta `/docs`;
- funziona con Godot 4.5 stable;
- riutilizza ciò che già esiste;
- introduce il minor rischio possibile;
- è semplice da capire;
- è semplice da testare;
- produce modifiche Git leggibili.

In caso di dubbio:

**applica la modifica minima necessaria senza inventare sistemi non definiti e senza rompere ciò che già funziona.**
