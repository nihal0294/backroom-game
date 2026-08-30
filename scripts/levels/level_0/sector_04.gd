extends Node3D

## Manually authored Sector 04. The numbered map defines room order and
## connections; Backrooms VR defines the architectural construction standard.
## This script deliberately has no dependency on sector_04_trace.json.

const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.035
const SOCKET_CENTER_Y := 0.317
const FIXTURE_Y := 2.84
const MAX_REAL_LIGHTS := 8
const PLAYER_RADIUS := 0.32
const POSITION_EPSILON := 0.005
const MIN_WALL_LENGTH := 0.01
const DOOR_CLEAR_WIDTH := 1.20
const DOOR_CLEAR_HEIGHT := 2.20
const DOOR_FRAME_FACE_WIDTH := 0.085
const DOOR_FRAME_DEPTH := 0.060
const DOOR_FRAME_PROJECTION := 0.020
const DOOR_FRAME_OUTER_WIDTH := DOOR_CLEAR_WIDTH + DOOR_FRAME_FACE_WIDTH * 2.0
const DOOR_FRAME_OUTER_HEIGHT := DOOR_CLEAR_HEIGHT + DOOR_FRAME_FACE_WIDTH
const DOOR_SEAM_TOLERANCE := 0.001
const SECTOR07_PASSAGE_CENTER := Vector2(-6.0, 29.25)
const SECTOR07_PASSAGE_WIDTH := 2.15
const ArchitectureBuilderScript = preload("res://scripts/levels/level_0/level0_architecture_builder.gd")

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/sector_04_orange_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/wallpaper.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/ceiling.tres")
const TRIM_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/source/wood_trim.tres")
const DOOR_FRAME_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_frame.tres")
const MAP_BACKING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_panel.tres")
const MAP_FACE_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/map_sector_04.tres")
const GLASS_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/glass.tres")
const TORN_WALLPAPER_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/torn_wallpaper.tres")
const FIXTURE_HOUSING_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_housing.tres")
const FIXTURE_PANEL_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel.tres")
const FIXTURE_PANEL_OFF_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel_off.tres")
const VENT_MESH: ArrayMesh = preload("res://resources/meshes/level_0/vr_kit/vent_1_single.res")
const SOCKET_MESH: ArrayMesh = preload("res://resources/meshes/level_0/vr_kit/socket_1_single.res")

@onready var floor_visual: MeshInstance3D = %FloorVisual
@onready var wall_visual: MeshInstance3D = %WallVisual
@onready var ceiling_visual: MeshInstance3D = %CeilingVisual
@onready var baseboard_visual: MeshInstance3D = %BaseboardVisual
@onready var fixture_visuals: MultiMeshInstance3D = %FluorescentFixtures
@onready var fixture_visuals_off: MultiMeshInstance3D = %FluorescentFixturesOff
@onready var socket_visuals: MultiMeshInstance3D = %SocketVisuals
@onready var door_frames: MultiMeshInstance3D = %DoorFrames
@onready var door_panels: MultiMeshInstance3D = %DoorPanels
@onready var vent_visuals: MultiMeshInstance3D = %VentVisuals
@onready var torn_wallpaper_visual: MeshInstance3D = %TornWallpaperVisual
@onready var map_mount: MeshInstance3D = %MapMount
@onready var map_face: MeshInstance3D = %MapFace
@onready var sparse_lights: Node3D = %SparseLights
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var glass_door_collision: CollisionShape3D = %GlassDoorCollision
@onready var player_spawn: Marker3D = %Sector04PlayerSpawn
@onready var unexplored_exit: Marker3D = %UnexploredExit
@onready var push_door: Node3D = %PushDoor
var _floor_shapes: Array[PackedVector2Array] = []
var _boundary_walls: Array[Dictionary] = []
var _partition_walls: Array[Dictionary] = []
var _fixture_data: Array[Dictionary] = []
var _lit_fixture_transforms: Array[Transform3D] = []
var _off_fixture_transforms: Array[Transform3D] = []
var _socket_transforms: Array[Transform3D] = []
var _vent_transforms: Array[Transform3D] = []
var _light_count := 0
var _raw_wall_segment_count := 0
var _sanitized_wall_segment_count := 0
var _architecture_builder: RefCounted
var _build_result: Dictionary = {}
var _glass_opening_contract: Dictionary = {}
var _push_opening_contract: Dictionary = {}
var _max_door_seam_delta := 0.0


func _ready() -> void:
	_floor_shapes = _manual_floor_shapes()
	_fixture_data = _manual_fixture_data()
	_build_union_architecture()
	_build_framed_openings()
	_build_fixed_sockets()
	_build_fixed_vents()
	_build_map_mount()
	_build_torn_wallpaper()
	_build_fixtures()
	_build_sparse_lights()
	_place_markers()
	var validation_requested := OS.get_environment("LEVEL0_SECTOR04_VALIDATE") == "1"
	var diagnostics_requested := (
		validation_requested
		or OS.get_environment("LEVEL0_SECTOR04_CAPTURE") == "1"
		or OS.get_environment("LEVEL0_SECTOR04_AUDIT") == "1"
	)
	if diagnostics_requested:
		_print_performance_audit()
		var stats: Dictionary = _build_result["stats"]
		print(
			"SECTOR04_V2_BUILD: input=%d union=%d boundary=%d->%d partitions=%d floor_triangles=%d ceiling_triangles=%d columns=6 fixtures=%d on=%d off=%d lights=%d sockets=%d vents=%d junction_correction_max=%.6f junction_delta_max=%.6f"
			% [stats.input_polygons, stats.union_polygons, stats.boundary_edges_before, stats.boundary_edges_after, stats.partition_count, stats.floor_triangles, stats.ceiling_triangles, _fixture_data.size(), _lit_fixture_transforms.size(), _off_fixture_transforms.size(), _light_count, _socket_transforms.size(), _vent_transforms.size(), stats.max_wall_junction_correction, stats.max_wall_junction_delta]
		)
		if not validation_requested:
			_print_door_seam_audit()
	call_deferred("_run_optional_tasks")


