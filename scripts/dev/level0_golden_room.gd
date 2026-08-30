extends Node3D

const ArchitectureBuilderScript := preload("res://scripts/levels/level_0/level0_architecture_builder.gd")

const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.03
const FIXTURE_Y := 2.84
const SOCKET_CENTER_Y := 0.317

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/sector_04_orange_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/wallpaper.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/ceiling.tres")
const TRIM_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/source/wood_trim.tres")
const FIXTURE_HOUSING_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_housing.tres")
const FIXTURE_PANEL_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel.tres")
const VENT_MESH: ArrayMesh = preload("res://resources/meshes/level_0/vr_kit/vent_1_single.res")
const SOCKET_MESH: ArrayMesh = preload("res://resources/meshes/level_0/vr_kit/socket_1_single.res")

const CAPTURE_SHOTS := [
	{"file": "golden_room_corner.png", "position": Vector3(-4.78, 0.52, 3.72), "target": Vector3(-5.0, 0.34, 4.0), "fov": 60.0},
	{"file": "golden_room_door.png", "position": Vector3(0.0, 1.48, 0.4), "target": Vector3(0.0, 1.10, -4.0), "fov": 58.0},
	{"file": "golden_room_door_side.png", "position": Vector3(1.35, 1.30, -2.9), "target": Vector3(0.0, 1.12, -4.0), "fov": 52.0},
	{"file": "golden_room_ceiling.png", "position": Vector3(-1.8, 1.18, 1.6), "target": Vector3(1.0, 2.82, 0.0), "fov": 62.0},
	{"file": "golden_room_baseboard.png", "position": Vector3(-4.18, 0.34, 3.18), "target": Vector3(-5.0, 0.08, 4.0), "fov": 48.0},
	{"file": "golden_room_full.png", "position": Vector3(3.9, 1.58, 3.15), "target": Vector3(0.0, 1.30, -0.2), "fov": 72.0},
]

@onready var floor_visual: MeshInstance3D = %FloorVisual
@onready var wall_visual: MeshInstance3D = %WallVisual
@onready var ceiling_visual: MeshInstance3D = %CeilingVisual
@onready var baseboard_visual: MeshInstance3D = %BaseboardVisual
@onready var door_frames: MultiMeshInstance3D = %DoorFrames
@onready var fixture_visuals: MultiMeshInstance3D = %FluorescentFixtures
@onready var vent_visuals: MultiMeshInstance3D = %VentVisuals
@onready var socket_visuals: MultiMeshInstance3D = %SocketVisuals
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var camera: Camera3D = %Camera3D

var _builder
var _build_result: Dictionary


func _ready() -> void:
	_builder = ArchitectureBuilderScript.new()
	_build_architecture()
	_build_details()
	call_deferred("_run_optional_tasks")


