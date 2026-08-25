extends Node3D
## Modular Level 0 fluorescent. No flicker (later task).

@export var powered: bool = true
@export var emit_light: bool = true
@export var cast_shadow: bool = false

@onready var _tube: MeshInstance3D = $Tube
@onready var _light: OmniLight3D = $Light

const _ON := preload("res://resources/materials/level_0/fluorescent_emissive.tres")
const _OFF := preload("res://resources/materials/level_0/fluorescent_off.tres")


func _ready() -> void:
	_apply()


func _apply() -> void:
	if _tube:
		_tube.material_override = _ON if powered else _OFF
	if _light:
		_light.visible = powered and emit_light
		_light.shadow_enabled = cast_shadow and powered and emit_light
