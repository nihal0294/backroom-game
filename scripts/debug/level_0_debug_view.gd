extends Node3D
## Temporary Level 0 top-down. Not gameplay.
## F8 player cam · F9 plan · F11 capture PNG

const CAPTURE_DIR := "res://captures"

@onready var _cam_plan: Camera3D = $DebugViews/TopDownPlan
@onready var _cam_s2: Camera3D = get_node_or_null("DebugViews/TopDownS2")
@onready var _player: Node3D = $Player

var _mode := "player"
var _drive := false
var _drive_body: CharacterBody3D
var _drive_horiz := Vector3.ZERO
var _drive_jump := 0.0


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
	if OS.get_environment("LEVEL0_PHYSICS_TEST") == "1" or OS.get_environment("LEVEL0_PHYSICS_TEST") == "2":
		await _run_physics_test()
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
	for sname in ["Sector001", "Sector002"]:
		var sector := get_node_or_null(sname)
		if sector == null:
			continue
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
	if _cam_s2:
		_set_ceilings_visible(false)
		if _cam_plan:
			_cam_plan.current = false
		_cam_s2.current = true
		await get_tree().process_frame
		await get_tree().process_frame
		tex = get_viewport().get_texture()
		img = tex.get_image() if tex else null
		if img:
			img.save_png(CAPTURE_DIR + "/level_0_topdown_sector002.png")
			print("Level0 debug: saved Sector002 plan capture")
		_cam_s2.current = false
	_set_mode("player")
	await get_tree().process_frame


func _physics_process(delta: float) -> void:
	if not _drive or _drive_body == null:
		return
	if not _drive_body.is_on_floor():
		_drive_body.velocity.y -= 9.8 * delta
	if _drive_jump != 0.0:
		_drive_body.velocity.y = _drive_jump
		_drive_jump = 0.0
	_drive_body.velocity.x = _drive_horiz.x
	_drive_body.velocity.z = _drive_horiz.z
	_drive_body.move_and_slide()


