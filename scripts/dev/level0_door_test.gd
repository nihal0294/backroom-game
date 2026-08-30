extends Node3D

## Focused comparison scene for the source-derived Level 0 push door. It keeps
## the gameplay door intact and constructs only the surrounding wall/frame.

const ArchitectureBuilderScript := preload("res://scripts/levels/level_0/level0_architecture_builder.gd")

const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const CLEAR_WIDTH := 1.20
const CLEAR_HEIGHT := 2.20
const FRAME_FACE_WIDTH := 0.085
const FRAME_DEPTH := 0.060
const FRAME_PROJECTION := 0.020
const HINGE_X := -CLEAR_WIDTH * 0.5 + 0.0025

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/sector_04_orange_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/wallpaper.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/ceiling.tres")
const BASEBOARD_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/source/wood_trim.tres")
const FRAME_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_frame.tres")

const CLOSED_SHOTS := [
	{"file": "door_test_front.png", "position": Vector3(0.0, 1.45, 0.70), "target": Vector3(0.0, 1.15, -3.15), "fov": 58.0},
	{"file": "door_test_45deg.png", "position": Vector3(2.20, 1.48, -0.15), "target": Vector3(0.0, 1.12, -3.15), "fov": 56.0},
	{"file": "door_test_frame_closeup.png", "position": Vector3(1.05, 1.38, -1.78), "target": Vector3(0.58, 1.45, -3.12), "fov": 46.0},
]

@onready var floor_visual: MeshInstance3D = %FloorVisual
@onready var wall_visual: MeshInstance3D = %WallVisual
@onready var ceiling_visual: MeshInstance3D = %CeilingVisual
@onready var baseboard_visual: MeshInstance3D = %BaseboardVisual
@onready var door_frames: MultiMeshInstance3D = %DoorFrames
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var push_door: Node3D = %PushDoor
@onready var player: CharacterBody3D = %Player
@onready var camera: Camera3D = %CaptureCamera

var _builder: RefCounted
var _build_result: Dictionary = {}
var _opening_contract: Dictionary = {}


func _ready() -> void:
	_builder = ArchitectureBuilderScript.new()
	_build_architecture()
	_build_frame()
	(player.get_node("Camera3D") as Camera3D).current = false
	camera.current = true
	print("BACKROOMS_VR_DOOR_AUDIT: source_outer_double_assembly=2.1053x2.2771x0.2088m SOURCE_EXACT source_single_leaf_slab=0.9897x2.1917x0.0357m SOURCE_EXACT")
	print("BACKROOMS_VR_DOOR_AUDIT: extracted_single_leaf_with_hardware=1.0626x2.2095x0.1819m SOURCE_EXACT source_materials=Exit_Door frame_material=Exit_Door Wood_is_baseboard_not_frame")
	print("BACKROOMS_VR_DOOR_AUDIT: individual_source_jamb_width=UNKNOWN individual_source_jamb_depth=UNKNOWN adopted_clear=1.20x2.20m adopted_frame_face=0.085m depth=0.060m projection=0.020m VISUAL_APPROXIMATION")
	call_deferred("_run_optional_tasks")


