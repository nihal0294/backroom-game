# Matrice di applicabilità al progetto

Questa matrice è un filtro tecnico. Non approva feature e non sostituisce canone, game design, architettura o codice corrente.

| Technique | Video | Status | Existing equivalent | Project use |
|---|---|---|---|---|
| FPS movement | 1 | `REUSE` | `player.gd` | conservare il controller corrente |
| Mouse look e yaw/pitch | 1 | `REUSE` | body + `Camera3D` | conservare input e clamp correnti |
| Head bob | 1 | `REFERENCE_ONLY` | nessuno | richiede decisione comfort/accessibilità |
| Camera sway separato | 1 | `REFERENCE_ONLY` | nessuno; non confermato nel codice pubblico | non inventarlo come parte certa del tutorial |
| Sensazione di peso | 1 | `ADAPT` | sprint/stamina correnti | calibrazione, non riscrittura |
| GridMap per Level 0 | 2 | `DO_NOT_USE` | mappe/trace + builder aggregato | non può diventare source of truth |
| MeshLibrary | 2 | `REFERENCE_ONLY` | nessuna pipeline equivalente | solo prototipi isolati |
| Modular wall kit | 2 | `ADAPT` | kit VR + builder | riusare disciplina di pivot, misura e snapping |
| Inner/outer corner modules | 2 | `ADAPT` | corner derivati dalla topologia | testare seam/end cap, non sovrapporre pannelli |
| Modular door opening | 2 | `ADAPT` | opening reali nel builder | derivare left/right/header e collisione dallo stesso dato |
| Ceiling/floor modules | 2 | `ADAPT` | mesh aggregate | uniformare dimensioni senza facce coplanari |
| WorldEnvironment | 3 | `REUSE` | environment Level 0 | calibrare la configurazione esistente |
| VHS shader | 3 | `DO_NOT_USE` | nessuno | non è art direction automatica |
| Volumetric fog | 3 | `REFERENCE_ONLY` | nessuno | profilare PC/Deck; non supportato su Mobile/Compatibility |
| Interaction ray | 4 | `REUSE` | `InteractionRay` nel player | un solo rilevamento centrale |
| Contratto `interact(interactor)` | 4 | `REUSE` | già presente | più robusto del prototipo tutorial |
| Interactive doors | 4 | `REUSE` | `PushDoor` | mantenere cerniera, lato di apertura e collisione mobile |
| Movable physics items | 4 | `REFERENCE_ONLY` | nessun sistema approvato equivalente | richiede ownership, pickup/drop e autorità host |
| Nuova base Interactable parallela | 4 | `DO_NOT_USE` | risoluzione parent corrente | evitata duplicazione architetturale |
| Pickup con `queue_free()` locale | 4 | `DO_NOT_USE` | inventario/sessione | la rimozione deve essere autoritativa |
| Prompt “Premi E” | Bonus | `ADAPT` | stesso `InteractionRay` | presentazione locale sul target corrente |
| “1 tape = win” | Bonus | `DO_NOT_USE` | nessuno | cambierebbe il game design |
| UI di vittoria | Bonus | `REFERENCE_ONLY` | nessuno | dipende da obiettivi/sessione |
| NavigationAgent3D | 5 | `REFERENCE_ONLY` | nessuna pipeline di minaccia | test tecnico futuro separato |
| Enemy chasing / Nextbot | 5 | `DO_NOT_USE` | nessuna entità approvata | nessun nemico implicito dal tutorial |
| Jumpscare architecture | 5 | `REFERENCE_ONLY` | nessuno | stile e conseguenze non decisi; niente reload locale |
| UI dialoghi | Extra | `REFERENCE_ONLY` | HUD/inventario, non dialoghi | richiede contenuti e design separati |
| Pausa globale durante dialogo | Extra | `DO_NOT_USE` | sessione cooperativa | non congelare globalmente tutti i peer |
| Blocco input locale per UI | Extra | `ADAPT` | `is_busy_in_ui()` | integrare il flusso locale esistente |

## Percorsi correnti da riusare

- `res://scripts/player.gd`
- `res://scenes/player.tscn`
- `res://scripts/props/level_0/push_door.gd`
- `res://scenes/props/level_0/push_door.tscn`
- `res://scripts/levels/level_0/sector_04.gd`
- `res://scenes/levels/level_0/sector_04.tscn`
- `res://docs/architecture.md`
- `res://docs/multiplayer.md`

## Soglie prima di una futura implementazione

1. verificare la pagina canonica locale pertinente;
2. avere una decisione di game design in `/docs`;
3. confrontare l'idea con codice e scene correnti;
4. assegnare autorità host allo stato condiviso;
5. profilare effetti grafici e navigazione sulle piattaforme obiettivo;
6. implementare in un task separato, con test mirati e senza importare il progetto tutorial.
