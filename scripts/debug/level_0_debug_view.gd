extends Node3D
## Temporary Level 0 top-down / stair probe. Not gameplay.
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
	var args := OS.get_cmdline_user_args()
	var capture := "--capture-topdown" in args or OS.get_environment("LEVEL0_CAPTURE") == "1"
	if capture:
		await get_tree().process_frame
		await get_tree().process_frame
		await get_tree().process_frame
		await _capture_all()
		get_tree().quit()
		return
	if OS.get_environment("LEVEL0_STAIR_TEST") == "1":
		await get_tree().process_frame
		await get_tree().physics_frame
		await _probe_stairs()
		get_tree().quit()
		return
	if OS.get_environment("LEVEL0_FPS_SHOT") == "1":
		await get_tree().process_frame
		await get_tree().process_frame
		await get_tree().process_frame
		DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(CAPTURE_DIR))
		var img := get_viewport().get_texture().get_image()
		if img:
			img.save_png(CAPTURE_DIR + "/level_0_fps_spawn.png")
			print("Level0 debug: saved FPS spawn shot")
		get_tree().quit()
		return


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


func _capture_all() -> void:
	DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(CAPTURE_DIR))
	await _snap("gf", CAPTURE_DIR + "/level_0_topdown_gf.png")
	await _snap("uf", CAPTURE_DIR + "/level_0_topdown_uf.png")
	_set_mode("player")
	print("Level0 debug: wrote top-down captures in ", CAPTURE_DIR)


func _snap(mode: String, path: String) -> void:
	_set_mode(mode)
	await get_tree().process_frame
	await get_tree().process_frame
	var img := get_viewport().get_texture().get_image()
	if img:
		img.flip_x()
		img.save_png(path)
		print("Level0 debug: saved ", path)


func _probe_stairs() -> void:
	var body := _player as CharacterBody3D
	if body == null:
		push_error("Level0 stair probe: no CharacterBody3D")
		return
	body.set_physics_process(false)
	var ids: Array[String] = ["STAIR_A", "STAIR_B", "STAIR_C"]
	for sid in ids:
		var well := get_node_or_null("Stairwells/" + sid) as Node3D
		if well == null:
			print("STAIR PROBE FAIL ", sid, " missing")
			continue
		var p19 := well.get_node_or_null("P19") as Node3D
		var p20 := well.get_node_or_null("P20") as Node3D
		if p19 == null or p20 == null:
			print("STAIR PROBE FAIL ", sid, " missing ramps")
			continue
		await _walk_ramp_node(body, sid, "up1", p19, false)
		await _walk_ramp_node(body, sid, "up2", p20, false)
		await _walk_ramp_node(body, sid, "dn2", p20, true)
		await _walk_ramp_node(body, sid, "dn1", p19, true)
	body.set_physics_process(true)


func _walk_ramp_node(body: CharacterBody3D, sid: String, tag: String, ramp: Node3D, descending: bool) -> void:
	var along: Vector3 = ramp.global_transform.basis.z
	if along.y < 0.0:
		along = -along
	if descending:
		along = -along
	var dir := Vector3(along.x, 0.0, along.z).normalized()
	var from: Vector3 = ramp.global_position + ramp.global_transform.basis.y * 0.16
	if descending:
		from += along.normalized() * 1.1
	else:
		from -= along.normalized() * 1.1
	from.y = ramp.global_position.y + (1.1 if descending else -0.55)
	from.y = maxf(from.y, 0.05)
	await _walk_dir(body, sid, tag, from, dir, 2.6)


func _walk_dir(body: CharacterBody3D, sid: String, tag: String, from: Vector3, dir: Vector3, dist: float) -> void:
	body.global_position = from
	body.velocity = Vector3.ZERO
	var start_y := from.y
	var blocked := 0
	var frames := int(dist / 0.055) + 8
	for i in range(frames):
		body.velocity.x = dir.x * 3.4
		body.velocity.z = dir.z * 3.4
		body.velocity.y -= 9.8 * 0.016
		body.move_and_slide()
		if body.is_on_wall():
			blocked += 1
		await get_tree().physics_frame
	var dy: float = body.global_position.y - start_y
	var ok := blocked < 20
	if tag.begins_with("up"):
		ok = ok and dy > 0.7
	else:
		ok = ok and dy < -0.5
	print(
		"STAIR PROBE ",
		sid,
		" ",
		tag,
		" dy=",
		snapped(dy, 0.01),
		" wall_hits=",
		blocked,
		" y=",
		snapped(body.global_position.y, 0.01),
		" ok=",
		ok
	)