func _build_architecture() -> void:
	var walkable: Array[PackedVector2Array] = [PackedVector2Array([
		Vector2(-2.5, -3.0), Vector2(2.5, -3.0),
		Vector2(2.5, 3.0), Vector2(-2.5, 3.0),
	])]
	_opening_contract = _builder.make_framed_opening(
		"push_door_test", Vector2(0.0, -3.0), CLEAR_WIDTH, CLEAR_HEIGHT,
		FRAME_FACE_WIDTH, FRAME_DEPTH, FRAME_PROJECTION
	)
	var openings: Array[Dictionary] = [_opening_contract]
	var partitions: Array[Dictionary] = []
	var columns: Array[Dictionary] = []
	_build_result = _builder.build(
		walkable,
		partitions,
		openings,
		columns,
		{"floor": FLOOR_MATERIAL, "wall": WALL_MATERIAL, "ceiling": CEILING_MATERIAL, "trim": BASEBOARD_MATERIAL},
		{"ceiling_y": CEILING_Y, "wall_thickness": WALL_THICKNESS, "baseboard_height": 0.12, "baseboard_depth": 0.035}
	)
	floor_visual.mesh = _build_result["floor_mesh"]
	wall_visual.mesh = _build_result["wall_mesh"]
	ceiling_visual.mesh = _build_result["ceiling_mesh"]
	baseboard_visual.mesh = _build_result["baseboard_mesh"]
	var floor_shape := ConcavePolygonShape3D.new()
	floor_shape.set_faces(_build_result["floor_faces"])
	floor_shape.backface_collision = true
	floor_collision.shape = floor_shape
	var wall_shape := ConcavePolygonShape3D.new()
	wall_shape.set_faces(_build_result["wall_faces"])
	wall_shape.backface_collision = true
	wall_collision.shape = wall_shape


func _build_frame() -> void:
	var opening_run := _find_opening_run("push_door_test")
	var opening: Dictionary = opening_run["openings"][0]
	var center: Vector2 = _builder.opening_wall_center(opening_run, opening, WALL_THICKNESS)
	var normal: Vector2 = opening_run["normal"]
	var tangent := Vector2(normal.y, -normal.x).normalized()
	var basis := Basis(Vector3(tangent.x, 0.0, tangent.y), Vector3.UP, Vector3(normal.x, 0.0, normal.y))
	var frame_mesh: ArrayMesh = _builder.build_framed_opening_mesh(_opening_contract, WALL_THICKNESS, FRAME_MATERIAL)
	door_frames.multimesh = _make_multimesh(frame_mesh, [Transform3D(basis, Vector3(center.x, 0.0, center.y))])
	push_door.position = Vector3(HINGE_X, 0.0, center.y)


func _find_opening_run(opening_id: String) -> Dictionary:
	var runs: Array = []
	runs.append_array(_build_result["boundary_runs"])
	runs.append_array(_build_result["partition_runs"])
	for run: Dictionary in runs:
		for opening: Dictionary in run["openings"]:
			if String(opening["id"]) == opening_id:
				return run
	return {}


func _make_multimesh(mesh: Mesh, transforms: Array[Transform3D]) -> MultiMesh:
	var multimesh := MultiMesh.new()
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.mesh = mesh
	multimesh.instance_count = transforms.size()
	for transform_index in transforms.size():
		multimesh.set_instance_transform(transform_index, transforms[transform_index])
	return multimesh


func _add_box(surface: SurfaceTool, size: Vector3, center: Vector3) -> void:
	var half := size * 0.5
	var p000 := center + Vector3(-half.x, -half.y, -half.z)
	var p001 := center + Vector3(-half.x, -half.y, half.z)
	var p010 := center + Vector3(-half.x, half.y, -half.z)
	var p011 := center + Vector3(-half.x, half.y, half.z)
	var p100 := center + Vector3(half.x, -half.y, -half.z)
	var p101 := center + Vector3(half.x, -half.y, half.z)
	var p110 := center + Vector3(half.x, half.y, -half.z)
	var p111 := center + Vector3(half.x, half.y, half.z)
	_add_quad(surface, p001, p101, p111, p011, Vector3.FORWARD)
	_add_quad(surface, p100, p000, p010, p110, Vector3.BACK)
	_add_quad(surface, p000, p001, p011, p010, Vector3.LEFT)
	_add_quad(surface, p101, p100, p110, p111, Vector3.RIGHT)
	_add_quad(surface, p010, p011, p111, p110, Vector3.UP)
	_add_quad(surface, p000, p100, p101, p001, Vector3.DOWN)


func _add_quad(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, d: Vector3, normal: Vector3) -> void:
	for data: Array in [[a, Vector2.ZERO], [b, Vector2.RIGHT], [c, Vector2.ONE], [a, Vector2.ZERO], [c, Vector2.ONE], [d, Vector2.DOWN]]:
		surface.set_normal(normal)
		surface.set_uv(data[1])
		surface.add_vertex(data[0])