func _build_architecture() -> void:
	var walkable: Array[PackedVector2Array] = [PackedVector2Array([
		Vector2(-5.0, -4.0), Vector2(5.0, -4.0),
		Vector2(5.0, 4.0), Vector2(-5.0, 4.0),
	])]
	var boundary_openings: Array[Dictionary] = [{
		"id": "golden_door",
		"center": Vector2(0.0, -4.0),
		"cut_width": 1.36,
		"cut_height": 2.28,
	}]
	var partitions: Array[Dictionary] = []
	var columns: Array[Dictionary] = []
	_build_result = _builder.build(
		walkable,
		partitions,
		boundary_openings,
		columns,
		{"floor": FLOOR_MATERIAL, "wall": WALL_MATERIAL, "ceiling": CEILING_MATERIAL, "trim": TRIM_MATERIAL},
		{"ceiling_y": CEILING_Y, "wall_thickness": WALL_THICKNESS, "baseboard_height": BASEBOARD_HEIGHT, "baseboard_depth": BASEBOARD_DEPTH}
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
	print("GOLDEN_ROOM_V2_BUILD: input=%d union=%d boundary=%d->%d partitions=%d floor_triangles=%d ceiling_triangles=%d" % [
		_build_result.stats.input_polygons,
		_build_result.stats.union_polygons,
		_build_result.stats.boundary_edges_before,
		_build_result.stats.boundary_edges_after,
		_build_result.stats.partition_count,
		_build_result.stats.floor_triangles,
		_build_result.stats.ceiling_triangles,
	])


func _build_details() -> void:
	var frame_mesh := _make_door_frame_mesh()
	var inside_basis := Basis(Vector3.RIGHT, Vector3.UP, Vector3.BACK)
	var outside_basis := Basis(Vector3.LEFT, Vector3.UP, Vector3.FORWARD)
	door_frames.multimesh = _make_multimesh(frame_mesh, [
		Transform3D(inside_basis, Vector3(0.0, 0.0, -4.0)),
		Transform3D(outside_basis, Vector3(0.0, 0.0, -4.30)),
	])
	var fixture_mesh := _make_fixture_mesh()
	fixture_visuals.multimesh = _make_multimesh(fixture_mesh, [
		Transform3D(Basis.IDENTITY, Vector3(-2.2, FIXTURE_Y, -0.4)),
		Transform3D(Basis(Vector3.UP, PI * 0.5), Vector3(2.0, FIXTURE_Y, 1.35)),
	])
	var ceiling_basis := Basis(Vector3.RIGHT, Vector3.FORWARD, Vector3.UP)
	vent_visuals.multimesh = _make_multimesh(VENT_MESH, [Transform3D(ceiling_basis, Vector3(2.25, 2.84, -1.55))])
	var socket_basis := Basis(Vector3.LEFT, Vector3.UP, Vector3.FORWARD)
	socket_visuals.multimesh = _make_multimesh(SOCKET_MESH, [Transform3D(socket_basis, Vector3(2.0, SOCKET_CENTER_Y, 3.994))])


func _make_door_frame_mesh() -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, Vector3(0.08, 2.20, 0.06), Vector3(-0.64, 1.10, -0.01))
	_add_box(surface, Vector3(0.08, 2.20, 0.06), Vector3(0.64, 1.10, -0.01))
	_add_box(surface, Vector3(1.36, 0.08, 0.06), Vector3(0.0, 2.24, -0.01))
	var mesh := surface.commit()
	mesh.surface_set_material(0, TRIM_MATERIAL)
	return mesh


func _make_fixture_mesh() -> ArrayMesh:
	var mesh := ArrayMesh.new()
	var housing := SurfaceTool.new()
	housing.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(housing, Vector3(1.20, 0.026, 0.60), Vector3(0.0, 0.0, 0.0))
	housing.commit(mesh)
	var panel := SurfaceTool.new()
	panel.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(panel, Vector3(1.10, 0.006, 0.50), Vector3(0.0, -0.016, 0.0))
	panel.commit(mesh)
	mesh.surface_set_material(0, FIXTURE_HOUSING_MATERIAL)
	mesh.surface_set_material(1, FIXTURE_PANEL_MATERIAL)
	return mesh


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
	var corners := [
		center + Vector3(-half.x, -half.y, -half.z), center + Vector3(half.x, -half.y, -half.z),
		center + Vector3(half.x, half.y, -half.z), center + Vector3(-half.x, half.y, -half.z),
		center + Vector3(-half.x, -half.y, half.z), center + Vector3(half.x, -half.y, half.z),
		center + Vector3(half.x, half.y, half.z), center + Vector3(-half.x, half.y, half.z),
	]
	_add_quad(surface, corners[0], corners[3], corners[2], corners[1], Vector3.BACK)
	_add_quad(surface, corners[5], corners[6], corners[7], corners[4], Vector3.FORWARD)
	_add_quad(surface, corners[4], corners[7], corners[3], corners[0], Vector3.LEFT)
	_add_quad(surface, corners[1], corners[2], corners[6], corners[5], Vector3.RIGHT)
	_add_quad(surface, corners[3], corners[7], corners[6], corners[2], Vector3.UP)
	_add_quad(surface, corners[4], corners[0], corners[1], corners[5], Vector3.DOWN)


func _add_quad(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, d: Vector3, normal: Vector3) -> void:
	for data in [[a, Vector2.ZERO], [b, Vector2.RIGHT], [c, Vector2.ONE], [a, Vector2.ZERO], [c, Vector2.ONE], [d, Vector2.DOWN]]:
		surface.set_normal(normal)
		surface.set_uv(data[1])
		surface.add_vertex(data[0])


