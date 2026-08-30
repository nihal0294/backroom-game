extends Node3D

## Reusable physical door. State mutation intentionally lives here so this
## method can become host-authoritative when the real session layer exists.

@export_range(90.0, 110.0, 1.0) var open_angle_degrees := 95.0
@export_range(0.20, 0.80, 0.05) var animation_time := 0.40

@onready var _hinge: Node3D = %Hinge
@onready var _door_body: AnimatableBody3D = %DoorBody

var is_open := false
var _is_animating := false
var _open_angle := 0.0
var _active_tween: Tween


func interact(interactor: Node3D) -> void:
	request_toggle(interactor)


func request_toggle(interactor: Node3D) -> void:
	if _is_animating:
		return
	if is_open:
		_apply_state(false, 0.0)
		return
	var local_interactor := to_local(interactor.global_position)
	var side := 1.0 if local_interactor.z >= 0.0 else -1.0
	_open_angle = deg_to_rad(open_angle_degrees) * side
	_apply_state(true, _open_angle)


func _apply_state(next_open: bool, target_angle: float) -> void:
	# This is the sole world-state mutation point. Future multiplayer plumbing
	# must authorize and replicate this method rather than rotating from Player.
	is_open = next_open
	_is_animating = true
	if _active_tween != null:
		_active_tween.kill()
	_active_tween = create_tween()
	_active_tween.set_trans(Tween.TRANS_SINE)
	_active_tween.set_ease(Tween.EASE_IN_OUT)
	_active_tween.tween_property(_door_body, "rotation:y", target_angle, animation_time)
	_active_tween.tween_callback(_finish_animation)


func _finish_animation() -> void:
	_is_animating = false


func is_animating() -> bool:
	return _is_animating
