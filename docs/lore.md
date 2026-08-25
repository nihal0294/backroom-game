# Lore e canone adottato

## Gerarchia

1. richiesta corrente;
2. decisioni/deroghe in `/docs`;
3. pagina pertinente nel dump locale `docs/wiki/backrooms-wiki-md/<slug>.md`;
4. adattamento tecnico minimo;
5. proposta non canonica, dichiarata.

Il dump è lo snapshot di progetto della [Backrooms Wiki](https://backrooms-wiki.wikidot.com/), recuperato il 23 agosto 2026. Prima di implementare, leggi quella pagina Markdown. Non usare Fandom, altre wiki o ricordi generici. Se la pagina manca dal dump, segnalalo invece di inventarla.

## Fondamenti

- Levels: ambienti variabili per dimensione, pericolo, abitabilità e stabilità; fisica non sempre affidabile; possono avere sezioni, landmark, insediamenti, entrate/uscite.
- Entities: vita amichevole, intelligente, bestiale, ostile o incomprensibile.
- Objects: cose inanimate ordinarie, create o alterate, pericolose o utili.
- Informazioni in-universe incomplete non sono automaticamente regole tecniche certe.

Indici locali: [`normal-levels-i.md`](wiki/backrooms-wiki-md/normal-levels-i.md), [`entities.md`](wiki/backrooms-wiki-md/entities.md), [`objects.md`](wiki/backrooms-wiki-md/objects.md).

## Adattamento cooperativo

I membri sono sempre un gruppo e condividono il mondo, ma la percezione reciproca dipende da livello, zone, oggetti ed effetti.

Questa regola prevale sulle pagine con isolamento assoluto: chat disponibile, avatar nascosti/non interagibili, conseguenze condivise e condizioni di incontro. Non generalizzare l'Isolation Effect a tutti i livelli.

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

### Isolation Effect adattato

La wiki dice che persone entrate insieme non si trovano/comunicano, salvo una piccola stanza. Nel gioco: una sola istanza autoritativa, avatar nascosti/non collidibili/non udibili/non interagibili fuori rivelazione, chat sempre disponibile, effetti condivisi, oggetti/eventi capaci di modificare percezione.

### Red Room — deroga

La wiki le tratta come sezioni pericolose quasi impossibili da lasciare. Nel gioco la Red Room del Level 0:

- rivela solo i presenti contemporanei;
- permette visione/interazione;
- revoca all'uscita;
- può restare inquietante/pericolosa ma non è automaticamente una trappola inevitabile.

Codex non deve “correggere” questa deroga.

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
- convergenza solo se la scheda lo stabilisce;
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