func _build_union_architecture() -> void:
	_architecture_builder = ArchitectureBuilderScript.new()
	_glass_opening_contract = _architecture_builder.make_framed_opening(
		"glass_room", Vector2(7.0, 2.4), DOOR_CLEAR_WIDTH, DOOR_CLEAR_HEIGHT,
		DOOR_FRAME_FACE_WIDTH, DOOR_FRAME_DEPTH, DOOR_FRAME_PROJECTION
	)
	_push_opening_contract = _architecture_builder.make_framed_opening(
		"push_door", Vector2(-11.5, 24.0), DOOR_CLEAR_WIDTH, DOOR_CLEAR_HEIGHT,
		DOOR_FRAME_FACE_WIDTH, DOOR_FRAME_DEPTH, DOOR_FRAME_PROJECTION
	)
	var boundary_openings: Array[Dictionary] = [{
		"id": "sector04_to_sector07",
		"center": SECTOR07_PASSAGE_CENTER,
		"wall_direction": Vector2.DOWN,
		"cut_width": SECTOR07_PASSAGE_WIDTH,
		"cut_height": CEILING_Y,
	}]
	_build_result = _architecture_builder.build(
		_floor_shapes,
		_v2_partitions(),
		boundary_openings,
		_v2_columns(),
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
	_boundary_walls.assign(_build_result["boundary_runs"])
	_partition_walls.assign(_build_result["partition_runs"])
	_raw_wall_segment_count = int(_build_result["stats"]["boundary_edges_before"]) + _partition_walls.size()
	_sanitized_wall_segment_count = _boundary_walls.size() + _partition_walls.size()


func _v2_partitions() -> Array[Dictionary]:
	return [
		{"id": "glass_partition", "a": Vector2(7.0, 0.7), "b": Vector2(7.0, 4.1), "normal": Vector2.LEFT, "openings": [_glass_opening_contract]},
		{"id": "push_partition", "a": Vector2(-11.5, 25.4), "b": Vector2(-11.5, 22.6), "normal": Vector2.RIGHT, "openings": [_push_opening_contract]},
		# D-R02 uses the union boundary as its west/south walls. The east and
		# north partitions complete a 3.20 x 3.60 m clear rectangle without
		# creating narrow inaccessible slivers against D-R01's outer wall.
		{"id": "d_r02_east", "a": Vector2(-14.15, 21.00), "b": Vector2(-14.15, 24.75), "normal": Vector2.LEFT, "openings": [{"id": "d_r02_open_passage", "center": Vector2(-14.15, 22.80), "cut_width": 1.20, "cut_height": CEILING_Y}]},
		{"id": "d_r02_north", "a": Vector2(-14.15, 24.75), "b": Vector2(-17.50, 24.75), "normal": Vector2.DOWN, "openings": []},
	]


func _v2_columns() -> Array[Dictionary]:
	var columns: Array[Dictionary] = []
	for center: Vector2 in _column_centers():
		columns.push_back({"center": center, "size": 0.75})
	return columns


func _manual_floor_shapes() -> Array[PackedVector2Array]:
	var shapes: Array[PackedVector2Array] = []
	shapes.push_back(_rect_polygon(-7.00, 0.00, 7.00, 7.00)) # A1
	shapes.push_back(_rect_polygon(-6.00, 7.00, 6.00, 39.00)) # A2
	shapes.push_back(_rect_polygon(7.00, 0.70, 10.40, 4.10)) # B
	shapes.push_back(_rect_polygon(-1.50, -11.00, 1.50, 0.00)) # C01
	shapes.push_back(_rect_polygon(-1.50, -14.00, 9.50, -11.00)) # C02
	shapes.push_back(_rect_polygon(6.50, -20.50, 13.00, -14.00)) # C-R01
	shapes.push_back(_rect_polygon(8.35, -26.00, 11.15, -20.50)) # C03
	shapes.push_back(_rect_polygon(7.25, -31.00, 12.25, -26.00)) # C-R02
	shapes.push_back(_rect_polygon(8.35, -36.00, 11.15, -31.00)) # C04
	shapes.push_back(_rect_polygon(7.75, -40.00, 11.75, -36.00)) # C-R03
	shapes.push_back(_rect_polygon(-11.50, 22.60, -6.00, 25.40)) # D-C01
	shapes.push_back(_rect_polygon(-17.50, 21.00, -11.50, 27.00)) # D-R01/D-R02
	shapes.push_back(PackedVector2Array([ # E-C01: 3.00 m wide, ~8.00 m wall-to-wall
		Vector2(-5.90, 33.30), Vector2(-4.10, 35.70),
		Vector2(-12.40, 41.925), Vector2(-14.20, 39.525),
	]))
	shapes.push_back(_rect_polygon(-24.40, 39.525, -12.40, 49.525)) # E
	return shapes


func _same_undirected_segment(a0: Vector2, b0: Vector2, a1: Vector2, b1: Vector2) -> bool:
	return (
		(a0.distance_to(a1) <= POSITION_EPSILON and b0.distance_to(b1) <= POSITION_EPSILON)
		or (a0.distance_to(b1) <= POSITION_EPSILON and b0.distance_to(a1) <= POSITION_EPSILON)
	)


func _print_door_seam_audit(failures: Array[String] = []) -> float:
	var max_delta := 0.0
	for run: Dictionary in _partition_walls:
		for opening: Dictionary in run["openings"]:
			if not bool(opening.get("framed", false)):
				continue
			var run_a: Vector2 = run["a"]
			var run_direction: Vector2 = (Vector2(run["b"]) - run_a).normalized()
			var center_distance := float(opening["center_distance"])
			var clear_left := center_distance - float(opening["clear_width"]) * 0.5
			var clear_right := center_distance + float(opening["clear_width"]) * 0.5
			var frame_outer_left := center_distance - float(opening["frame_outer_width"]) * 0.5
			var frame_outer_right := center_distance + float(opening["frame_outer_width"]) * 0.5
			var left_wall_end := float(opening["start"])
			var right_wall_start := float(opening["end"])
			var clear_left_point := run_a + run_direction * clear_left
			var clear_right_point := run_a + run_direction * clear_right
			var frame_outer_left_point := run_a + run_direction * frame_outer_left
			var frame_outer_right_point := run_a + run_direction * frame_outer_right
			var left_wall_end_point := run_a + run_direction * left_wall_end
			var right_wall_start_point := run_a + run_direction * right_wall_start
			var delta_left := left_wall_end_point.distance_to(frame_outer_left_point)
			var delta_right := right_wall_start_point.distance_to(frame_outer_right_point)
			max_delta = maxf(max_delta, maxf(absf(delta_left), absf(delta_right)))
			var center: Vector2 = opening["center"]
			print(
				"DOOR_SEAM_AUDIT: id=%s center=(%.3f,%.3f) clear_left=(%.4f,%.4f) clear_right=(%.4f,%.4f) frame_outer_left=(%.4f,%.4f) frame_outer_right=(%.4f,%.4f) left_wall_end=(%.4f,%.4f) right_wall_start=(%.4f,%.4f) delta_left=%.6f delta_right=%.6f"
				% [opening["id"], center.x, center.y, clear_left_point.x, clear_left_point.y, clear_right_point.x, clear_right_point.y, frame_outer_left_point.x, frame_outer_left_point.y, frame_outer_right_point.x, frame_outer_right_point.y, left_wall_end_point.x, left_wall_end_point.y, right_wall_start_point.x, right_wall_start_point.y, delta_left, delta_right]
			)
			if absf(delta_left) > DOOR_SEAM_TOLERANCE or absf(delta_right) > DOOR_SEAM_TOLERANCE:
				failures.push_back("framed opening %s seam delta exceeds 0.001 m" % String(opening["id"]))
	_max_door_seam_delta = max_delta
	return max_delta


func _collinear_overlap_length(a0: Vector2, b0: Vector2, a1: Vector2, b1: Vector2) -> float:
	var direction := (b0 - a0).normalized()
	if absf(direction.cross((b1 - a1).normalized())) > POSITION_EPSILON:
		return 0.0
	if absf((a1 - a0).cross(direction)) > POSITION_EPSILON:
		return 0.0
	var first_max := a0.distance_to(b0)
	var second_a := (a1 - a0).dot(direction)
	var second_b := (b1 - a0).dot(direction)
	return maxf(0.0, minf(first_max, maxf(second_a, second_b)) - maxf(0.0, minf(second_a, second_b)))


func _manual_fixture_data() -> Array[Dictionary]:
	return [
		_fixture(Vector2(-2.0, 3.0), false, 0), _fixture(Vector2(1.8, 8.5), false, 0),
		_fixture(Vector2(-1.5, 14.0), false, 0), _fixture(Vector2(1.3, 19.5), false, 0),
		_fixture(Vector2(-1.2, 25.0), true, 0), _fixture(Vector2(1.6, 30.5), false, 0),
		_fixture(Vector2(-1.0, 35.0), false, 0), _fixture(Vector2(1.2, 38.0), false, 0),
		_fixture(Vector2(8.7, 2.4), false, 1),
		_fixture(Vector2(0.0, -3.5), false, 0), _fixture(Vector2(0.3, -8.5), false, 0),
		_fixture(Vector2(2.5, -12.5), false, 1), _fixture(Vector2(7.5, -12.5), true, 1),
		_fixture(Vector2(9.75, -17.2), false, 1), _fixture(Vector2(9.75, -23.25), false, 0),
		_fixture(Vector2(9.75, -28.5), false, 1), _fixture(Vector2(9.75, -33.5), false, 0),
		_fixture(Vector2(9.75, -38.0), false, 1),
		_fixture(Vector2(-8.75, 24.0), false, 1), _fixture(Vector2(-13.3, 24.0), false, 1),
		_fixture(Vector2(-15.7, 22.8), false, 0),
		_fixture(Vector2(-7.8, 36.6), false, 1), _fixture(Vector2(-10.6, 38.7), false, 1),
		_fixture(Vector2(-21.0, 42.0), false, 0), _fixture(Vector2(-15.8, 42.0), false, 0),
		_fixture(Vector2(-21.0, 47.0), true, 0), _fixture(Vector2(-15.8, 47.0), false, 0),
	]


func _build_framed_openings() -> void:
	var frame_transforms: Array[Transform3D] = []
	var glass_transform := Transform3D.IDENTITY
	for run: Dictionary in _partition_walls:
		for opening: Dictionary in run["openings"]:
			if not bool(opening.get("framed", false)):
				continue
			var center: Vector2 = _architecture_builder.opening_wall_center(run, opening, WALL_THICKNESS)
			var frame_transform := _frame_transform(center, run["normal"])
			frame_transforms.push_back(frame_transform)
			if String(opening["id"]) == "glass_room":
				glass_transform = frame_transform
	var frame_mesh: ArrayMesh = _architecture_builder.build_framed_opening_mesh(
		_glass_opening_contract, WALL_THICKNESS, DOOR_FRAME_MATERIAL
	)
	door_frames.multimesh = _make_transform_multimesh(frame_mesh, frame_transforms)
	door_panels.multimesh = _make_transform_multimesh(_make_glass_panel_mesh(), [glass_transform])
	var shape := BoxShape3D.new()
	shape.size = Vector3(1.20, 2.10, 0.025)
	glass_door_collision.shape = shape
	glass_door_collision.transform = Transform3D(glass_transform.basis, Vector3(glass_transform.origin.x, 1.05, glass_transform.origin.z))


func _build_fixed_sockets() -> void:
	_socket_transforms = [
		_wall_transform(Vector2(-4.5, 0.04), Vector2.RIGHT, SOCKET_CENTER_Y),
		_wall_transform(Vector2(4.2, 0.04), Vector2.RIGHT, SOCKET_CENTER_Y),
		_wall_transform(Vector2(5.96, 13.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(5.96, 30.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-5.96, 10.0), Vector2.DOWN, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-17.46, 24.5), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-1.46, -5.5), Vector2.DOWN, SOCKET_CENTER_Y),
		_wall_transform(Vector2(3.0, -13.96), Vector2.LEFT, SOCKET_CENTER_Y),
		_wall_transform(Vector2(12.96, -17.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(12.21, -28.5), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(11.71, -38.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-24.36, 45.0), Vector2.DOWN, SOCKET_CENTER_Y),
	]
	socket_visuals.multimesh = _make_transform_multimesh(SOCKET_MESH, _socket_transforms)


func _build_fixed_vents() -> void:
	var horizontal_basis := Basis(Vector3.RIGHT, Vector3.FORWARD, Vector3.UP)
	_vent_transforms = [
		Transform3D(horizontal_basis, Vector3(-2.5, 2.84, 16.5)),
		Transform3D(horizontal_basis.rotated(Vector3.UP, PI * 0.5), Vector3(2.4, 2.84, 30.0)),
		Transform3D(horizontal_basis, Vector3(0.0, 2.84, -6.0)),
		Transform3D(horizontal_basis.rotated(Vector3.UP, PI * 0.5), Vector3(-8.7, 2.84, 24.0)),
		Transform3D(horizontal_basis.rotated(Vector3.UP, deg_to_rad(53.13)), Vector3(-9.0, 2.84, 37.5)),
	]
	vent_visuals.multimesh = _make_transform_multimesh(VENT_MESH, _vent_transforms)


func _build_map_mount() -> void:
	# West wall is opposite the centered east entrance. The 25 mm air gap and
	# 25 mm backing keep both backing and map face wholly inside D-R02.
	map_mount.mesh = _make_box_mesh(Vector3(0.025, 0.90, 1.40), MAP_BACKING_MATERIAL)
	map_mount.position = Vector3(-17.4625, 1.45, 22.80)
	var face_mesh := QuadMesh.new()
	face_mesh.size = Vector2(1.35, 0.85)
	face_mesh.material = MAP_FACE_MATERIAL
	map_face.mesh = face_mesh
	map_face.position = Vector3(0.0135, 0.0, 0.0)
	map_face.rotation = Vector3(0.0, PI * 0.5, 0.0)


func _build_torn_wallpaper() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var x := -5.998
	# The old patch filled this wall. Two ragged remnants now frame the real,
	# full-height Sector 07 passage without adding collision inside its clearance.
	var left_points := [Vector3(x, 0.66, 28.02), Vector3(x, 2.18, 28.08), Vector3(x, 1.88, 28.175), Vector3(x, 0.92, 28.15)]
	var right_points := [Vector3(x, 0.82, 30.35), Vector3(x, 1.94, 30.325), Vector3(x, 2.12, 30.43), Vector3(x, 0.62, 30.47)]
	for points: Array in [left_points, right_points]:
		for triangle_index in range(1, points.size() - 1):
			_add_triangle(surface, points[0], points[triangle_index], points[triangle_index + 1], Vector3.RIGHT)
	var mesh := surface.commit()
	mesh.surface_set_material(0, TORN_WALLPAPER_MATERIAL)
	torn_wallpaper_visual.mesh = mesh


func _build_fixtures() -> void:
	for data: Dictionary in _fixture_data:
		var point: Vector2 = data["point"]
		var rotation_index: int = data["rotation"]
		var fixture_basis := Basis(Vector3.UP, float(rotation_index) * PI * 0.5)
		var fixture_transform := Transform3D(fixture_basis, Vector3(point.x, FIXTURE_Y, point.y))
		if data["off"]:
			_off_fixture_transforms.push_back(fixture_transform)
		else:
			_lit_fixture_transforms.push_back(fixture_transform)
	fixture_visuals.multimesh = _make_transform_multimesh(_make_fixture_mesh(FIXTURE_PANEL_MATERIAL), _lit_fixture_transforms)
	fixture_visuals_off.multimesh = _make_transform_multimesh(_make_fixture_mesh(FIXTURE_PANEL_OFF_MATERIAL), _off_fixture_transforms)


func _build_sparse_lights() -> void:
	var light_points := [Vector2(-2.0, 3.0), Vector2(1.3, 19.5), Vector2(-1.0, 35.0), Vector2(8.7, 2.4), Vector2(2.0, -11.5), Vector2(9.75, -32.0), Vector2(-14.5, 24.0), Vector2(-18.4, 44.5)]
	for light_index in mini(MAX_REAL_LIGHTS, light_points.size()):
		var point: Vector2 = light_points[light_index]
		var light := OmniLight3D.new()
		light.name = "FluorescentLight_%02d" % light_index
		light.position = Vector3(point.x, CEILING_Y - 0.24, point.y)
		light.light_color = Color(0.98, 0.96, 0.84, 1.0)
		light.light_energy = 1.32 if light_index % 3 != 0 else 1.12
		light.light_specular = 0.025
		light.omni_range = 9.5
		light.omni_attenuation = 1.42
		light.shadow_enabled = false
		sparse_lights.add_child(light)
		_light_count += 1


func _place_markers() -> void:
	player_spawn.position = Vector3(0.0, 0.10, 2.20)
	player_spawn.rotation = Vector3(0.0, PI, 0.0)
	# No sector id is supplied by the connection sheet; keep this terminal closed.
	unexplored_exit.position = Vector3(0.0, 0.0, 39.00)
	unexplored_exit.rotation = Vector3(0.0, PI, 0.0)


func _fixture(point: Vector2, off: bool, rotation_index: int) -> Dictionary:
	return {"point": point, "off": off, "rotation": rotation_index}


func _rect_polygon(min_x: float, min_z: float, max_x: float, max_z: float) -> PackedVector2Array:
	return PackedVector2Array([Vector2(min_x, min_z), Vector2(max_x, min_z), Vector2(max_x, max_z), Vector2(min_x, max_z)])


func _column_centers() -> Array[Vector2]:
	return [Vector2(-21.4, 42.525), Vector2(-18.4, 42.525), Vector2(-15.4, 42.525), Vector2(-21.4, 46.525), Vector2(-18.4, 46.525), Vector2(-15.4, 46.525)]


func _add_box_with_faces(surface: SurfaceTool, faces: PackedVector3Array, size: Vector3, center: Vector3) -> void:
	var half := size * 0.5
	var p000 := center + Vector3(-half.x, -half.y, -half.z)
	var p001 := center + Vector3(-half.x, -half.y, half.z)
	var p010 := center + Vector3(-half.x, half.y, -half.z)
	var p011 := center + Vector3(-half.x, half.y, half.z)
	var p100 := center + Vector3(half.x, -half.y, -half.z)
	var p101 := center + Vector3(half.x, -half.y, half.z)
	var p110 := center + Vector3(half.x, half.y, -half.z)
	var p111 := center + Vector3(half.x, half.y, half.z)
	_add_quad(surface, p001, p101, p111, p011, Vector3.FORWARD, size.x, size.y)
	_add_quad(surface, p100, p000, p010, p110, Vector3.BACK, size.x, size.y)
	_add_quad(surface, p000, p001, p011, p010, Vector3.LEFT, size.z, size.y)
	_add_quad(surface, p101, p100, p110, p111, Vector3.RIGHT, size.z, size.y)
	_add_quad(surface, p010, p011, p111, p110, Vector3.UP, size.x, size.z)
	_add_quad(surface, p000, p100, p101, p001, Vector3.DOWN, size.x, size.z)
	_append_quad_faces(faces, p001, p101, p111, p011)
	_append_quad_faces(faces, p100, p000, p010, p110)
	_append_quad_faces(faces, p000, p001, p011, p010)
	_append_quad_faces(faces, p101, p100, p110, p111)
	_append_quad_faces(faces, p010, p011, p111, p110)
	_append_quad_faces(faces, p000, p100, p101, p001)


func _make_glass_panel_mesh() -> ArrayMesh:
	return _make_box_mesh(Vector3(1.20, 2.10, 0.025), GLASS_MATERIAL, Vector3(0.0, 1.05, 0.0))


func _make_fixture_mesh(panel_material: Material) -> ArrayMesh:
	var mesh := ArrayMesh.new()
	var housing := SurfaceTool.new()
	housing.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(housing, Vector3(1.20, 0.035, 0.60), Vector3.ZERO)
	housing.commit(mesh)
	var panel := SurfaceTool.new()
	panel.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(panel, Vector3(-0.54, -0.021, -0.24), Vector3(0.54, -0.021, -0.24), Vector3(0.54, -0.021, 0.24), Vector3(-0.54, -0.021, 0.24), Vector3.DOWN, 1.08, 0.48)
	panel.commit(mesh)
	mesh.surface_set_material(0, FIXTURE_HOUSING_MATERIAL)
	mesh.surface_set_material(1, panel_material)
	return mesh


func _make_box_mesh(size: Vector3, material: Material, center := Vector3.ZERO) -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, size, center)
	var mesh := surface.commit()
	mesh.surface_set_material(0, material)
	return mesh


