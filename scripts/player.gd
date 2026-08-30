extends CharacterBody3D

const CharacterStatusScript := preload("res://scripts/characters/character_status.gd")
const InventoryRuntimeScript := preload("res://scripts/characters/inventory_runtime.gd")

@export var walk_speed: float = 3.5
@export var sprint_speed: float = 5.5
@export var jump_velocity: float = 4.2
@export var gravity: float = 9.8
@export var mouse_sensitivity: float = 0.0025

const CAMERA_PITCH_MIN := deg_to_rad(-89.0)
const CAMERA_PITCH_MAX := deg_to_rad(89.0)

@onready var _camera: Camera3D = $Camera3D
@onready var _flashlight: SpotLight3D = $Camera3D/Flashlight
@onready var _interaction_ray: RayCast3D = $Camera3D/InteractionRay
@onready var _status: CharacterStatusScript = $CharacterStatus
@onready var _inventory: InventoryRuntimeScript = $InventoryRuntime
@onready var _ui: CanvasLayer = $PlayerUI
@onready var _audio: Node = %PlayerAudio

var _mouse_captured: bool = true
var _sprint_regen_timer: float = 0.0
var _was_sprinting: bool = false


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	_interaction_ray.add_exception(self)


func is_busy_in_ui() -> bool:
	return _ui.has_method("is_inventory_open") and _ui.is_inventory_open()


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("inventory_toggle") and not event.is_echo():
		_ui.call("toggle_inventory")
		get_viewport().set_input_as_handled()
		return

	if event.is_action_pressed("ui_cancel") and is_busy_in_ui() and not event.is_echo():
		_ui.call("set_inventory_open", false)
		get_viewport().set_input_as_handled()
		return

	if event.is_action_pressed("flashlight_toggle") and not event.is_echo():
		_flashlight.visible = not _flashlight.visible
		_audio.call("play_flashlight_toggle")
		get_viewport().set_input_as_handled()
		return

	for slot_index in InventoryRuntimeScript.QUICK_SLOT_COUNT:
		if event.is_action_pressed("quick_slot_%d" % (slot_index + 1)) and not event.is_echo():
			_inventory.try_use_quick_slot(slot_index)
			get_viewport().set_input_as_handled()
			return


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel") and not is_busy_in_ui() and not event.is_echo():
		_mouse_captured = not _mouse_captured
		Input.mouse_mode = (
			Input.MOUSE_MODE_CAPTURED if _mouse_captured else Input.MOUSE_MODE_VISIBLE
		)
		get_viewport().set_input_as_handled()
		return

	if is_busy_in_ui():
		return

	if event.is_action_pressed("interact") and not event.is_echo():
		_try_interact()
		get_viewport().set_input_as_handled()
		return

	if event is InputEventMouseMotion and _mouse_captured:
		rotate_y(-event.relative.x * mouse_sensitivity)
		_camera.rotate_x(-event.relative.y * mouse_sensitivity)
		_camera.rotation.x = clampf(_camera.rotation.x, CAMERA_PITCH_MIN, CAMERA_PITCH_MAX)


func _try_interact() -> void:
	_interaction_ray.force_raycast_update()
	if not _interaction_ray.is_colliding():
		return
	var target := _interaction_ray.get_collider() as Node
	while target != null and target != get_tree().current_scene:
		if target.has_method("interact"):
			target.call("interact", self)
			return
		target = target.get_parent()



func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta

	if is_busy_in_ui():
		velocity.x = 0.0
		velocity.z = 0.0
		_recover_stamina(delta, false)
		move_and_slide()
		return

	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_velocity

	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction := (transform.basis * Vector3(input_dir.x, 0.0, input_dir.y))
	direction.y = 0.0
	var moving := direction.length_squared() > 0.0
	if moving:
		direction = direction.normalized()

	var sprinting := (
		moving
		and Input.is_action_pressed("sprint")
		and _status.has_stamina()
	)
	if sprinting:
		_status.consume_stamina(_status.stamina_drain_per_second * delta)
		if not _status.has_stamina():
			sprinting = false
		_sprint_regen_timer = _status.stamina_regen_delay
	else:
		_recover_stamina(delta, _was_sprinting)

	_was_sprinting = sprinting
	var speed := sprint_speed if sprinting else walk_speed
	if moving:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = 0.0
		velocity.z = 0.0

	move_and_slide()


func _recover_stamina(delta: float, just_stopped_sprint: bool) -> void:
	if just_stopped_sprint:
		_sprint_regen_timer = _status.stamina_regen_delay
	if _sprint_regen_timer > 0.0:
		_sprint_regen_timer -= delta
		return
	if not _status.is_stamina_full():
		_status.regenerate_stamina(_status.stamina_regen_per_second * delta)
