extends Node

const FOOTSTEP_STREAMS := [
	preload("res://assets/audio/level_0/footsteps/carpet_01.ogg"),
	preload("res://assets/audio/level_0/footsteps/carpet_02.ogg"),
	preload("res://assets/audio/level_0/footsteps/carpet_03.ogg"),
]
const FLASHLIGHT_STREAMS := [
	preload("res://assets/audio/level_0/interactions/light_switch_click_01.ogg"),
	preload("res://assets/audio/level_0/interactions/light_switch_click_02.ogg"),
	preload("res://assets/audio/level_0/interactions/light_switch_click_03.ogg"),
]

@export_range(0.5, 3.0, 0.05) var walk_step_distance := 1.65
@export_range(0.5, 3.0, 0.05) var sprint_step_distance := 1.30
@export_range(0.1, 10.0, 0.05) var sprint_speed_threshold := 4.25

@onready var _player := get_parent() as CharacterBody3D
@onready var _footsteps: AudioStreamPlayer = $Footsteps
@onready var _flashlight: AudioStreamPlayer = $Flashlight

var _distance_since_step := 0.0
var _previous_position := Vector3.ZERO
var _random := RandomNumberGenerator.new()


func _ready() -> void:
	if _player == null:
		set_physics_process(false)
		return
	_random.randomize()
	_previous_position = _player.global_position


func _physics_process(_delta: float) -> void:
	if not _player.is_multiplayer_authority():
		_distance_since_step = 0.0
		_previous_position = _player.global_position
		return

	var current_position := _player.global_position
	var movement := current_position - _previous_position
	_previous_position = current_position
	movement.y = 0.0

	# Teleports and spawn placement must not produce a footstep burst.
	if movement.length() > 0.75:
		_distance_since_step = 0.0
		return

	var horizontal_speed := Vector2(_player.velocity.x, _player.velocity.z).length()
	if not _player.is_on_floor() or horizontal_speed < 0.1:
		_distance_since_step = 0.0
		return

	_distance_since_step += movement.length()
	var step_distance := (
		sprint_step_distance if horizontal_speed >= sprint_speed_threshold else walk_step_distance
	)
	if _distance_since_step < step_distance:
		return

	_distance_since_step = fmod(_distance_since_step, step_distance)
	_play_footstep()


func play_flashlight_toggle() -> void:
	if _player == null or not _player.is_multiplayer_authority():
		return
	_flashlight.stream = FLASHLIGHT_STREAMS[_random.randi_range(0, FLASHLIGHT_STREAMS.size() - 1)]
	_flashlight.pitch_scale = _random.randf_range(0.97, 1.03)
	_flashlight.volume_db = _random.randf_range(-1.0, 0.5)
	_flashlight.play()


func _play_footstep() -> void:
	_footsteps.stream = FOOTSTEP_STREAMS[_random.randi_range(0, FOOTSTEP_STREAMS.size() - 1)]
	_footsteps.pitch_scale = _random.randf_range(0.94, 1.06)
	_footsteps.volume_db = _random.randf_range(1.0, 3.0)
	_footsteps.play()