func _make_transform_multimesh(mesh: Mesh, transforms: Array[Transform3D]) -> MultiMesh:
	var multimesh := MultiMesh.new()
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.mesh = mesh
	multimesh.instance_count = transforms.size()
	for transform_index in transforms.size():
		multimesh.set_instance_transform(transform_index, transforms[transform_index])
	return multimesh


func _wall_transform(point: Vector2, direction: Vector2, height: float) -> Transform3D:
	var normalized_direction := direction.normalized()
	var x_axis := Vector3(normalized_direction.x, 0.0, normalized_direction.y)
	var z_axis := Vector3(-normalized_direction.y, 0.0, normalized_direction.x)
	return Transform3D(Basis(x_axis, Vector3.UP, z_axis), Vector3(point.x, height, point.y))


func _frame_transform(point: Vector2, normal: Vector2) -> Transform3D:
	var tangent := Vector2(normal.y, -normal.x).normalized()
	var frame_basis := Basis(Vector3(tangent.x, 0.0, tangent.y), Vector3.UP, Vector3(normal.x, 0.0, normal.y))
	return Transform3D(frame_basis, Vector3(point.x, 0.0, point.y))


func _add_box(surface: SurfaceTool, size: Vector3, center: Vector3) -> void:
	var unused_faces := PackedVector3Array()
	_add_box_with_faces(surface, unused_faces, size, center)


