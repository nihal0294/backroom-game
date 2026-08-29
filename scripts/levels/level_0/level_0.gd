extends Node3D

@onready var player: CharacterBody3D = %Player
@onready var sector_spawn: Marker3D = $Sectors/Sector04/Markers/Sector04PlayerSpawn


func _ready() -> void:
	player.global_transform = sector_spawn.global_transform
