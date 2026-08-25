# Sistema dei contenuti Backrooms

Traduce Levels, Entities e Objects in contratti implementabili. I nomi dei tipi sono target descrittivi, non classi già presenti.

## Obiettivi

- aggiungere contenuti senza duplicare infrastruttura multiplayer;
- separare lore, dati, visuale e comportamento;
- usare ID stabili indipendenti da path/nodi;
- esplicitare autorità, persistenza e replica;
- validare collegamenti tra livelli, entrate, uscite, entità e oggetti;
- documentare adattamenti della wiki.

## Dati + comportamento

Ogni contenuto usa: definizione immutabile/versionata (preferibilmente Resource), eventuale scena, stato autoritativo d'istanza separato e comportamento solo quando necessario.

Mai salvare stato mutabile in Resource condivise o duplicarle per istanza.

## Metadati comuni

| Campo | Scopo |
| --- | --- |
| `content_id` | ID namespaced stabile, es. `level:0` |
| `display_name` | nome mostrato, se noto |
| `content_version` | versione definizione gioco |
| `source_url` | pagina wiki/fonte |
| `source_revision` | revisione/data consultata |
| `implementation_status` | planned/prototype/playable/validated |
| `tags` | ricerca/editor, non regole |
| `notes` | deroghe/ambiguità, non logica |

## LevelDefinition

Include ID/designazione/titolo, scena/loader, scala e spazio, atmosfera/audio/luci, pericoli/anomalie, sezioni/landmark, policy visibilità giocatori, spawn, popolazione, loot, puzzle/eventi, entrate/uscite, mutabilità/streaming/layout e dati snapshot.

Livelli enormi/infiniti possono essere rappresentati con layout finito, loop, streaming, segmenti o trasformazioni purché conservino l'esperienza e restino autoritativi sull'host. Level 0 resta manuale/modulare finché non approvato altro.

## LevelSectionDefinition

Una sottosezione può modificare atmosfera, pericoli, spawn, entità/oggetti, incontro giocatori, entrate/uscite e regole ambientali. Una convergenza è una funzione possibile, non un livello separato.

## SpawnDefinition

ID, trasformazione/area, livello/sezione, tag ingresso, peso, capienza, distanza minima, sicurezza/blocco e fallback. Selezione solo host; marker non replicati.

## ExitDefinition

Separa condizione, effetto e destinazione:

- ID;
- attivazione: volume, interazione, puzzle, evento, oggetto, anomalia o script;
- precondizioni/costi;
- `level_id` + `entry_id`;
- politica partecipanti;
- feedback;
- stato modificato;
- ripetibilità e fallback errore.

Mai derivare destinazione dal nome di porta/file scena.

## EntityDefinition

Per la wiki un'entità è qualunque essere vivente. Definire identità/fonte, scena, habitat, spawn, disposizione non ridotta obbligatoriamente a tre stati, sensi, fisiologia, capacità/vulnerabilità, comportamento/AI, interazioni, stato persistente/replicato, despawn, feedback ed eventuale loot solo se approvato.

### Autorità

Host decide spawn, AI, movimento, target, interazioni, danni ed esiti. Client presenta/interpola. AI non dipende dalla camera host. Isolation Effect può applicarsi se LevelDefinition lo richiede. Entity non implica combattimento/ricompensa.

Non forzare comportamenti diversi in una state machine universale; riusare componenti solo per regole davvero comuni.

## ObjectDefinition

Definire identità/fonte, categoria, scene mondo/UI, azioni disponibili, precondizioni/cariche/consumo, effetti autoritativi, contesti spawn, stato serializzabile, replica/ownership, look-alike e possibili effetti su convergenza.

Stack, peso, rarità, slot ed equipaggiamento esistono solo dopo approvazione dei relativi sistemi.

### ObjectInstanceState

Almeno `network_object_id`, `content_id`, posizione/contenitore, quantità/stato approvati, proprietario/contenitore e revisione anti-doppio-pickup.

Pickup/uso/drop sono transazioni host-authoritative: richieste concorrenti producono un solo vincitore. Decorazioni senza stato non richiedono ID/replica individuale.

## Puzzle e incontri

Referenziano `content_id` di livelli, sezioni, entità, oggetti e uscite. Stato nel mondo di sessione e autorità host. Evitare framework universale prima di due casi reali condivisi.

## Registro contenuti

Deve risolvere `content_id -> Resource/scena`, rifiutare ID duplicati/riferimenti mancanti, escludere contenuti disabilitati e produrre un manifest di compatibilità host/client. Path possono cambiare senza rompere rete/salvataggi.

Forma concreta aperta: non creare subito un autoload se non necessario.

## Importare una pagina wiki

1. Leggere pagina e collegamenti necessari.
2. Registrare URL, titolo, revisione/data.
3. Separare lore, narrazione e requisiti gameplay.
4. Elencare ambiguità/conflitti.
5. Approvare deroghe in [`lore.md`](lore.md) o scheda dedicata.
6. Compilare definizione dati.
7. Implementare scena/comportamento minimo.
8. Verificare autorità/replica con 1, 2 e 4 giocatori.
9. Validare riferimenti.
10. Aggiornare status.

Non importare automaticamente liste complete: solo contenuti selezionati.

## Scheda minima

- Fonte e aspetti adottati/modificati/esclusi?
- Dove appare e cosa fa?
- Chi ha autorità?
- Quale stato replica/persiste?
- Come interagisce con il canone di percezione del livello (Isolation Effect, Manila Room, ecc.)?
- Quali contenuti/uscite referenzia?
- Come viene testato in multiplayer?
