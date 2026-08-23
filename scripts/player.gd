extends CharacterBody3D

const MOVE_SPEED := 3.5
const MOUSE_SENSITIVITY := 0.0025
const GRAVITY := 9.8
const CAMERA_PITCH_MIN := deg_to_rad(-89.0)
const CAMERA_PITCH_MAX := deg_to_rad(89.0)

@onready var _camera: Camera3D = $Camera3D

var _mouse_captured: bool = true


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and _mouse_captured:
		rotate_y(-event.relative.x * MOUSE_SENSITIVITY)
		_camera.rotate_x(-event.relative.y * MOUSE_SENSITIVITY)
		_camera.rotation.x = clampf(_camera.rotation.x, CAMERA_PITCH_MIN, CAMERA_PITCH_MAX)
		return

	if event is InputEventKey and event.pressed and not event.echo:
		if event.physical_keycode == KEY_ESCAPE:
			_mouse_captured = not _mouse_captured
			Input.mouse_mode = (
				Input.MOUSE_MODE_CAPTURED if _mouse_captured else Input.MOUSE_MODE_VISIBLE
			)


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= GRAVITY * delta
	else:
		velocity.y = 0.0

	var input_dir := Vector2(
		float(Input.is_physical_key_pressed(KEY_D)) - float(Input.is_physical_key_pressed(KEY_A)),
		float(Input.is_physical_key_pressed(KEY_S)) - float(Input.is_physical_key_pressed(KEY_W))
	)
	var direction := (transform.basis * Vector3(input_dir.x, 0.0, input_dir.y))
	direction.y = 0.0
	if direction.length_squared() > 0.0:
		direction = direction.normalized()
		velocity.x = direction.x * MOVE_SPEED
		velocity.z = direction.z * MOVE_SPEED
	else:
		velocity.x = 0.0
		velocity.z = 0.0

	move_and_slide()
