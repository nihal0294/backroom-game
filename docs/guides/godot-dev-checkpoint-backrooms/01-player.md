# 01 — Player: controller FPS pesato e head bob

## Source

- Titolo: [Godot 4.5 Tutorial: Horror FPS Controller & Head Bob (Backrooms Part 1)](https://www.youtube.com/watch?v=zTe6u3H01zo)
- ID: `zTe6u3H01zo`
- Parte: 1 di 5 della serie Backrooms
- Versione dichiarata: Godot 4.5, GDScript
- Codice pubblico esaminato: [`player.gd`](https://github.com/spaghettiSyntax/Backrooms_Tutorial/blob/main/player.gd)

## What the tutorial builds

Un controller FPS locale con camminata, mouse look, oscillazione procedurale della camera, cattura/rilascio del mouse e torcia. I capitoli separano scene setup, movimento, mouse, rotazione, head bob, torcia e prova finale.

## Godot nodes/resources used

- `CharacterBody3D` come root del player;
- `CollisionShape3D` per il corpo;
- `Node3D` `Head` come pivot verticale;
- `Camera3D` sotto `Head`;
- `SpotLight3D` sotto la camera;
- azioni nell'Input Map per movimento, uscita/cattura mouse e torcia.

Il codice pubblico contiene anche un `RayCast3D` sotto la camera, aggiunto per le parti successive. Non va confuso con una seconda camera o con un sistema globale.

## Important implementation techniques

- yaw sul corpo e pitch sul pivot `Head`, con pitch limitato;
- direzione locale trasformata dalla `Basis` del personaggio e applicata a `velocity`;
- gravità e `move_and_slide()` in `_physics_process()`;
- fase del bob accumulata solo mentre il corpo si muove sul pavimento;
- sinusoide verticale e cosinusoide orizzontale a frequenza dimezzata per un percorso a otto;
- ritorno interpolato della camera alla posizione neutra quando il player si ferma;
- torcia resa visibile/invisibile localmente.

## Useful code patterns

Pattern utile, in forma ridotta:

```gdscript
if moving and is_on_floor():
    bob_phase += delta * horizontal_speed
    camera.position = neutral_camera_position + bob_offset(bob_phase)
else:
    camera.position = camera.position.lerp(neutral_camera_position, reset_rate * delta)
```

La posizione neutra deve essere salvata: azzerare la camera, come fa il prototipo tutorial, è corretto solo se la camera nasce davvero a origine locale zero.

## Project applicability

- Movimento, mouse look, torcia e Input Map: `REUSE`, perché sono già presenti in `res://scripts/player.gd` e `res://scenes/player.tscn`.
- Separazione yaw/pitch: `REUSE`; il progetto ruota già corpo e `Camera3D` separatamente.
- Head bob: `REFERENCE_ONLY`. Non è richiesto dal design corrente e non va aggiunto come effetto “found footage” implicito.
- Camera sway separato: `REFERENCE_ONLY`; non è confermato come sistema distinto nel codice pubblico della parte 1 e non va inventato dalla guida.
- Sensazione di peso tramite accelerazione/decelerazione: `ADAPT` solo dopo una decisione di game design e test multiplayer.

## Differences from our project

Il player corrente possiede già raggio di interazione, UI, inventario, status, sprint, stamina e salto. Il tutorial è un prototipo locale più piccolo; sostituire il controller perderebbe dipendenze e comportamento già validati. La camera corrente è direttamente sotto il corpo, senza `Head`: introdurre un pivot è una modifica strutturale e non è autorizzata da questa guida.

## Godot 4.5 compatibility

Le API centrali (`CharacterBody3D`, `Input.get_vector`, `move_and_slide`, `Input.MOUSE_MODE_CAPTURED`, `SpotLight3D`) sono Godot 4.5. Nel progetto si preferiscono tipi espliciti, `clampf()` per float e azioni con nomi già presenti. La logica di input resta fuori da `_process()` quando non serve ogni frame.

## Multiplayer impact

Camera, mouse look e bob sono puramente locali e non vanno replicati. Posizione/velocità del personaggio, consumo stamina e interazioni che cambiano il mondo devono seguire l'autorità di sessione definita in `docs/multiplayer.md`; il tutorial non tratta ownership o RPC.