func _run_optional_tasks() -> void:
	await get_tree().process_frame
	for _frame_index in 3:
		await get_tree().physics_frame
	var validate := OS.get_environment("LEVEL0_GOLDEN_VALIDATE") == "1"
	var capture := OS.get_environment("LEVEL0_GOLDEN_CAPTURE") == "1"
	if validate and not _validate_room():
		get_tree().quit(1)
		return
	if capture:
		await _capture_all()
		get_tree().quit()
	elif validate:
		get_tree().quit()


func _validate_room() -> bool:
	var failures: Array[String] = []
	for build_error: String in _build_result["errors"]:
		failures.push_back(build_error)
	var expected_stats: Dictionary = _build_result["stats"]
	if int(expected_stats.input_polygons) != 1 or int(expected_stats.union_polygons) != 1:
		failures.push_back("unexpected polygon union counts")
	if int(expected_stats.boundary_edges_before) != 4 or int(expected_stats.boundary_edges_after) != 4:
		failures.push_back("unexpected boundary counts")
	if int(expected_stats.duplicate_floor_triangles) != 0 or int(expected_stats.duplicate_ceiling_triangles) != 0 or int(expected_stats.duplicate_wall_triangles) != 0:
		failures.push_back("duplicate triangles detected")
	if door_frames.multimesh == null or door_frames.multimesh.instance_count != 2:
		failures.push_back("door frame is not visible from both sides")
	if fixture_visuals.multimesh == null or fixture_visuals.multimesh.instance_count != 2:
		failures.push_back("fixture count is not two")
	if vent_visuals.multimesh == null or vent_visuals.multimesh.instance_count != 1:
		failures.push_back("ceiling vent count is not one")
	if socket_visuals.multimesh == null or socket_visuals.multimesh.instance_count != 1:
		failures.push_back("socket count is not one")
	var space := get_world_3d().direct_space_state
	var floor_query := PhysicsRayQueryParameters3D.create(Vector3(0.0, 1.0, 0.0), Vector3(0.0, -0.5, 0.0), 1)
	if space.intersect_ray(floor_query).is_empty():
		failures.push_back("continuous floor collision missing")
	var door_query := PhysicsRayQueryParameters3D.create(Vector3(0.0, 1.0, -3.5), Vector3(0.0, 1.0, -4.5), 1)
	if not space.intersect_ray(door_query).is_empty():
		failures.push_back("door opening contains a hidden wall")
	var side_query := PhysicsRayQueryParameters3D.create(Vector3(1.0, 1.0, -3.5), Vector3(1.0, 1.0, -4.5), 1)
	if space.intersect_ray(side_query).is_empty():
		failures.push_back("wall beside door is missing")
	var header_query := PhysicsRayQueryParameters3D.create(Vector3(0.0, 2.55, -3.5), Vector3(0.0, 2.55, -4.5), 1)
	if space.intersect_ray(header_query).is_empty():
		failures.push_back("door header is missing")
	if failures.is_empty():
		print("GOLDEN_ROOM_V2_VALIDATION: PASS union=1 boundary=4 door=clear ceiling=continuous vent=ceiling fixtures=2 socket=1 duplicates=0")
		return true
	for failure: String in failures:
		push_error("GOLDEN_ROOM_V2_VALIDATION: %s" % failure)
	return false


func _capture_all() -> void:
	var output_dir := ProjectSettings.globalize_path("res://captures")
	DirAccess.make_dir_recursive_absolute(output_dir)
	for shot: Dictionary in CAPTURE_SHOTS:
		camera.position = shot["position"]
		camera.fov = float(shot["fov"])
		camera.look_at(shot["target"], Vector3.UP)
		await get_tree().process_frame
		await RenderingServer.frame_post_draw
		var output_path := output_dir.path_join(String(shot["file"]))
		var save_error := get_viewport().get_texture().get_image().save_png(output_path)
		if save_error == OK:
			print("GOLDEN_ROOM_V2_CAPTURE: %s" % output_path)
		else:
			push_error("Golden Room capture failed: %s" % error_string(save_error))
