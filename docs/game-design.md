# Game design

Stato: fondazione approvata; il gameplay completo è ancora in definizione.

## Visione

`backroom-game` è un survival horror 3D in prima persona, cooperativo per **1–4 giocatori**, ambientato nelle Backrooms. Adatta la Backrooms Wiki a un'esperienza in cui isolamento, informazione e comunicazione sono meccaniche centrali.

Il solo non è un'architettura separata: è una sessione cooperativa ospitata localmente con un partecipante.

## Pilastri

- esplorazione di ambienti liminali, labirintici e anomali;
- cooperativa basata sulla comunicazione, non sulla presenza fisica costante;
- isolamento percettivo tra membri dello stesso gruppo;
- mondo condiviso: livello, entità, NPC, oggetti, loot, incontri, puzzle ed eventi;
- sopravvivenza, tensione e scoperta;
- enigmi e sfide differenti per livello;
- ricerca di uscite non necessariamente fisiche;
- fedeltà a Levels, Entities e Objects della wiki;
- personaggi persistenti distinti, con stato e progresso propri.

## Personaggi e sessioni

- Ogni giocatore può possedere più personaggi e ne sceglie uno per sessione.
- Ogni personaggio conserva identità, progressione e stato propri.
- Qualunque giocatore può ospitare una sessione per un massimo totale di quattro partecipanti.
- I partecipanti entrano con il proprio personaggio, non con copie dell'host.
- Salvataggio personaggio e stato sessione devono essere tecnicamente separati; formato e storage definitivi sono aperti.

## Ciclo generale

1. Selezionare o creare un personaggio.
2. Ospitare o unirsi a una sessione.
3. Entrare nel Level 0 in uno spawn valido scelto casualmente dall'host.
4. Esplorare, raccogliere informazioni/risorse e affrontare entità, incontri, puzzle e anomalie.
5. Comunicare anche quando gli altri non sono visibili.
6. Individuare e attivare un'uscita.
7. Raggiungere un altro livello e continuare la progressione.

Non è ancora deciso se una specifica uscita trasferisca attivatore, presenti o gruppo intero: la politica deve essere configurabile per uscita.

## Mondo condiviso e isolamento

Tutti occupano **la stessa istanza autoritativa del livello**. Non esistono copie private del mondo.

Sono condivisi, salvo regola esplicita: porte/interazioni, puzzle, oggetti/loot, entità/NPC, eventi/incontri, mutazioni e uscite.

Fuori dalle condizioni di rivelazione, un giocatore non deve:

- vedere corpo o equipaggiamento degli altri;
- collidere o interagire direttamente con loro;
- ricevere il loro audio spaziale;
- vedere marker, posizione o distanza.

Le conseguenze delle loro azioni sul mondo possono essere percepite: questa presenza indiretta è intenzionale.

## Isolamento e percezione

La regola di percezione tra giocatori segue il canone del livello, non una policy unica per tutte le Backrooms.

### Level 0

- Isolation Effect: i giocatori non si percepiscono, non si trovano e non si incontrano.
- Red Rooms: zone pericolose da evitare, non luoghi d'incontro.
- Manila Room: unica eccezione canonica conosciuta in cui persone diverse possono percepirsi. Non è ancora implementata.

Altri livelli potranno avere regole diverse, se la wiki o una scheda approvata lo stabiliscono.

## Comunicazione

- La chat testuale di gruppo è fondamentale e resta disponibile durante l'isolamento.
- Non rivela automaticamente posizione, direzione o distanza.
- Voce, prossimità, ping e mappe condivise non sono ancora decisi.

## Uscite

Un'uscita è una **condizione di transizione**, non una porta. Può essere volume, superficie, interazione, oggetto, NPC, entità, puzzle, incontro, sequenza, condizione temporale, noclip, caduta o anomalia.

Il codice non deve legare il concetto a una mesh o a un unico tipo di nodo.

## Contenuti Backrooms

I livelli hanno leggi, atmosfera, sottosezioni, pericoli, popolazione, entrate e uscite proprie. Possono essere stabili/mutevoli e limitati/apparentemente infiniti.

Le entità possono essere amichevoli, intelligenti, neutrali, ostili o incomprensibili: non sono automaticamente nemici.

Gli oggetti includono strumenti, consumabili, armi, artefatti, decorazioni e oggetti alterati. Nessun contenuto entra automaticamente nel gioco: richiede una scheda conforme a [`content-system.md`](content-system.md).

## Level 0

- main scene corrente: `res://scenes/levels/level_0.tscn`;
- topologia attiva: master numerata e 48 immagini di settore in `assets/level_0/maps/`; implementazione progressiva un settore esplicitamente richiesto alla volta;
- scala 1 unità Godot = 1 metro; la scala di ciascun ritaglio normalizzato viene documentata dal relativo trace e calibrata sul kit architettonico Backrooms VR;
- standard architettonico corrente: pareti da 0,30 m estruse fuori dalla sagoma calpestabile e controsoffitto a circa 2,866 m, salvo future eccezioni esplicite della mappa;
- look giallo-beige, moquette umida, fluorescenti e ronzio;
- monotonia e geometrie plausibili organizzate in modo errato;
- variazioni lore: archi, pilastri, buche, blackout, Red Rooms (pericolose), layout changes;
- Isolation Effect secondo `level-0.md`;
- Manila Room come unica eccezione canonica di incontro, non implementata;
- entità non confermate (wiki: unknown); non inserirle;
- uscita wiki di riferimento: parete tremolante/instabile verso Level 1.

Il precedente `level_0_test.tscn` con Sector001/Sector002 e il prototipo S01-R01 sono storici inattivi. Non ripararli, rigenerarli o usarli come fondazione. Sector 04 è il primo ambiente della nuova mappa a 48 settori; Backrooms VR definisce il linguaggio costruttivo, non la topologia.

## Piattaforme

- Piattaforma primaria: PC tramite Steam.
- Target compatibile: Steam Deck, con controlli, UI, performance e salvataggi verificati.
- Target eventuale: cellulari, con input/UI/performance e networking adatti.
- Steam può offrire lobby, inviti, matchmaking e networking su PC/Deck, ma le regole di gioco non devono dipendere direttamente da Steam.
- Mobile e build senza Steam devono poter usare un provider alternativo mantenendo protocollo e gameplay comuni.

## Controlli (prototipo)

- WASD movimento
- Shift sprint
- Space jump
- F flashlight (equipaggiamento tecnico di prototipo, non Object wiki)
- Tab inventory/status
- 1–5 quick use

Aprire l'inventario **non** mette in pausa il mondo.

## Survival state (prototipo)

Stato runtime per personaggio, non lore numerica della wiki:

- sanity 0–100
- stamina 0–100
- hunger 0–100
- thirst 0–100
- diseases/conditions (lista; vuota finché non c'è una pagina wiki + scheda)
- skeletal/limb integrity
- adaptation/familiarity per Level (meccanica di progetto)

## Non definito

- rate di fame/sete e relative conseguenze
- cause/effetti della sanity
- malattie specifiche
- effetti delle fratture
- effetti/bonus dell'adaptation
- capacità definitiva inventory/equipment
- crouch, combattimento, crafting, economia
- procedural generation, salvataggio definitivo, host migration, voice chat, server dedicati
