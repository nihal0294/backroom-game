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
@onready var _movement: AudioStreamPlayer = $Movement
@onready var _flashlight: AudioStreamPlayer = $Flashlight

var _distance_since_step := 0.0
var _previous_position := Vector3.ZERO
var _previous_vertical_velocity := 0.0
var _was_on_floor := false
var _random := RandomNumberGenerator.new()


func _ready() -> void:
	if _player == null:
		set_physics_process(false)
		return
	_random.randomize()
	_previous_position = _player.global_position
	_previous_vertical_velocity = _player.velocity.y
	_was_on_floor = _player.is_on_floor()


func _physics_process(_delta: float) -> void:
	var on_floor := _player.is_on_floor()
	if not _player.is_multiplayer_authority():
		_distance_since_step = 0.0
		_previous_position = _player.global_position
		_previous_vertical_velocity = _player.velocity.y
		_was_on_floor = on_floor
		return

	if on_floor and not _was_on_floor:
		var impact_speed := maxf(-_previous_vertical_velocity, 0.0)
		if impact_speed >= 1.5:
			_play_landing(impact_speed)
	_was_on_floor = on_floor
	_previous_vertical_velocity = _player.velocity.y

	var current_position := _player.global_position
	var movement := current_position - _previous_position
	_previous_position = current_position
	movement.y = 0.0

	# Teleports and spawn placement must not produce a footstep burst.
	if movement.length() > 0.75:
		_distance_since_step = 0.0
		return

	var horizontal_speed := Vector2(_player.velocity.x, _player.velocity.z).length()
	if not on_floor or horizontal_speed < 0.1:
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


func play_jump() -> void:
	if _player == null or not _player.is_multiplayer_authority():
		return
	_movement.stream = FOOTSTEP_STREAMS[0]
	_movement.pitch_scale = _random.randf_range(1.08, 1.15)
	_movement.volume_db = _random.randf_range(-10.0, -8.0)
	_movement.play()


func _play_footstep() -> void:
	_footsteps.stream = FOOTSTEP_STREAMS[_random.randi_range(0, FOOTSTEP_STREAMS.size() - 1)]
	_footsteps.pitch_scale = _random.randf_range(0.94, 1.06)
	_footsteps.volume_db = _random.randf_range(-9.0, -7.0)
	_footsteps.play()


func _play_landing(impact_speed: float) -> void:
	_movement.stream = FOOTSTEP_STREAMS[_random.randi_range(1, FOOTSTEP_STREAMS.size() - 1)]
	_movement.pitch_scale = _random.randf_range(0.84, 0.93)
	_movement.volume_db = clampf(-9.0 + (impact_speed - 1.5) * 0.7, -9.0, -4.0)
	_movement.play()
