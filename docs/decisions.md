# Decisioni

Registro delle decisioni tecniche e di design durature. Se una cosa non è scritta qui, non è ancora decisa.

## 2026-08-23 — Setup repository

- Struttura iniziale: `assets/`, `scenes/`, `scripts/`, `resources/`, `shaders/`, `docs/`.
- Documentazione in `docs/`, esclusa dall'import Godot con `.gdignore`.
- Linguaggio: GDScript. Nessun C#.
- Renderer: Forward+.
- Git LFS per `*.blend`, `*.fbx`, `*.glb`, `*.psd`, `*.kra`, `*.wav`.
- `.godot/` non è tracciata.
- Il percorso locale dell'eseguibile Godot non va in file Git condivisi. Resta in `.vscode/settings.json`, ignorato da Git.

## 2026-08-23 — Level 0 blockout

- Griglia principale 3 × 3 m, snap secondario 1,5 m, soffitto 3 m.
- Level design manuale/modulare. Niente procedural generation in questa fase.
- Level 0: isolamento giocatori come regola normale.
- Zone di convergenza: aree specifiche in cui i giocatori possono vedersi/interagire.
- Red Room del Level 0: prima zona di convergenza confermata. Non implementata in questo blockout.
- Le regole multiplayer possono differire da livello a livello.
- Kit architettonico `backrooms.blend` → `.glb` in `assets/models/environment/level_0/`.
- Atlas `backrooms.png` condiviso; UV originali preservati.
- Look Level 0 allineato alle foto di riferimento: wash fluorescente giallo-beige su tutto lo spazio. Tint separati per muri, pavimento e soffitto; UV atlas invariate.
- Vol. 2 (office props) escluso dal primo blockout.
- Player di test solo per scala e navigazione. Nessun sistema survival.

## Aperte

- Il target dichiarato è Godot 4.7.1, ma `project.godot` e l'editor locale sono ancora su 4.5. Da allineare aprendo il progetto con Godot 4.7.1.
- Implementazione isolamento / zone di convergenza / Red Room: da fare in un passo successivo.
- Audio ronzio fluorescenti: da integrare in seguito.
