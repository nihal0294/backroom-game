# Game design

Stato: iniziale. Questo file registra solo ciò che è già definito. Non è un GDD completo.

## Direzione

Survival 3D in prima persona in un mondo liminale ispirato alle Backrooms.

Intento dichiarato nel README: il più fedele possibile alle Backrooms.

## Pilastri

Indirizzi generali, non sistemi già implementati o specificati:

- esplorazione
- sopravvivenza
- ambienti liminali e labirintici
- creature
- horror e tensione
- puzzle e sfide logiche
- obiettivi da completare
- elementi GDR
- cooperativa/multiplayer

## Non definito

Non assumere l'esistenza di meccaniche standard del genere finché non sono scritte qui. In particolare non sono definiti:

- fame, sete, sanità mentale, stamina
- inventario, crafting, skill tree
- combattimento
- generazione procedurale
- regole delle creature (non sono automaticamente nemici da combattere)
- regole dei puzzle, dei livelli, della progressione
- lore oltre ai riferimenti già adottati
- regole multiplayer oltre a quanto indicato sotto per il Level 0

I labirinti devono poter disorientare intenzionalmente senza diventare inutilmente illeggibili.

Fonte esterna per lore e ambientazioni Backrooms: `https://backrooms-wiki.wikidot.com/`. Le regole esplicite di questo progetto e `/docs` hanno priorità sulla wiki.

## Level 0 — metriche e layout

- 1 unità Godot = 1 metro
- griglia principale: 3 × 3 m
- snap secondario: 1,5 m
- altezza strutturale standard (soffitto): 3 m
- corridoio standard: 3 m
- corridoio largo: 6 m
- stanze piccole: 6 × 6 m, 6 × 9 m
- stanze normali: 9 × 9 m, 9 × 12 m, 12 × 12 m
- stanze grandi/rare (esempi, non usate nel primo blockout): 18 × 18 m, 18 × 24 m, 30 × 30 m

Il level design attuale è **manuale/modulare**. Il Level 0 non è proceduralmente generato.

Il Level 0 deve sembrare un edificio plausibile progettato in modo profondamente sbagliato: non un dungeon, non un labirinto da videogioco, non una griglia identica. La griglia da 3 m è tecnica; lo snap da 1,5 m serve a romperla.

## Level 0 — isolamento e convergenza

Regola normale del Level 0: un giocatore è **isolato** dagli altri. Due giocatori “nel Level 0” non si vedono, non interagiscono fisicamente e non condividono automaticamente lo stesso spazio visibile.

Alcune aree possono rompere questa regola. Sono **zone di convergenza**.

Prima zona confermata:

- **Red Room — Level 0** → convergenza. Solo i giocatori presenti contemporaneamente in quella zona sono visibili/interagibili tra loro.

Chi lascia la zona torna sotto l’isolamento.

Questa architettura **non è ancora implementata**. Il blockout non deve però renderla impossibile.

Le regole di incontro tra giocatori **possono cambiare da livello a livello**. Non assumere che ogni area Backrooms usi isolamento + Red Room.

Nota: sulla wiki la stanza in cui i wanderer possono incontrarsi è descritta diversamente, e le Red Room sono trattate come trappole da evitare. Per questo progetto vale la regola sopra, non l’interpretazione wiki.

## Level 0 — audio

Il ronzio delle fluorescenti è parte dell’atmosfera. Non è ancora implementato un sistema audio.
