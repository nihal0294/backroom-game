# Lore e canone adottato

## Gerarchia

1. **Canone:** pagina pertinente in `docs/wiki/backrooms-wiki-md/<slug>.md`. Autoritative per i fatti Backrooms.
2. **Game design originale:** richiesta corrente e `/docs`, solo se non riscrivono il canone.
3. **Implementazione:** adattamento tecnico minimo in Godot 4.5.
4. Proposta non canonica, dichiarata come tale.

Il dump è lo snapshot di progetto della [Backrooms Wiki](https://backrooms-wiki.wikidot.com/), recuperato il 23 agosto 2026. Prima di implementare, leggi quella pagina Markdown. Non usare Fandom, Kane Pixels, altre wiki o ricordi generici. Se la pagina manca dal dump, segnalalo invece di inventarla. Se una richiesta contraddice la wiki, seguire la wiki e segnalare il conflitto.

## Fondamenti

- Levels: ambienti variabili per dimensione, pericolo, abitabilità e stabilità; fisica non sempre affidabile; possono avere sezioni, landmark, insediamenti, entrate/uscite.
- Entities: vita amichevole, intelligente, bestiale, ostile o incomprensibile.
- Objects: cose inanimate ordinarie, create o alterate, pericolose o utili.
- Informazioni in-universe incomplete non sono automaticamente regole tecniche certe.

Indici locali: [`normal-levels-i.md`](wiki/backrooms-wiki-md/normal-levels-i.md), [`entities.md`](wiki/backrooms-wiki-md/entities.md), [`objects.md`](wiki/backrooms-wiki-md/objects.md).

## Adattamento cooperativo

I membri di sessione condividono la stessa istanza autoritativa del livello. Questo è game design tecnico, non un fatto wiki.

La percezione reciproca segue il canone del livello. Non generalizzare l'Isolation Effect a tutti i livelli. Non inventare zone di incontro che la wiki non descrive.

## Level 0 — “Threshold”

Fonte: [`docs/wiki/backrooms-wiki-md/level-0.md`](wiki/backrooms-wiki-md/level-0.md) (snapshot 23 agosto 2026).

### Adottato

- primo threshold comune;
- labirinto da retro-uffici/servizi;
- carta giallastra, moquette beige umida, fluorescenti ronzanti;
- vastità/monotonia, disorientamento, isolamento e paranoia;
- layout irregolare/mutevole quando non osservato;
- archi, pilastri, buche, blackout, Red Rooms e layout changes;
- rumori anomali e variazioni del ronzio;
- moquette continua con fluidi sconosciuti/non sicuri;
- entità non confermate;
- parete tremolante/instabile verso Level 1 come uscita di riferimento.

Sono riferimenti lore, non feature tutte già implementate.

### Isolation Effect (canone)

Fonte: `level-0.md`. Due individui nel Level 0 non si trovano. Gridare, lasciare note, marcare percorsi o danneggiare i muri fallisce. Si affronta da soli.

Eccezione canonica: la [Manila Room](wiki/backrooms-wiki-md/manila-room.md), stanza piccola e improbabile da incontrare, in cui persone diverse possono percepirsi. **Non è ancora implementata.**

La chat di sessione, se presente, è un canale di game design extra-diegetico: non è gridare nel Level 0 e non riscrive l'Isolation Effect.

### Red Rooms (canone)

Fonte: `level-0.md` e `red-rooms.md`. Sono sezioni pericolose, da evitare, difficili o impossibili da lasciare, con effetti psicologici avversi. **Non sono zone di convergenza multiplayer.** Non esiste una deroga di progetto che le renda luoghi d'incontro.

## Entities

- leggere la pagina specifica;
- rispettare habitat, bisogni, capacità e motivazioni;
- non aggiungere automaticamente aggressività, combattimento, salute, loot o spawn;
- distinguere fatti, consigli in-universe e meccaniche;
- segnalare trimmed/rewrite/`[NO DATA]` senza inventare canone;
- nel Level 0 restano non confermate fino a decisione.

## Objects

- leggere la pagina specifica;
- distinguere ordinari, strumenti, consumabili, armi, artefatti e decorazioni;
- conservare rischi, limiti, varianti/look-alike;
- non inventare stack, peso, rarità, crafting o slot;
- effetti validati dall'host;
- percezione/incontro tra giocatori solo se il canone del livello/oggetto lo prevede;
- trimmed/rewrite/`[NO DATA]` non autorizzano invenzioni canoniche.

Almond Water, Level Keys e gli altri oggetti elencati sono candidati, non automaticamente approvati.

## Template deroga

```markdown
## <Content ID> — <Nome>
Fonte: <URL e revisione/data>
### Adottato
- ...
### Modificato
- Wiki: ...
- Gioco: ...
- Motivo: ...
### Escluso/non definito
- ...
### Multiplayer
- autorità, stato condiviso/personale, isolamento/convergenza
```