func _add_triangle(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, normal: Vector3) -> void:
	_add_vertex(surface, a, normal, Vector2(a.x, a.z))
	_add_vertex(surface, b, normal, Vector2(b.x, b.z))
	_add_vertex(surface, c, normal, Vector2(c.x, c.z))


func _add_quad(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, d: Vector3, normal: Vector3, width: float, height: float) -> void:
	_add_vertex(surface, a, normal, Vector2(0.0, 0.0))
	_add_vertex(surface, b, normal, Vector2(width, 0.0))
	_add_vertex(surface, c, normal, Vector2(width, height))
	_add_vertex(surface, a, normal, Vector2(0.0, 0.0))
	_add_vertex(surface, c, normal, Vector2(width, height))
	_add_vertex(surface, d, normal, Vector2(0.0, height))


func _add_vertex(surface: SurfaceTool, vertex: Vector3, normal: Vector3, uv: Vector2) -> void:
	surface.set_normal(normal)
	surface.set_uv(uv)
	surface.add_vertex(vertex)


func _append_quad_faces(faces: PackedVector3Array, a: Vector3, b: Vector3, c: Vector3, d: Vector3) -> void:
	faces.append_array(PackedVector3Array([a, b, c, a, c, d]))


func _print_performance_audit() -> void:
	var counts := {"nodes": 0, "mesh": 0, "array": 0, "body": 0, "collision": 0, "multimesh": 0, "lights": 0, "shadows": 0}
	var pending: Array[Node] = [self]
	while not pending.is_empty():
		var node: Node = pending.pop_back()
		counts["nodes"] += 1
		pending.append_array(node.get_children())
		if node is MeshInstance3D:
			counts["mesh"] += 1
			if (node as MeshInstance3D).mesh is ArrayMesh:
				counts["array"] += 1
		elif node is MultiMeshInstance3D:
			counts["multimesh"] += 1
			var multimesh: MultiMesh = (node as MultiMeshInstance3D).multimesh
			if multimesh != null and multimesh.mesh is ArrayMesh:
				counts["array"] += 1
		elif node is StaticBody3D:
			counts["body"] += 1
		elif node is CollisionShape3D:
			counts["collision"] += 1
		elif node is Light3D:
			counts["lights"] += 1
			if (node as Light3D).shadow_enabled:
				counts["shadows"] += 1
	print("SECTOR04_V2_PERFORMANCE: nodes=%d MeshInstance3D=%d ArrayMesh=%d StaticBody3D=%d CollisionShape3D=%d MultiMeshInstance3D=%d Light3D=%d shadow_lights=%d" % [counts.nodes, counts.mesh, counts.array, counts.body, counts.collision, counts.multimesh, counts.lights, counts.shadows])


