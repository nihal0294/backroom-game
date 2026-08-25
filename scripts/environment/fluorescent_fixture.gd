extends Node3D
## Modular Level 0 fluorescent. Flicker is opt-in and local.

@export var powered: bool = true
@export var emit_light: bool = true
@export var cast_shadow: bool = false
@export var flicker: bool = false

@onready var _tube: MeshInstance3D = $Tube
@onready var _light: OmniLight3D = $Light

const _ON := preload("res://resources/materials/level_0/fluorescent_emissive.tres")
const _OFF := preload("res://resources/materials/level_0/fluorescent_off.tres")

var _base_energy: float = 2.35
var _t: float = 0.0


func _ready() -> void:
	if _light:
		_base_energy = _light.light_energy
	_t = float(hash(global_position) % 1000) * 0.01
	_apply()
	set_process(flicker)


func _process(delta: float) -> void:
	if not flicker or _light == null or not powered:
		return
	_t += delta
	# Slow, irregular, never a constant strobe.
	var w := 0.82 + 0.18 * sin(_t * 1.7) * sin(_t * 0.37 + 1.2)
	if sin(_t * 0.21 + 0.4) > 0.92:
		w *= 0.35
	_light.light_energy = _base_energy * w


func _apply() -> void:
	if _tube:
		_tube.material_override = _ON if powered else _OFF
	if _light:
		_light.visible = powered and emit_light
		_light.shadow_enabled = cast_shadow and powered and emit_light
		if powered:
			_light.light_energy = _base_energy