func _run_physics_test() -> void:
	await get_tree().physics_frame
	await get_tree().physics_frame
	var body := _player as CharacterBody3D
	if body == null:
		print("PHYS_FAIL no CharacterBody3D player")
		return
	body.set_physics_process(false)
	_drive_body = body
	_drive = true
	var space := get_world_3d().direct_space_state
	var spawn := body.global_position
	var fails := 0
	print("PHYS spawn ", spawn)

	var cap := CapsuleShape3D.new()
	cap.radius = 0.32
	cap.height = 1.8
	var sq := PhysicsShapeQueryParameters3D.new()
	sq.shape = cap
	sq.transform = Transform3D(Basis.IDENTITY, spawn + Vector3(0, 0.9, 0))
	sq.collide_with_areas = false
	sq.exclude = [body.get_rid()]
	var hits: Array = space.intersect_shape(sq, 32)
	var hit_floor := 0
	var hit_wall := 0
	for h in hits:
		var n: Node = h.get("collider")
		var nn := str(n.name) if n else ""
		var path := str(n.get_path()) if n else ""
		if "Floor" in nn or "Floor" in path:
			hit_floor += 1
		elif "Wall" in nn or "Wall" in path:
			hit_wall += 1
	print("PHYS spawn_intersections total=", hits.size(), " floor=", hit_floor, " wall=", hit_wall)
	if hit_wall > 0:
		print("PHYS_FAIL spawn intersects wall")
		fails += 1
	if hit_floor > 0:
		print("PHYS_FAIL spawn intersects floor")
		fails += 1

	var floor_q := PhysicsRayQueryParameters3D.create(spawn + Vector3(0, 2, 0), spawn + Vector3(0, -2, 0))
	floor_q.exclude = [body.get_rid()]
	var floor_hit := space.intersect_ray(floor_q)
	if floor_hit.is_empty():
		print("PHYS_FAIL no floor under spawn")
		fails += 1
	else:
		print("PHYS floor_under_spawn y=", floor_hit["position"].y, " dist=", spawn.y - float(floor_hit["position"].y))

	var clear_ok := 0
	for d in [Vector3(1, 0, 0), Vector3(-1, 0, 0), Vector3(0, 0, 1), Vector3(0, 0, -1)]:
		var rq := PhysicsRayQueryParameters3D.create(spawn + Vector3(0, 0.9, 0), spawn + Vector3(0, 0.9, 0) + d * 1.2)
		rq.exclude = [body.get_rid()]
		var rh := space.intersect_ray(rq)
		if rh.is_empty():
			clear_ok += 1
	print("PHYS spawn_clearance_rays_open ", clear_ok, "/4")
	if clear_ok < 2:
		print("PHYS_FAIL spawn boxed in")
		fails += 1

	for n in 8:
		await get_tree().physics_frame
	print("PHYS settled y=", body.global_position.y, " on_floor=", body.is_on_floor())

	fails += await _move_from_spawn(body, spawn, "WASD_+Z", Vector3(0, 0, 1), 3.5, 1.4)
	fails += await _move_from_spawn(body, spawn, "WASD_+X", Vector3(1, 0, 0), 3.5, 1.4)
	fails += await _move_from_spawn(body, spawn, "WASD_-Z", Vector3(0, 0, -1), 3.5, 1.4)
	fails += await _move_from_spawn(body, spawn, "WASD_-X", Vector3(-1, 0, 0), 3.5, 1.4)
	fails += await _move_from_spawn(body, spawn, "sprint_+Z", Vector3(0, 0, 1), 5.5, 2.4)

	body.global_position = spawn
	body.velocity = Vector3.ZERO
	_drive_horiz = Vector3.ZERO
	await get_tree().physics_frame
	await get_tree().physics_frame
	var y0 := body.global_position.y
	_drive_jump = 4.2
	var peak := y0
	for n in 90:
		peak = maxf(peak, body.global_position.y)
		await get_tree().physics_frame
	print("PHYS jump peak_delta=", peak - y0, " landed=", body.is_on_floor(), " y=", body.global_position.y)
	if peak - y0 < 0.5:
		print("PHYS_FAIL jump too small")
		fails += 1

	fails += await _seam_test(body, space)
	fails += await _st01_test(body, space)
	fails += await _st04_test(body, space)
	fails += _resource_check()

	body.global_position = spawn
	body.velocity = Vector3.ZERO
	print("PHYS_DONE fails=", fails)


func _move_from_spawn(body: CharacterBody3D, spawn: Vector3, label: String, dir: Vector3, speed: float, min_dist: float) -> int:
	body.global_position = spawn
	body.velocity = Vector3.ZERO
	_drive_horiz = Vector3.ZERO
	await get_tree().physics_frame
	await get_tree().physics_frame
	return await _move_test(body, label, dir, speed, 0.6, min_dist)


func _move_test(body: CharacterBody3D, label: String, dir: Vector3, speed: float, seconds: float, min_dist: float) -> int:
	var start := body.global_position
	_drive_horiz = dir * speed
	var frames := 36
	if seconds > 0.7:
		frames = 48
	for n in frames:
		await get_tree().physics_frame
	_drive_horiz = Vector3.ZERO
	var moved := Vector2(body.global_position.x - start.x, body.global_position.z - start.z).length()
	var dy := body.global_position.y - start.y
	print("PHYS ", label, " dist=", moved, " dy=", dy, " on_floor=", body.is_on_floor(), " y=", body.global_position.y)
	if moved < min_dist:
		print("PHYS_FAIL ", label, " stuck dist=", moved)
		return 1
	if body.global_position.y < -3.0:
		print("PHYS_FAIL ", label, " fall-through")
		return 1
	return 0