func _run_optional_tasks() -> void:
	await get_tree().process_frame
	for _frame_index in 5:
		await get_tree().physics_frame
	var validation_requested := OS.get_environment("LEVEL0_SECTOR04_VALIDATE") == "1"
	var capture_requested := OS.get_environment("LEVEL0_SECTOR04_CAPTURE") == "1"
	if validation_requested and not await _validate_sector():
		get_tree().quit(1)
		return
	if capture_requested:
		await _capture_sector()
		get_tree().quit()
	elif validation_requested:
		get_tree().quit()


func _validate_sector() -> bool:
	var failures: Array[String] = []
	if floor_visual.mesh == null or wall_visual.mesh == null or ceiling_visual.mesh == null:
		failures.push_back("missing aggregate visual mesh")
	if floor_collision.shape == null or wall_collision.shape == null or glass_door_collision.shape == null:
		failures.push_back("missing collision shape")
	if _fixture_data.size() != 27 or _lit_fixture_transforms.size() != 24 or _off_fixture_transforms.size() != 3 or _light_count != MAX_REAL_LIGHTS:
		failures.push_back("invalid fixture/light distribution")
	if _vent_transforms.size() != 5 or vent_visuals.multimesh == null:
		failures.push_back("invalid vent distribution")
	for build_error: String in _build_result.get("errors", []):
		failures.push_back("architecture builder: %s" % build_error)
	var build_stats: Dictionary = _build_result.get("stats", {})
	if int(build_stats.get("input_polygons", 0)) != 14 or int(build_stats.get("union_polygons", 0)) != 1 or int(build_stats.get("partition_count", 0)) != 4:
		failures.push_back("unexpected union topology")
	if int(build_stats.get("duplicate_floor_triangles", -1)) != 0 or int(build_stats.get("duplicate_ceiling_triangles", -1)) != 0 or int(build_stats.get("duplicate_wall_triangles", -1)) != 0:
		failures.push_back("duplicate aggregate triangles")
	for vent_transform: Transform3D in _vent_transforms:
		if vent_transform.basis.z.normalized().dot(Vector3.UP) < 0.99 or not is_equal_approx(vent_transform.origin.y, 2.84):
			failures.push_back("vent is not a horizontal ceiling HVAC module")
	_validate_wall_segments(failures)
	_print_door_seam_audit(failures)
	if float(build_stats.get("max_wall_junction_delta", INF)) > DOOR_SEAM_TOLERANCE:
		failures.push_back("wall face junction delta exceeds 0.001 m")
	if push_door == null:
		failures.push_back("missing reusable push door")
	if door_frames.multimesh == null or door_frames.multimesh.instance_count != 2:
		failures.push_back("door/glass frames do not use one complete two-sided frame per opening")
	if not is_equal_approx(float(_glass_opening_contract.get("frame_outer_width", 0.0)), DOOR_FRAME_OUTER_WIDTH) or not is_equal_approx(float(_push_opening_contract.get("cut_height", 0.0)), DOOR_FRAME_OUTER_HEIGHT):
		failures.push_back("framed opening contract dimensions changed")
	if map_mount.mesh == null or not is_equal_approx(map_mount.mesh.get_aabb().size.x, 0.025) or not is_equal_approx(map_mount.mesh.get_aabb().size.y, 0.90) or not is_equal_approx(map_mount.mesh.get_aabb().size.z, 1.40):
		failures.push_back("MapMount backing is not 1.40 x 0.90 x 0.025 m")
	if map_face.mesh == null or map_face.position.x <= 0.0125 or not is_equal_approx(map_mount.position.y, 1.45):
		failures.push_back("map face is not front-only at the required height/gap")
	if get_node_or_null("Details/EmbeddedArmchair") != null:
		failures.push_back("embedded furniture was not removed")
	var space := get_world_3d().direct_space_state
	var floor_samples := [
		Vector2(0.0, 2.2), Vector2(0.0, 18.0), Vector2(0.0, 37.0), Vector2(8.7, 2.4),
		Vector2(0.0, -5.5), Vector2(4.0, -12.5), Vector2(9.75, -17.0),
		Vector2(9.75, -23.25), Vector2(9.75, -28.5), Vector2(9.75, -33.5), Vector2(9.75, -38.0),
		Vector2(-8.75, 24.0), Vector2(-14.5, 24.0), Vector2(-8.5, 37.2), Vector2(-18.4, 44.5),
	]
	for point: Vector2 in floor_samples:
		var from := to_global(Vector3(point.x, 1.5, point.y))
		var query := PhysicsRayQueryParameters3D.create(from, from + Vector3.DOWN * 2.0, 1)
		if space.intersect_ray(query).is_empty():
			failures.push_back("floor ray missed at (%.2f, %.2f)" % [point.x, point.y])
	var glass_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(5.4, 1.1, 2.4)), to_global(Vector3(7.8, 1.1, 2.4)), 1)
	if space.intersect_ray(glass_query).is_empty():
		failures.push_back("glass-door collision ray missed")
	var column_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(-21.4, 1.0, 41.2)), to_global(Vector3(-21.4, 1.0, 43.7)), 1)
	if space.intersect_ray(column_query).is_empty():
		failures.push_back("column collision ray missed")
	var wall_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(5.10, 1.0, 15.0)), to_global(Vector3(6.80, 1.0, 15.0)), 1)
	if space.intersect_ray(wall_query).is_empty():
		failures.push_back("solid east wall collision ray missed")
	var wall_rays := [
		[Vector3(-4.0, 1.0, 0.6), Vector3(-4.0, 1.0, -0.6)], [Vector3(-6.4, 1.0, 3.0), Vector3(-7.6, 1.0, 3.0)],
		[Vector3(6.4, 1.0, 6.0), Vector3(7.6, 1.0, 6.0)], [Vector3(5.4, 1.0, 15.0), Vector3(6.6, 1.0, 15.0)],
		[Vector3(-5.4, 1.0, 15.0), Vector3(-6.6, 1.0, 15.0)], [Vector3(2.0, 1.0, 38.4), Vector3(2.0, 1.0, 39.6)],
		[Vector3(9.0, 1.0, 1.2), Vector3(9.0, 1.0, 0.2)], [Vector3(9.8, 1.0, 2.4), Vector3(10.8, 1.0, 2.4)],
		[Vector3(9.0, 1.0, 3.6), Vector3(9.0, 1.0, 4.6)], [Vector3(-1.0, 1.0, -5.0), Vector3(-2.0, 1.0, -5.0)],
		[Vector3(1.0, 1.0, -5.0), Vector3(2.0, 1.0, -5.0)], [Vector3(4.0, 1.0, -11.6), Vector3(4.0, 1.0, -10.4)],
		[Vector3(3.0, 1.0, -13.4), Vector3(3.0, 1.0, -14.6)], [Vector3(12.4, 1.0, -17.0), Vector3(13.6, 1.0, -17.0)],
		[Vector3(7.1, 1.0, -17.0), Vector3(5.9, 1.0, -17.0)], [Vector3(10.6, 1.0, -23.0), Vector3(11.7, 1.0, -23.0)],
		[Vector3(8.9, 1.0, -23.0), Vector3(7.8, 1.0, -23.0)], [Vector3(11.7, 1.0, -28.0), Vector3(12.7, 1.0, -28.0)],
		[Vector3(7.8, 1.0, -28.0), Vector3(6.8, 1.0, -28.0)], [Vector3(11.2, 1.0, -38.0), Vector3(12.2, 1.0, -38.0)],
		[Vector3(-23.8, 1.0, 44.0), Vector3(-24.9, 1.0, 44.0)],
	]
	for wall_index in wall_rays.size():
		var sample: Array = wall_rays[wall_index]
		var sample_query := PhysicsRayQueryParameters3D.create(to_global(sample[0]), to_global(sample[1]), 1)
		if space.intersect_ray(sample_query).is_empty():
			failures.push_back("wall collision sample %d missed" % wall_index)
	var opening_rays := [
		{"id": "A1-A2", "from": Vector3(0.0, 1.0, 6.50), "to": Vector3(0.0, 1.0, 7.50)},
		{"id": "A1-C01", "from": Vector3(0.0, 1.0, 0.50), "to": Vector3(0.0, 1.0, -0.50)},
		{"id": "C01-C02", "from": Vector3(0.0, 1.0, -10.50), "to": Vector3(0.0, 1.0, -11.50)},
		{"id": "C02-C-R01", "from": Vector3(8.0, 1.0, -13.50), "to": Vector3(8.0, 1.0, -14.50)},
		{"id": "C-R01-C03", "from": Vector3(9.75, 1.0, -20.00), "to": Vector3(9.75, 1.0, -21.00)},
		{"id": "C03-C-R02", "from": Vector3(9.75, 1.0, -25.50), "to": Vector3(9.75, 1.0, -26.50)},
		{"id": "C-R02-C04", "from": Vector3(9.75, 1.0, -30.50), "to": Vector3(9.75, 1.0, -31.50)},
		{"id": "C04-C-R03", "from": Vector3(9.75, 1.0, -35.50), "to": Vector3(9.75, 1.0, -36.50)},
		{"id": "A2-D-C01", "from": Vector3(-5.50, 1.0, 24.00), "to": Vector3(-6.50, 1.0, 24.00)},
		{"id": "A2-E-C01", "from": Vector3(-5.50, 1.0, 35.10), "to": Vector3(-6.50, 1.0, 35.85)},
		{"id": "E-C01-E", "from": Vector3(-11.90, 1.0, 39.675), "to": Vector3(-12.90, 1.0, 40.425)},
		{"id": "D-R02", "from": Vector3(-13.50, 1.0, 22.80), "to": Vector3(-14.80, 1.0, 22.80)},
		{"id": "Sector04-Sector07", "from": Vector3(-5.50, 1.0, 29.25), "to": Vector3(-6.50, 1.0, 29.25)},
	]
	for opening: Dictionary in opening_rays:
		var opening_query := PhysicsRayQueryParameters3D.create(to_global(opening["from"]), to_global(opening["to"]), 1)
		if not space.intersect_ray(opening_query).is_empty():
			failures.push_back("unexpected collision in opening %s" % String(opening["id"]))
	var door_body := push_door.get_node("Hinge/DoorBody") as AnimatableBody3D
	var door_cut_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(-11.0, 1.0, 24.0)), to_global(Vector3(-12.0, 1.0, 24.0)), 1)
	door_cut_query.exclude = [door_body.get_rid()]
	if not space.intersect_ray(door_cut_query).is_empty():
		failures.push_back("push-door opening still contains architecture collision")
	var glass_cut_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(6.5, 1.0, 2.4)), to_global(Vector3(7.5, 1.0, 2.4)), 1)
	glass_cut_query.exclude = [glass_door_collision.get_parent().get_rid()]
	if not space.intersect_ray(glass_cut_query).is_empty():
		failures.push_back("glass opening still contains architecture collision")
	_validate_framed_opening_collisions(space, door_body, failures)
	var map_room_east_wall := PhysicsRayQueryParameters3D.create(to_global(Vector3(-13.50, 1.0, 21.55)), to_global(Vector3(-14.80, 1.0, 21.55)), 1)
	if space.intersect_ray(map_room_east_wall).is_empty():
		failures.push_back("D-R02 east wall beside its passage is missing")
	var map_room_north_wall := PhysicsRayQueryParameters3D.create(to_global(Vector3(-16.00, 1.0, 24.20)), to_global(Vector3(-16.00, 1.0, 25.20)), 1)
	if space.intersect_ray(map_room_north_wall).is_empty():
		failures.push_back("D-R02 north wall is missing")
	var map_room_clear_width := (-14.15 - WALL_THICKNESS * 0.5) - (-17.50)
	var map_room_clear_depth := (24.75 - WALL_THICKNESS * 0.5) - 21.00
	if not is_equal_approx(map_room_clear_width, 3.20) or not is_equal_approx(map_room_clear_depth, 3.60):
		failures.push_back("D-R02 clear size is not 3.20 x 3.60 m")
	var east_circulation_clearance := (-11.50) - (-14.15 + WALL_THICKNESS * 0.5)
	var north_circulation_clearance := 27.00 - (24.75 + WALL_THICKNESS * 0.5)
	if east_circulation_clearance < 1.40 or north_circulation_clearance < 1.40:
		failures.push_back("D-R02 reduced D-R01 circulation below 1.40 m")
	for width: float in [3.00, 3.00, 3.00, 2.80, 2.80, 2.80, 2.80, 3.00]:
		if width < 2.60 or width <= PLAYER_RADIUS * 2.0:
			failures.push_back("invalid opening width %.2f" % width)
	if not is_equal_approx(SECTOR07_PASSAGE_WIDTH, 2.15) or SECTOR07_PASSAGE_WIDTH <= PLAYER_RADIUS * 2.0:
		failures.push_back("invalid controlled Sector 07 passage width %.2f" % SECTOR07_PASSAGE_WIDTH)
	var player := get_node_or_null("../../Player") as CharacterBody3D
	var movement_distance := 0.0
	var wall_slide_distance := 0.0
	if player == null:
		failures.push_back("player missing")
	else:
		if not player.is_on_floor():
			failures.push_back("player did not settle on floor")
		var start := player.global_position
		Input.action_press("move_forward")
		for _frame_index in 30:
			await get_tree().physics_frame
		Input.action_release("move_forward")
		movement_distance = Vector2(player.global_position.x - start.x, player.global_position.z - start.z).length()
		if movement_distance < 0.70:
			failures.push_back("movement advanced only %.3f m" % movement_distance)
		if player.global_position.y < -0.5:
			failures.push_back("player fell through floor")
		player.global_position = start
		player.velocity = Vector3.ZERO
		var saved_transform := player.global_transform
		var player_camera := player.get_node("Camera3D") as Camera3D
		player.global_position = to_global(Vector3(5.55, 0.10, 14.0))
		player.rotation = Vector3.ZERO
		player_camera.rotation.x = 0.0
		for _frame_index in 5:
			await get_tree().physics_frame
		var slide_start := player.global_position
		Input.action_press("move_forward")
		Input.action_press("move_right")
		for _frame_index in 30:
			await get_tree().physics_frame
		Input.action_release("move_forward")
		Input.action_release("move_right")
		wall_slide_distance = absf(player.global_position.z - slide_start.z)
		if wall_slide_distance < 0.70:
			failures.push_back("wall slide snagged after %.3f m" % wall_slide_distance)
		player.global_transform = saved_transform
		player.velocity = Vector3.ZERO
		await _validate_push_door(player, space, failures)
	if failures.is_empty():
		print("SECTOR04_V2_VALIDATION: PASS input=14 union=1 boundary=%d->%d partitions=4 floor_samples=15 wall_samples=23 openings=15 framed=2 seam_max=%.6fm jamb_collision=4 wall_junction_max=%.6fm map_room=3.20x3.60 passage=1.20 sector07_passage=2.15 clearances=2.50+2.10 vents=5 furniture=0 movement=%.3fm slide=%.3fm door=open+close duplicates=0" % [build_stats.boundary_edges_before, build_stats.boundary_edges_after, _max_door_seam_delta, float(build_stats.max_wall_junction_delta), movement_distance, wall_slide_distance])
		return true
	for failure: String in failures:
		push_error("SECTOR04_V2_VALIDATION: %s" % failure)
	return false