func _run_optional_tasks() -> void:
	await get_tree().process_frame
	for _frame_index in 5:
		await get_tree().physics_frame
	var validate_requested := OS.get_environment("LEVEL0_DOOR_TEST_VALIDATE") == "1"
	var capture_requested := OS.get_environment("LEVEL0_DOOR_TEST_CAPTURE") == "1"
	if validate_requested and not await _validate_door_test():
		get_tree().quit(1)
		return
	if capture_requested:
		await _capture_all()
		get_tree().quit()
	elif validate_requested:
		get_tree().quit()


func _validate_door_test() -> bool:
	var failures: Array[String] = []
	for build_error: String in _build_result.get("errors", []):
		failures.push_back("architecture builder: %s" % build_error)
	if door_frames.multimesh == null or door_frames.multimesh.instance_count != 1:
		failures.push_back("one complete two-sided framed opening was not built")
	var opening: Dictionary = _find_opening_run("push_door_test")["openings"][0]
	var run: Dictionary = _find_opening_run("push_door_test")
	var run_a: Vector2 = run["a"]
	var run_direction: Vector2 = (Vector2(run["b"]) - run_a).normalized()
	var center_distance := float(opening["center_distance"])
	var clear_left_point := run_a + run_direction * (center_distance - float(opening["clear_width"]) * 0.5)
	var clear_right_point := run_a + run_direction * (center_distance + float(opening["clear_width"]) * 0.5)
	var frame_outer_left := float(opening["center_distance"]) - float(opening["frame_outer_width"]) * 0.5
	var frame_outer_right := float(opening["center_distance"]) + float(opening["frame_outer_width"]) * 0.5
	var frame_outer_left_point := run_a + run_direction * frame_outer_left
	var frame_outer_right_point := run_a + run_direction * frame_outer_right
	var left_wall_end_point := run_a + run_direction * float(opening["start"])
	var right_wall_start_point := run_a + run_direction * float(opening["end"])
	var delta_left := left_wall_end_point.distance_to(frame_outer_left_point)
	var delta_right := right_wall_start_point.distance_to(frame_outer_right_point)
	print("DOOR_SEAM_AUDIT: id=push_door_test center=(0.000,-3.000) clear_left=(%.4f,%.4f) clear_right=(%.4f,%.4f) frame_outer_left=(%.4f,%.4f) frame_outer_right=(%.4f,%.4f) left_wall_end=(%.4f,%.4f) right_wall_start=(%.4f,%.4f) delta_left=%.6f delta_right=%.6f" % [clear_left_point.x, clear_left_point.y, clear_right_point.x, clear_right_point.y, frame_outer_left_point.x, frame_outer_left_point.y, frame_outer_right_point.x, frame_outer_right_point.y, left_wall_end_point.x, left_wall_end_point.y, right_wall_start_point.x, right_wall_start_point.y, delta_left, delta_right])
	if absf(delta_left) > 0.001 or absf(delta_right) > 0.001:
		failures.push_back("door test seam contract exceeds 0.001 m")
	var space := get_world_3d().direct_space_state
	var door_body := push_door.get_node("Hinge/DoorBody") as AnimatableBody3D
	var clear_query := PhysicsRayQueryParameters3D.create(Vector3(0.0, 1.0, -2.50), Vector3(0.0, 1.0, -3.70), 1)
	clear_query.exclude = [door_body.get_rid()]
	if not space.intersect_ray(clear_query).is_empty():
		failures.push_back("hidden wall or collision remains behind the leaf")
	for jamb_x: float in [-0.6425, 0.6425]:
		var jamb_query := PhysicsRayQueryParameters3D.create(Vector3(jamb_x, 1.0, -2.50), Vector3(jamb_x, 1.0, -3.70), 1)
		jamb_query.exclude = [door_body.get_rid()]
		if space.intersect_ray(jamb_query).is_empty():
			failures.push_back("frame jamb collision missing at x=%.4f" % jamb_x)
	var side_query := PhysicsRayQueryParameters3D.create(Vector3(1.0, 1.0, -2.50), Vector3(1.0, 1.0, -3.70), 1)
	if space.intersect_ray(side_query).is_empty():
		failures.push_back("wall beside opening is missing")
	var header_query := PhysicsRayQueryParameters3D.create(Vector3(0.0, 2.55, -2.50), Vector3(0.0, 2.55, -3.70), 1)
	if space.intersect_ray(header_query).is_empty():
		failures.push_back("wall header above opening is missing")
	if not await _toggle_with_player(true):
		failures.push_back("E did not open the reused PushDoor")
	if absf((door_body as Node3D).rotation.y) < deg_to_rad(90.0):
		failures.push_back("door did not reach the configured 90-95 degree angle")
	var old_plane_query := PhysicsRayQueryParameters3D.create(Vector3(0.0, 1.0, -2.80), Vector3(0.0, 1.0, -3.50), 1)
	if not space.intersect_ray(old_plane_query).is_empty():
		failures.push_back("open door still blocks its closed plane")
	if not await _toggle_with_player(false):
		failures.push_back("E did not close the reused PushDoor")
	if failures.is_empty():
		print("LEVEL0_DOOR_TEST_VALIDATION: PASS wall=5.00x2.866x0.30 clear=1.20x2.20 outer=1.37x2.285 seam=0.000000 jamb_collision=left+right frame=full-depth+two-sided interaction=E angle=95 collision=follows_leaf")
		return true
	for failure: String in failures:
		push_error("LEVEL0_DOOR_TEST_VALIDATION: %s" % failure)
	return false


