extends Camera3D

## Temporary noclip camera for inspecting the imported Backrooms VR map.
## This is intentionally separate from the gameplay player/controller.

@export var move_speed := 5.0
@export var fast_move_multiplier := 3.0
@export var mouse_sensitivity := 0.002

var _yaw := 0.0
var _pitch := 0.0


func _ready() -> void:
	_yaw = rotation.y
	_pitch = rotation.x
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if "--capture" in OS.get_cmdline_user_args():
		call_deferred("_capture_preview")


func _exit_tree() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and event.keycode == KEY_ESCAPE:
		Input.mouse_mode = (
			Input.MOUSE_MODE_VISIBLE
			if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED
			else Input.MOUSE_MODE_CAPTURED
		)
		get_viewport().set_input_as_handled()
		return

	if event is InputEventMouseButton and event.pressed and Input.mouse_mode != Input.MOUSE_MODE_CAPTURED:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		get_viewport().set_input_as_handled()
		return

	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		_yaw -= event.relative.x * mouse_sensitivity
		_pitch = clampf(_pitch - event.relative.y * mouse_sensitivity, -1.5, 1.5)
		rotation = Vector3(_pitch, _yaw, 0.0)


func _process(delta: float) -> void:
	var planar_input := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var vertical_input := float(Input.is_physical_key_pressed(KEY_E)) - float(Input.is_physical_key_pressed(KEY_Q))
	var local_direction := Vector3(planar_input.x, vertical_input, planar_input.y)
	if local_direction.is_zero_approx():
		return

	var speed := move_speed
	if Input.is_action_pressed("sprint"):
		speed *= fast_move_multiplier
	global_position += global_basis * local_direction.normalized() * speed * delta


func _capture_preview() -> void:
	for _frame_index in 8:
		await get_tree().process_frame
	var image := get_viewport().get_texture().get_image()
	var output_path := ProjectSettings.globalize_path("res://captures/backrooms_vr_preview.png")
	var save_error := image.save_png(output_path)
	if save_error == OK:
		print("BACKROOMS_VR_CAPTURE: %s" % output_path)
	else:
		push_error("BACKROOMS_VR_CAPTURE: save failed with error %d" % save_error)
	get_tree().quit(save_error)