func _validate_framed_opening_collisions(space: PhysicsDirectSpaceState3D, push_door_body: AnimatableBody3D, failures: Array[String]) -> void:
	var glass_body := glass_door_collision.get_parent() as StaticBody3D
	for run: Dictionary in _partition_walls:
		var direction := (Vector2(run["b"]) - Vector2(run["a"])).normalized()
		var normal: Vector2 = run["normal"]
		for opening: Dictionary in run["openings"]:
			if not bool(opening.get("framed", false)):
				continue
			var center: Vector2 = _architecture_builder.opening_wall_center(run, opening, WALL_THICKNESS)
			var excluded: Array[RID] = []
			excluded.push_back(glass_body.get_rid() if String(opening["id"]) == "glass_room" else push_door_body.get_rid())
			var clear_query := _opening_cross_query(center, normal, excluded)
			if not space.intersect_ray(clear_query).is_empty():
				failures.push_back("framed opening %s clear centre is blocked" % String(opening["id"]))
			var jamb_offset := float(opening["clear_width"]) * 0.5 + float(opening["jamb_visible_width"]) * 0.5
			for side: float in [-1.0, 1.0]:
				var jamb_point := center + direction * jamb_offset * side
				var jamb_query := _opening_cross_query(jamb_point, normal, excluded)
				if space.intersect_ray(jamb_query).is_empty():
					failures.push_back("framed opening %s jamb collision missing on side %.0f" % [opening["id"], side])


