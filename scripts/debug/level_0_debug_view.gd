extends Node3D
## Temporary Level 0 top-down. Not gameplay.
## F8 player cam · F9 plan · F11 capture PNG

const CAPTURE_DIR := "res://captures"

@onready var _cam_plan: Camera3D = $DebugViews/TopDownPlan
@onready var _player: Node3D = $Player

var _mode := "player"


func _ready() -> void:
	if _cam_plan:
		_cam_plan.current = false
	var capture := "--capture-topdown" in OS.get_cmdline_user_args() or OS.get_environment("LEVEL0_CAPTURE") == "1"
	if capture:
		await get_tree().process_frame
		await get_tree().process_frame
		await get_tree().process_frame
		await _capture_all()
		get_tree().quit()
		return
	if OS.get_environment("LEVEL0_WALK_TEST") == "1":
		await get_tree().physics_frame
		await get_tree().physics_frame
		var space := get_world_3d().direct_space_state
		var fails := 0
		var ok := 0
		var f := FileAccess.open("res://scenes/levels/level_0/walk_samples.json", FileAccess.READ)
		if f == null:
			print("WALK_FAIL missing walk_samples.json")
			get_tree().quit()
			return
		var samples: Array = JSON.parse_string(f.get_as_text())
		for sample in samples:
			var x := float(sample[1])
			var z := float(sample[2])
			var q := PhysicsRayQueryParameters3D.create(Vector3(x, 4.0, z), Vector3(x, -2.0, z))
			q.collide_with_areas = false
			var hit := space.intersect_ray(q)
			if hit.is_empty():
				fails += 1
				if fails <= 8:
					print("WALK_FAIL no floor at ", x, ",", z)
			else:
				ok += 1
		print("Level0 walk: ok=", ok, " fail=", fails)
		get_tree().quit()
		return
	if OS.get_environment("LEVEL0_FPS_SHOT") == "1":
		await get_tree().process_frame
		await get_tree().process_frame
		await get_tree().process_frame
		DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(CAPTURE_DIR))
		var tex := get_viewport().get_texture()
		var img := tex.get_image() if tex else null
		if img:
			img.save_png(CAPTURE_DIR + "/level_0_fps_spawn.png")
			print("Level0 debug: saved FPS spawn shot")
		else:
			print("Level0 debug: no viewport texture (headless dummy renderer)")
		get_tree().quit()
		return


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey and event.pressed and not event.echo):
		return
	match event.physical_keycode:
		KEY_F8:
			_set_mode("player")
			get_viewport().set_input_as_handled()
		KEY_F9, KEY_F10:
			_set_mode("plan")
			get_viewport().set_input_as_handled()
		KEY_F11:
			_capture_all()
			get_viewport().set_input_as_handled()


func _set_ceilings_visible(vis: bool) -> void:
	var sector := get_node_or_null("Sector001")
	if sector == null:
		return
	for child in sector.get_children():
		var ceilings := child.get_node_or_null("Ceilings")
		if ceilings:
			ceilings.visible = vis


func _set_player_ui_visible(vis: bool) -> void:
	if _player == null:
		return
	for child in _player.get_children():
		if child is CanvasLayer:
			child.visible = vis


func _set_mode(mode: String) -> void:
	_mode = mode
	if mode == "player":
		_set_ceilings_visible(true)
		_set_player_ui_visible(true)
		if _cam_plan:
			_cam_plan.current = false
		var cam := _player.get_node_or_null("Camera3D") if _player else null
		if cam:
			cam.current = true
	else:
		_set_ceilings_visible(false)
		_set_player_ui_visible(false)
		if _player:
			var cam := _player.get_node_or_null("Camera3D")
			if cam:
				cam.current = false
		if _cam_plan:
			_cam_plan.current = true


func _capture_all() -> void:
	DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(CAPTURE_DIR))
	_set_mode("plan")
	await get_tree().process_frame
	await get_tree().process_frame
	var tex := get_viewport().get_texture()
	var img := tex.get_image() if tex else null
	if img:
		img.save_png(CAPTURE_DIR + "/level_0_topdown_pilot.png")
		print("Level0 debug: saved plan capture")
	else:
		print("Level0 debug: no viewport texture for plan capture")
	_set_mode("player")
	await get_tree().process_frame