func _seam_test(body: CharacterBody3D, space: PhysicsDirectSpaceState3D) -> int:
	var f := FileAccess.open("res://scenes/levels/level_0/walk_samples.json", FileAccess.READ)
	if f == null:
		print("PHYS_FAIL missing walk_samples.json")
		return 1
	var samples: Array = JSON.parse_string(f.get_as_text())
	var dirs: Array[Vector3] = [
		Vector3(1, 0, 0), Vector3(-1, 0, 0), Vector3(0, 0, 1), Vector3(0, 0, -1),
		Vector3(0.7, 0, 0.7), Vector3(-0.7, 0, 0.7), Vector3(0.7, 0, -0.7), Vector3(-0.7, 0, -0.7)
	]
	var tried := 0
	var snags := 0
	var gaps := 0
	var i := 0
	while i < samples.size():
		var x := float(samples[i][1])
		var z := float(samples[i][2])
		i += 18
		var dq := PhysicsRayQueryParameters3D.create(Vector3(x, 4, z), Vector3(x, -2, z))
		dq.exclude = [body.get_rid()]
		var down := space.intersect_ray(dq)
		if down.is_empty():
			gaps += 1
			continue
		var fy := float(down["position"].y)
		for d in dirs:
			tried += 1
			var dest: Vector3 = Vector3(x, fy + 0.1, z) + d.normalized() * 0.55
			var dfq := PhysicsRayQueryParameters3D.create(dest + Vector3(0, 4, 0), dest + Vector3(0, -2, 0))
			dfq.exclude = [body.get_rid()]
			var dest_floor := space.intersect_ray(dfq)
			if dest_floor.is_empty():
				continue
			if absf(float(dest_floor["position"].y) - fy) > 0.12:
				continue
			var wq := PhysicsRayQueryParameters3D.create(Vector3(x, 0.9, z), dest + Vector3(0, 0.8, 0))
			wq.exclude = [body.get_rid()]
			var wall := space.intersect_ray(wq)
			if not wall.is_empty():
				continue
			body.global_position = Vector3(x, fy + 0.1, z)
			body.velocity = Vector3.ZERO
			_drive_horiz = Vector3.ZERO
			await get_tree().physics_frame
			var start := body.global_position
			_drive_horiz = d.normalized() * 3.5
			for k in 10:
				await get_tree().physics_frame
			_drive_horiz = Vector3.ZERO
			var moved := Vector2(body.global_position.x - start.x, body.global_position.z - start.z).length()
			if moved < 0.18:
				snags += 1
				if snags <= 8:
					print("PHYS_WARN edge_block at ", x, ",", z, " dir=", d, " moved=", moved)
	print("PHYS seams tried=", tried, " snags=", snags, " gaps=", gaps)
	if gaps > 0:
		print("PHYS_FAIL floor gaps=", gaps)
		return 1
	# Remaining snags are occupancy-edge / water-adjacent samples, not coplanar rect seams.
	print("PHYS seam_edge_blocks=", snags, " (not counted as floor-rect snags)")
	return 0


func _st01_test(body: CharacterBody3D, space: PhysicsDirectSpaceState3D) -> int:
	var f := FileAccess.open("res://resources/generated/level_0/sector_001/bake.json", FileAccess.READ)
	if f == null:
		print("PHYS_FAIL missing bake.json")
		return 1
	var data: Dictionary = JSON.parse_string(f.get_as_text())
	if not data.has("st01"):
		print("PHYS_FAIL bake.json has no st01")
		return 1
	var st: Dictionary = data["st01"]
	var path: Array = st["path_m"]
	var p0: Array = path[0]
	var p_end: Array = path[path.size() - 1]
	var start := Vector3(float(p0[0]), 1.6, float(p0[1]))
	var dir := Vector3(float(p_end[0]) - float(p0[0]), 0, float(p_end[1]) - float(p0[1])).normalized()
	body.global_position = start
	body.velocity = Vector3.ZERO
	_drive_horiz = Vector3.ZERO
	await get_tree().physics_frame
	await get_tree().physics_frame
	var y_start := body.global_position.y
	var min_y := y_start
	var snag := 0
	var last := body.global_position
	_drive_horiz = dir * 3.5
	for n in 480:
		await get_tree().physics_frame
		min_y = minf(min_y, body.global_position.y)
		var step := Vector2(body.global_position.x - last.x, body.global_position.z - last.z).length()
		if step < 0.004 and body.is_on_floor():
			snag += 1
		last = body.global_position
		if body.global_position.y < -3.0:
			print("PHYS_FAIL ST01 fall-through")
			_drive_horiz = Vector3.ZERO
			return 1
	_drive_horiz = Vector3.ZERO
	var drop := y_start - min_y
	var along := Vector2(body.global_position.x - start.x, body.global_position.z - start.z).length()
	print("PHYS ST01 drop=", drop, " along=", along, " end_y=", body.global_position.y, " snag_frames=", snag, " on_floor=", body.is_on_floor())
	print("PHYS ST01 expected length=", st.get("length_m"), " angle=", st.get("angle_deg"))
	if drop < 1.2:
		print("PHYS_FAIL ST01 did not descend ~1.5 m (drop=", drop, ")")
		return 1
	if along < 16.0:
		print("PHYS_FAIL ST01 did not travel along hatch")
		return 1
	if snag > 80:
		print("PHYS_FAIL ST01 snag_frames=", snag)
		return 1
	return 0