func _opening_cross_query(point: Vector2, normal: Vector2, excluded: Array[RID]) -> PhysicsRayQueryParameters3D:
	var start := to_global(Vector3(point.x + normal.x * 0.70, 1.0, point.y + normal.y * 0.70))
	var finish := to_global(Vector3(point.x - normal.x * 0.70, 1.0, point.y - normal.y * 0.70))
	var query := PhysicsRayQueryParameters3D.create(start, finish, 1)
	query.exclude = excluded
	return query


func _validate_wall_segments(failures: Array[String]) -> void:
	var all_walls: Array[Dictionary] = []
	all_walls.append_array(_boundary_walls)
	all_walls.append_array(_partition_walls)
	for wall_index in all_walls.size():
		var wall: Dictionary = all_walls[wall_index]
		var wall_a: Vector2 = wall["a"]
		if wall_a.distance_to(wall["b"]) < MIN_WALL_LENGTH:
			failures.push_back("short sanitized wall %d" % wall_index)
		for other_index in range(wall_index + 1, all_walls.size()):
			var other: Dictionary = all_walls[other_index]
			if _same_undirected_segment(wall["a"], wall["b"], other["a"], other["b"]):
				failures.push_back("duplicate sanitized walls %d/%d" % [wall_index, other_index])
	for partition: Dictionary in _partition_walls:
		for boundary: Dictionary in _boundary_walls:
			if _collinear_overlap_length(partition["a"], partition["b"], boundary["a"], boundary["b"]) > POSITION_EPSILON:
				failures.push_back("partition overlaps boundary")


