extends Node3D
## Temporary Level 0 top-down debug. Not gameplay.
## F8 player cam · F9 ground plan · F10 upper plan · F11 capture PNG

const CAPTURE_DIR := "res://captures"

@onready var _ground: Node3D = $GroundFloor
@onready var _upper: Node3D = $UpperFloor
@onready var _cam_gf: Camera3D = $DebugViews/TopDownGround
@onready var _cam_uf: Camera3D = $DebugViews/TopDownUpper
@onready var _player: Node3D = $Player

var _mode := "player"


func _ready() -> void:
	if _cam_gf:
		_cam_gf.current = false
	if _cam_uf:
		_cam_uf.current = false
	print("Level0 debug ready. user_args=", OS.get_cmdline_user_args())
	var args := OS.get_cmdline_user_args()
	var capture := "--capture-topdown" in args or OS.get_environment("LEVEL0_CAPTURE") == "1"
	var crumb := FileAccess.open("user://level0_debug.txt", FileAccess.WRITE)
	if crumb:
		crumb.store_string("ready capture=%s args=%s\n" % [capture, str(args)])
		crumb.close()
	if capture:
		await get_tree().process_frame
		await get_tree().process_frame
		await get_tree().process_frame
		_audit_spawn()
		await _capture_all()
		get_tree().quit()


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey and event.pressed and not event.echo):
		return
	match event.physical_keycode:
		KEY_F8:
			_set_mode("player")
			get_viewport().set_input_as_handled()
		KEY_F9:
			_set_mode("gf")
			get_viewport().set_input_as_handled()
		KEY_F10:
			_set_mode("uf")
			get_viewport().set_input_as_handled()
		KEY_F11:
			_capture_all()
			get_viewport().set_input_as_handled()


func _set_ceilings_visible(vis: bool) -> void:
	for path in ["GroundFloor/_Ceilings", "UpperFloor/_Ceilings", "Stairwells/_Ceilings"]:
		var n := get_node_or_null(path)
		if n:
			n.visible = vis


func _set_player_ui_visible(vis: bool) -> void:
	if _player == null:
		return
	for child in _player.get_children():
		if child is CanvasLayer:
			child.visible = vis


func _set_mode(mode: String) -> void:
	_mode = mode
	var player_cam := _player.get_node_or_null("Camera3D") as Camera3D
	match mode:
		"player":
			_ground.visible = true
			_upper.visible = true
			_set_ceilings_visible(true)
			_set_player_ui_visible(true)
			if _player:
				_player.visible = true
			if player_cam:
				player_cam.current = true
			if _cam_gf:
				_cam_gf.current = false
			if _cam_uf:
				_cam_uf.current = false
		"gf":
			_ground.visible = true
			_upper.visible = false
			_set_ceilings_visible(false)
			_set_player_ui_visible(false)
			if _player:
				_player.visible = false
			if _cam_gf:
				_cam_gf.current = true
		"uf":
			_ground.visible = false
			_upper.visible = true
			_set_ceilings_visible(false)
			_set_player_ui_visible(false)
			if _player:
				_player.visible = false
			if _cam_uf:
				_cam_uf.current = true


func _audit_spawn() -> void:
	if _player == null:
		push_warning("Level0 debug: no Player")
		return
	var body := _player as CharacterBody3D
	var origin: Vector3 = _player.global_position
	print("Level0 debug: spawn ", origin)
	var space := get_world_3d().direct_space_state
	var from := origin + Vector3(0, 1.68, 0)
	var down := PhysicsRayQueryParameters3D.create(from, from + Vector3(0, -3, 0))
	down.exclude = [body.get_rid()] if body else []
	var hit := space.intersect_ray(down)
	if hit.is_empty():
		push_warning("Level0 debug: spawn camera ray hit NOTHING below")
	else:
		print("Level0 debug: floor under spawn at y=", hit.position.y)
	if body:
		var dirs: Array[Vector3] = [Vector3.FORWARD, Vector3.BACK, Vector3.LEFT, Vector3.RIGHT]
		for dir in dirs:
			var motion: Vector3 = dir * 1.2
			var blocked: bool = body.test_move(body.global_transform, motion)
			print("Level0 debug: test_move ", dir, " blocked=", blocked)


func _capture_all() -> void:
	DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(CAPTURE_DIR))
	await _snap("gf", CAPTURE_DIR + "/level_0_topdown_gf.png")
	await _snap("uf", CAPTURE_DIR + "/level_0_topdown_uf.png")
	_set_mode("player")
	print("Level0 debug: wrote top-down captures in ", CAPTURE_DIR)


func _set_labels_visible(vis: bool) -> void:
	for n in get_tree().get_nodes_in_group("region_label"):
		n.visible = vis


func _snap(mode: String, path: String) -> void:
	_set_mode(mode)
	_set_labels_visible(false)
	await get_tree().process_frame
	await get_tree().process_frame
	var img := get_viewport().get_texture().get_image()
	if img:
		# Ortho cam uses X = -world X so north stays up; flip for west-left maps.
		img.flip_x()
		img.save_png(path)
		print("Level0 debug: saved ", path)
	_set_labels_visible(true)
