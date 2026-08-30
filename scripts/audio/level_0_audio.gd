extends Node

## Keeps the imported OGG ambience layers looping without requiring edited
## import metadata. The players themselves autoplay as soon as Level 0 loads.


func _ready() -> void:
	for child in get_children():
		var player := child as AudioStreamPlayer
		if player == null:
			continue
		player.finished.connect(_restart_loop.bind(player))


func _restart_loop(player: AudioStreamPlayer) -> void:
	if is_instance_valid(player) and player.is_inside_tree():
		player.play()