func _validate_push_door(player: CharacterBody3D, space: PhysicsDirectSpaceState3D, failures: Array[String]) -> void:
	var saved_transform := player.global_transform
	var player_camera := player.get_node("Camera3D") as Camera3D
	player.global_position = to_global(Vector3(-9.80, 0.10, 24.00))
	player.rotation = Vector3(0.0, PI * 0.5, 0.0)
	player_camera.rotation.x = 0.0
	player.velocity = Vector3.ZERO
	for _frame_index in 5:
		await get_tree().physics_frame
	var glass_body := glass_door_collision.get_parent()
	if glass_body.has_method("interact") or glass_body.get_parent().has_method("interact"):
		failures.push_back("glass door became interactable")
	_send_interact_input()
	for _frame_index in 30:
		await get_tree().physics_frame
	if not bool(push_door.get("is_open")):
		failures.push_back("E did not open push door")
	var door_body := push_door.get_node("Hinge/DoorBody") as AnimatableBody3D
	if absf(door_body.rotation.y) < deg_to_rad(90.0):
		failures.push_back("push door did not reach open angle")
	var old_plane_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(-11.00, 1.0, 24.00)), to_global(Vector3(-12.00, 1.0, 24.00)), 1)
	if not space.intersect_ray(old_plane_query).is_empty():
		failures.push_back("open push door still blocks closed plane")
	var moved_leaf_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(-12.00, 1.0, 22.90)), to_global(Vector3(-12.00, 1.0, 23.90)), 1)
	if space.intersect_ray(moved_leaf_query).is_empty():
		failures.push_back("push door collision did not follow leaf")
	player.global_position = to_global(Vector3(-12.00, 0.10, 25.20))
	player.rotation = Vector3.ZERO
	player_camera.rotation.x = 0.0
	player.velocity = Vector3.ZERO
	for _frame_index in 5:
		await get_tree().physics_frame
	_send_interact_input()
	for _frame_index in 30:
		await get_tree().physics_frame
	if bool(push_door.get("is_open")):
		failures.push_back("E did not close push door")
	var closed_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(-11.00, 1.0, 24.00)), to_global(Vector3(-12.00, 1.0, 24.00)), 1)
	if space.intersect_ray(closed_query).is_empty():
		failures.push_back("closed push door collision missing")
	if player.global_position.y < -0.5:
		failures.push_back("player displaced through floor during door test")
	player.global_transform = saved_transform
	player.velocity = Vector3.ZERO


func _send_interact_input() -> void:
	var pressed := InputEventAction.new()
	pressed.action = "interact"
	pressed.pressed = true
	Input.parse_input_event(pressed)
	var released := InputEventAction.new()
	released.action = "interact"
	released.pressed = false
	Input.parse_input_event(released)


func _capture_sector() -> void:
	var player_ui := get_node_or_null("../../Player/PlayerUI") as CanvasLayer
	if player_ui != null:
		player_ui.visible = false
	var camera := Camera3D.new()
	camera.current = true
	add_child(camera)
	var shots := [
		{"file": "sector_04_door_seam_left_closeup.png", "position": Vector3(-10.78, 1.28, 23.70), "target": Vector3(-11.50, 1.10, 23.34), "fov": 47.0},
		{"file": "sector_04_door_seam_right_closeup.png", "position": Vector3(-10.78, 1.28, 24.30), "target": Vector3(-11.50, 1.10, 24.66), "fov": 47.0},
		{"file": "sector_04_wall_t_junction_closeup.png", "position": Vector3(-8.90, 1.42, 23.35), "target": Vector3(-11.50, 0.82, 22.60), "fov": 55.0},
		{"file": "sector_04_door_seam_distance.png", "position": Vector3(-9.70, 1.48, 24.00), "target": Vector3(-11.50, 1.12, 24.00), "fov": 55.0},
	]
	var output_dir := ProjectSettings.globalize_path("res://captures")
	DirAccess.make_dir_recursive_absolute(output_dir)
	for shot: Dictionary in shots:
		camera.projection = Camera3D.PROJECTION_PERSPECTIVE
		camera.position = shot.position
		camera.fov = float(shot.fov)
		camera.look_at(shot.target, Vector3.UP)
		await _save_capture(camera, output_dir.path_join(String(shot.file)))
	push_door.call("request_toggle", camera)
	for _frame_index in 30:
		await get_tree().physics_frame
	camera.position = Vector3(-9.70, 1.48, 24.00)
	camera.fov = 55.0
	camera.look_at(Vector3(-11.50, 1.12, 24.00), Vector3.UP)
	await _save_capture(camera, output_dir.path_join("sector_04_door_open_seam.png"))
	camera.queue_free()


func _save_capture(_camera: Camera3D, output_path: String) -> void:
	await get_tree().process_frame
	await RenderingServer.frame_post_draw
	var image := get_viewport().get_texture().get_image()
	var save_error := image.save_png(output_path)
	if save_error != OK:
		push_error("Sector04 capture failed: %s" % error_string(save_error))
	else:
		print("SECTOR04_V2_CAPTURE: %s" % output_path)
