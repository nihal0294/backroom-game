# Architettura

Stato: iniziale. Nessun sistema di gioco, manager, autoload o framework interno è definito.

## Stack

- Godot 4.7.1 (target dichiarato in `AGENTS.md`)
- GDScript
- renderer Forward+
- VS Code
- Git / GitHub / GitHub Desktop

Il `project.godot` attuale dichiara ancora la feature `"4.5"` e Forward+. L'editor trovato in locale è Godot 4.5-stable. Aprire il progetto con Godot 4.7.1 è un passo manuale: l'editor potrà aggiornare il tag di versione.

## Struttura cartelle

```
assets/source/blender/                 sorgenti .blend
assets/source/obj/                     export OBJ originali
assets/models/environment/level_0/     .glb runtime del kit Level 0
assets/textures/environment/level_0/   atlas architettonico
assets/textures/environment/vol2/      atlas props (non usati nel blockout)
scenes/                                scene Godot
scripts/                               script GDScript
resources/materials/                   materiali condivisi
shaders/                               shader (non texture)
docs/                                  documentazione (ignorata da Godot)
```

`assets/source/` ha `.gdignore`: Godot non importa `.blend` / `.obj`.

Pipeline asset: `.blend` (sorgente) → `.glb` (Godot). Texture atlas condivisa, non duplicata nei GLB. I moduli del kit usano UV sull’atlas: non trattare `backrooms.png` come tileable.

Nell’atlas, le pareti usano la fascia alta (carta da parati oliva), il pavimento la fascia bassa (moquette senape), il soffitto i tile centrali. Non esiste una wallpaper bright yellow separata. Il look Level 0 (crema/giallo fluorescente come le foto di riferimento) si ottiene con tint distinti su muri/pavimento/soffitto più un wash delle luci, senza spostare le UV.

## Level 0 — blockout

- Scena di test: `res://scenes/levels/level_0_test.tscn` (main scene)
- Player di prova: `res://scenes/player.tscn` (camminata FPS, niente sprint/crouch/jump)
- Kit architettonico da `backrooms.blend`: muri, pavimenti, soffitti, aperture, angoli, fluorescenti
- Backrooms Vol. 2 (props: VHS, sedie, porte, CCTV, ecc.) **non** entra in questa fase
- Luci: mesh fluorescente + `OmniLight3D`, circa ogni 3–6 m, con buchi voluti. Niente flickering
- Ronzio luci: da integrare in seguito, senza un sistema audio dedicato per ora

Il layout è assemblato a moduli 3 m, non come una mesh unica. Niente streaming, chunking o generazione dinamica.

Il blockout è single-player. Non introdurre un mondo sempre condiviso visibile: il Level 0 normale isola i giocatori; solo zone di convergenza (Red Room) potranno farli incontrare.

## Cosa non c'è ancora

- autoload
- input map di gioco (il player di test usa WASD e mouse)
- layer di collisione nominati
- networking / isolamento / Red Room
- salvataggi
- props Vol. 2 nel livello