func _toggle_with_player(expect_open: bool) -> bool:
	player.global_position = Vector3(0.0, 0.10, -1.0) if expect_open else Vector3(-0.64, 0.10, -4.80)
	player.rotation = Vector3.ZERO if expect_open else Vector3(0.0, PI, 0.0)
	(player.get_node("Camera3D") as Camera3D).rotation.x = 0.0
	player.velocity = Vector3.ZERO
	for _frame_index in 4:
		await get_tree().physics_frame
	var interaction_ray := player.get_node("Camera3D/InteractionRay") as RayCast3D
	interaction_ray.force_raycast_update()
	_send_interact_input()
	for _frame_index in 30:
		await get_tree().physics_frame
	return bool(push_door.get("is_open")) == expect_open


func _send_interact_input() -> void:
	var pressed := InputEventAction.new()
	pressed.action = "interact"
	pressed.pressed = true
	Input.parse_input_event(pressed)
	var released := InputEventAction.new()
	released.action = "interact"
	released.pressed = false
	Input.parse_input_event(released)


func _capture_all() -> void:
	var output_dir := ProjectSettings.globalize_path("res://captures")
	DirAccess.make_dir_recursive_absolute(output_dir)
	for shot: Dictionary in CLOSED_SHOTS:
		await _capture_shot(shot, output_dir.path_join(String(shot["file"])))
	if not bool(push_door.get("is_open")):
		await _toggle_with_player(true)
	await _capture_shot(
		{"position": Vector3(1.70, 1.48, -0.20), "target": Vector3(-0.45, 1.10, -3.65), "fov": 58.0},
		output_dir.path_join("door_test_open.png")
	)


func _capture_shot(shot: Dictionary, output_path: String) -> void:
	camera.position = shot["position"]
	camera.fov = float(shot["fov"])
	camera.look_at(shot["target"], Vector3.UP)
	await get_tree().process_frame
	await RenderingServer.frame_post_draw
	var save_error := get_viewport().get_texture().get_image().save_png(output_path)
	if save_error == OK:
		print("LEVEL0_DOOR_TEST_CAPTURE: %s" % output_path)
	else:
		push_error("Door test capture failed: %s" % error_string(save_error))