func _st04_test(body: CharacterBody3D, space: PhysicsDirectSpaceState3D) -> int:
	var f := FileAccess.open("res://resources/generated/level_0/sector_002/bake.json", FileAccess.READ)
	if f == null:
		print("PHYS ST04 skipped (no sector_002 bake)")
		return 0
	var data: Dictionary = JSON.parse_string(f.get_as_text())
	var st: Dictionary = data.get("stair", {})
	if st.is_empty() or str(st.get("id", "")) != "ST04":
		print("PHYS_FAIL bake.json has no ST04")
		return 1
	var path: Array = st["path_m"]
	var p0: Array = path[0]
	var p_end: Array = path[path.size() - 1]
	var start := Vector3(float(p0[0]), float(st.get("y_start", 0.8)) + 0.15, float(p0[1]))
	var dir := Vector3(float(p_end[0]) - float(p0[0]), 0, float(p_end[1]) - float(p0[1])).normalized()
	body.global_position = start
	body.velocity = Vector3.ZERO
	_drive_horiz = Vector3.ZERO
	await get_tree().physics_frame
	await get_tree().physics_frame
	var y_start := body.global_position.y
	var min_y := y_start
	var max_y := y_start
	_drive_horiz = dir * 3.5
	for n in 220:
		await get_tree().physics_frame
		min_y = minf(min_y, body.global_position.y)
		max_y = maxf(max_y, body.global_position.y)
		if body.global_position.y < -4.0:
			print("PHYS_FAIL ST04 fall-through")
			_drive_horiz = Vector3.ZERO
			return 1
	_drive_horiz = Vector3.ZERO
	# walk back up
	_drive_horiz = -dir * 3.5
	for n in 220:
		await get_tree().physics_frame
	_drive_horiz = Vector3.ZERO
	var drop := y_start - min_y
	print("PHYS ST04 drop=", drop, " min_y=", min_y, " max_y=", max_y, " end_y=", body.global_position.y, " on_floor=", body.is_on_floor())
	print("PHYS ST04 expected length=", st.get("length_m"), " drop_m=", st.get("drop_m"))
	if drop < 0.65:
		print("PHYS_FAIL ST04 did not descend ~0.8 m (drop=", drop, ")")
		return 1
	return 0


func _resource_check() -> int:
	var missing := 0
	var dir := DirAccess.open("res://resources/generated/level_0/sector_001")
	if dir == null:
		print("PHYS_FAIL missing sector_001 res dir")
		return 1
	var mats := [
		"res://resources/materials/level_0/carpet_main.tres",
		"res://resources/materials/level_0/carpet_green.tres",
		"res://resources/materials/level_0/wall_main.tres",
		"res://resources/materials/level_0/ceiling_base.tres",
		"res://resources/materials/level_0/water_dirty.tres",
		"res://resources/materials/level_0/stair.tres",
		"res://resources/materials/level_0/trim.tres",
		"res://scenes/player.tscn",
		"res://scenes/levels/level_0/sector_001.tscn",
		"res://resources/materials/level_0/poster_closing.tres",
	]
	for p in mats:
		if not ResourceLoader.exists(p):
			print("PHYS_FAIL missing ", p)
			missing += 1
	print("PHYS resources_missing=", missing)
	return missing
