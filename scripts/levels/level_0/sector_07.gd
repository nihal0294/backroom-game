extends Node3D

## Static, source-derived Sector 07. Topology is frozen from sector_07.png;
## no raster or trace resource is read at runtime.

const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.035
const FIXTURE_Y := 2.84
const SOURCE_METERS_PER_PIXEL := 0.09
const SOURCE_ORIGIN_PX := Vector2(180.0, 143.0)
const PASSAGE_WIDTH := 2.15
const MAX_REAL_LIGHTS := 8
const HOLE_SIZE := 1.20
const HOLE_CENTER_PX := Vector2(421.0, 737.0)
const SLOPE_START_PX_X := 760.0
const SLOPE_END_PX_X := 843.333333
const SLOPE_DROP := -0.987395
const PLAYER_RADIUS := 0.32
const CORRIDOR_TRAVERSALS := [
	{"id": "C07-01", "a": Vector2(180, 323), "b": Vector2(244, 356)},
	{"id": "C07-02", "a": Vector2(294, 143), "b": Vector2(320, 286)},
	{"id": "C07-03", "a": Vector2(244, 356), "b": Vector2(316, 344)},
	{"id": "C07-04", "a": Vector2(288, 412), "b": Vector2(380, 420)},
	{"id": "C07-05", "a": Vector2(424, 324), "b": Vector2(500, 392)},
	{"id": "C07-06", "a": Vector2(464, 500), "b": Vector2(560, 488)},
	{"id": "C07-07", "a": Vector2(560, 488), "b": Vector2(700, 444)},
	{"id": "C07-08", "a": Vector2(680, 420), "b": Vector2(680, 333), "probe_t": 0.15},
	{"id": "C07-09", "a": Vector2(700, 444), "b": Vector2(826, 450)},
	{"id": "C07-10", "a": Vector2(300, 548), "b": Vector2(328, 608)},
	{"id": "C07-11", "a": Vector2(328, 608), "b": Vector2(436, 672)},
	{"id": "C07-12", "a": Vector2(436, 672), "b": Vector2(488, 668)},
	{"id": "C07-13", "a": Vector2(488, 668), "b": Vector2(464, 580), "probe_t": 0.20},
	{"id": "C07-14", "a": Vector2(408, 700), "b": Vector2(388, 744)},
	{"id": "C07-15", "a": Vector2(388, 744), "b": Vector2(328, 812)},
	{"id": "C07-16", "a": Vector2(312, 800), "b": Vector2(288, 900), "probe_t": 0.20},
]
const ArchitectureBuilderScript = preload("res://scripts/levels/level_0/level0_architecture_builder.gd")
const Sector07Layout = preload("res://scripts/levels/level_0/sector_07_layout.gd")

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/sector_07_yellow_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/wallpaper.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/ceiling.tres")
const TRIM_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/source/wood_trim.tres")
const DOOR_FRAME_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_frame.tres")
const DOOR_PANEL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_panel.tres")
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
@onready var vent_visuals: MultiMeshInstance3D = %VentVisuals
@onready var sparse_lights: Node3D = %SparseLights
@onready var jammed_door_visual: MeshInstance3D = %JammedDoorVisual
@onready var jammed_door_collision: CollisionShape3D = %JammedDoorCollision
@onready var square_hole_visual: MeshInstance3D = %SquareHoleVisual
@onready var square_hole_collision: CollisionShape3D = %SquareHoleCollision
@onready var crack_visuals: MultiMeshInstance3D = %CrackVisuals
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var entrance_marker: Marker3D = %Sector04Connection
@onready var terminal_08: Marker3D = %Terminal08
@onready var terminal_11: Marker3D = %Terminal11
@onready var terminal_06: Marker3D = %Terminal06
@onready var music_source_marker: Marker3D = %MusicSourceRequired

var _build_result: Dictionary = {}
var _fixture_points: Array[Dictionary] = []
var _lit_fixture_transforms: Array[Transform3D] = []
var _off_fixture_transforms: Array[Transform3D] = []
var _socket_transforms: Array[Transform3D] = []
var _vent_transforms: Array[Transform3D] = []
var _light_count := 0


func _ready() -> void:
	_build_architecture()
	_build_fixtures()
	_build_details()
	_build_sparse_lights()
	_place_markers()
	var validation_requested := OS.get_environment("LEVEL0_SECTOR07_VALIDATE") == "1"
	var diagnostics_requested := validation_requested or OS.get_environment("LEVEL0_SECTOR07_AUDIT") == "1" or OS.get_environment("LEVEL0_SECTOR07_CAPTURE") == "1"
	if diagnostics_requested:
		_print_performance_audit()
		_print_build_audit()
	call_deferred("_run_optional_tasks")


func _build_architecture() -> void:
	var builder: RefCounted = ArchitectureBuilderScript.new()
	var floor_rects := _layout_rects(Sector07Layout.floor_rects_px())
	var ceiling_rects := _layout_rects(Sector07Layout.ceiling_rects_px())
	var boundaries := _layout_boundaries(Sector07Layout.boundary_runs_px())
	var partitions := _layout_partitions(Sector07Layout.partition_runs_px())
	var columns := _layout_columns(Sector07Layout.pillar_rects_px())
	_build_result = builder.build_traced(
		floor_rects,
		ceiling_rects,
		boundaries,
		partitions,
		columns,
		{"floor": FLOOR_MATERIAL, "wall": WALL_MATERIAL, "ceiling": CEILING_MATERIAL, "trim": TRIM_MATERIAL},
		{"ceiling_y": CEILING_Y, "wall_thickness": WALL_THICKNESS, "baseboard_height": BASEBOARD_HEIGHT, "baseboard_depth": BASEBOARD_DEPTH},
		Callable(self, "_floor_height")
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


func _layout_rects(source_rects: Array[Rect2]) -> Array[Rect2]:
	var result: Array[Rect2] = []
	for source_rect: Rect2 in source_rects:
		var local_rect := Rect2((source_rect.position - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, source_rect.size * SOURCE_METERS_PER_PIXEL)
		var columns := maxi(1, ceili(local_rect.size.x / 0.36))
		var rows := maxi(1, ceili(local_rect.size.y / 0.36))
		for row in rows:
			var z0 := lerpf(local_rect.position.y, local_rect.end.y, float(row) / rows)
			var z1 := lerpf(local_rect.position.y, local_rect.end.y, float(row + 1) / rows)
			for column in columns:
				var x0 := lerpf(local_rect.position.x, local_rect.end.x, float(column) / columns)
				var x1 := lerpf(local_rect.position.x, local_rect.end.x, float(column + 1) / columns)
				var cell := Rect2(x0, z0, x1 - x0, z1 - z0)
				if not _cell_conflicts_sector04(cell):
					result.push_back(cell)
	return result


func _cell_conflicts_sector04(cell: Rect2) -> bool:
	for point: Vector2 in [cell.position, Vector2(cell.end.x, cell.position.y), cell.end, Vector2(cell.position.x, cell.end.y), cell.get_center()]:
		if _point_conflicts_sector04(point):
			return true
	return false


func _point_conflicts_sector04(local_point: Vector2) -> bool:
	var world_point_3d := to_global(Vector3(local_point.x, 0.0, local_point.y))
	var world_point := Vector2(world_point_3d.x, world_point_3d.z)
	var seam := Rect2(-6.20, 29.26 - PASSAGE_WIDTH * 0.5, 0.40, PASSAGE_WIDTH)
	if seam.has_point(world_point):
		return false
	for polygon: PackedVector2Array in _sector04_footprints():
		if Geometry2D.is_point_in_polygon(world_point, polygon):
			return true
		for edge_index in polygon.size():
			if _distance_to_segment_2d(world_point, polygon[edge_index], polygon[(edge_index + 1) % polygon.size()]) <= 0.25:
				return true
	return false


func _distance_to_segment_2d(point: Vector2, a: Vector2, b: Vector2) -> float:
	var delta := b - a
	if delta.length_squared() <= 0.000001:
		return point.distance_to(a)
	var interpolation := clampf((point - a).dot(delta) / delta.length_squared(), 0.0, 1.0)
	return point.distance_to(a + delta * interpolation)


func _sector04_footprints() -> Array[PackedVector2Array]:
	return [
		_rect_polygon(-7.00, 0.00, 7.00, 7.00), _rect_polygon(-6.00, 7.00, 6.00, 39.00),
		_rect_polygon(7.00, 0.70, 10.40, 4.10), _rect_polygon(-1.50, -11.00, 1.50, 0.00),
		_rect_polygon(-1.50, -14.00, 9.50, -11.00), _rect_polygon(6.50, -20.50, 13.00, -14.00),
		_rect_polygon(8.35, -26.00, 11.15, -20.50), _rect_polygon(7.25, -31.00, 12.25, -26.00),
		_rect_polygon(8.35, -36.00, 11.15, -31.00), _rect_polygon(7.75, -40.00, 11.75, -36.00),
		_rect_polygon(-11.50, 22.60, -6.00, 25.40), _rect_polygon(-17.50, 21.00, -11.50, 27.00),
		PackedVector2Array([Vector2(-5.90, 33.30), Vector2(-4.10, 35.70), Vector2(-12.40, 41.925), Vector2(-14.20, 39.525)]),
		_rect_polygon(-24.40, 39.525, -12.40, 49.525),
	]


func _layout_boundaries(source_runs: Array[Dictionary]) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	var seen: Dictionary = {}
	var entrance_local := (Vector2(180.0, 323.0) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var hole_local := (HOLE_CENTER_PX - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	for source_run: Dictionary in source_runs:
		var a := (Vector2(source_run["a"]) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
		var b := (Vector2(source_run["b"]) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
		var midpoint := (a + b) * 0.5
		# Sector 04 owns the jamb-free seam. Remove only the traced crop-edge
		# fragments inside the exact shared 2.15 m descriptor.
		if absf(midpoint.x) <= 0.19 and absf(midpoint.y - entrance_local.y) <= PASSAGE_WIDTH * 0.5 + 0.19:
			continue
		# The square opening uses its dedicated shaft collision, not a full-height wall.
		if absf(midpoint.x - hole_local.x) <= HOLE_SIZE * 0.5 + 0.01 and absf(midpoint.y - hole_local.y) <= HOLE_SIZE * 0.5 + 0.01:
			continue
		var length := a.distance_to(b)
		var segment_count := maxi(1, ceili(length / 0.36))
		for segment in segment_count:
			var segment_a := a.lerp(b, float(segment) / segment_count)
			var segment_b := a.lerp(b, float(segment + 1) / segment_count)
			var normal := Vector2(source_run["normal"]).normalized()
			var segment_midpoint := (segment_a + segment_b) * 0.5
			# The source crop is noisy at the Sector 04 edge. Remove every small
			# fragment intersecting the controlled entrance envelope, including
			# fragments belonging to a longer run whose overall midpoint lies away.
			if segment_midpoint.x <= 3.20 and absf(segment_midpoint.y - entrance_local.y) <= 2.40:
				continue
			if _point_conflicts_sector04(segment_midpoint) or _point_conflicts_sector04(segment_midpoint + normal * WALL_THICKNESS):
				continue
			var key := _undirected_segment_key(segment_a, segment_b)
			if seen.has(key):
				continue
			seen[key] = true
			result.push_back({"a": segment_a, "b": segment_b, "normal": normal, "openings": []})
	# Under the approved 225-degree registration, the local south-east diagonal
	# maps exactly to the west-facing normal of Sector 04's torn-wall seam.
	var entrance_start := Vector2(0.0, entrance_local.y)
	var entrance_direction := Vector2.ONE.normalized()
	var entrance_side := Vector2(-entrance_direction.y, entrance_direction.x)
	var entrance_finish := entrance_start + entrance_direction * 3.20
	result.push_back({"a": entrance_start + entrance_side * PASSAGE_WIDTH * 0.5, "b": entrance_finish + entrance_side * PASSAGE_WIDTH * 0.5, "normal": entrance_side, "openings": []})
	result.push_back({"a": entrance_finish - entrance_side * PASSAGE_WIDTH * 0.5, "b": entrance_start - entrance_side * PASSAGE_WIDTH * 0.5, "normal": -entrance_side, "openings": []})
	return result


func _undirected_segment_key(a: Vector2, b: Vector2) -> String:
	var first := a.snapped(Vector2.ONE * 0.0001)
	var second := b.snapped(Vector2.ONE * 0.0001)
	if first.x > second.x or (is_equal_approx(first.x, second.x) and first.y > second.y):
		var swap := first
		first = second
		second = swap
	return "%s|%s" % [first, second]


func _layout_partitions(source_runs: Array[Dictionary]) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for source_run: Dictionary in source_runs:
		var a := (Vector2(source_run["a"]) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
		var b := (Vector2(source_run["b"]) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
		if a.distance_to(b) < 1.20:
			continue
		if _point_conflicts_sector04((a + b) * 0.5):
			continue
		var direction := (b - a).normalized()
		result.push_back({"id": source_run["id"], "a": a, "b": b, "normal": Vector2(-direction.y, direction.x), "openings": []})
	return result


func _layout_columns(source_rects: Array[Rect2]) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for source_rect: Rect2 in source_rects:
		var local_rect := Rect2((source_rect.position - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, source_rect.size * SOURCE_METERS_PER_PIXEL)
		if not _point_conflicts_sector04(local_rect.get_center()):
			result.push_back({"center": local_rect.get_center(), "size_x": local_rect.size.x, "size_z": local_rect.size.y})
	return result


func _rect_polygon(min_x: float, min_z: float, max_x: float, max_z: float) -> PackedVector2Array:
	return PackedVector2Array([Vector2(min_x, min_z), Vector2(max_x, min_z), Vector2(max_x, max_z), Vector2(min_x, max_z)])


func _build_fixtures() -> void:
	_fixture_points = [
		_fixture_px(450, 550, false, 0), _fixture_px(520, 500, false, 1), _fixture_px(330, 820, false, 0),
		_fixture_px(260, 350, false, 1), _fixture_px(320, 390, false, 0), _fixture_px(380, 420, true, 1),
		_fixture_px(450, 420, false, 0), _fixture_px(500, 470, false, 1), _fixture_px(550, 495, false, 0),
		_fixture_px(610, 455, false, 1), _fixture_px(665, 440, false, 0), _fixture_px(720, 435, false, 1),
		_fixture_px(780, 440, true, 0), _fixture_px(815, 475, true, 1), _fixture_px(680, 340, false, 0),
		_fixture_px(315, 540, false, 1), _fixture_px(335, 585, false, 0), _fixture_px(390, 625, false, 1),
		_fixture_px(455, 665, false, 0), _fixture_px(385, 735, false, 1), _fixture_px(300, 840, false, 0),
	]
	for data: Dictionary in _fixture_points:
		var point: Vector2 = data["point"]
		if _point_conflicts_sector04(point):
			continue
		var fixture_basis := Basis(Vector3.UP, float(data["rotation"]) * PI * 0.5)
		var fixture_transform := Transform3D(fixture_basis, Vector3(point.x, _floor_height(point) + FIXTURE_Y, point.y))
		if bool(data["off"]):
			_off_fixture_transforms.push_back(fixture_transform)
		else:
			_lit_fixture_transforms.push_back(fixture_transform)
	fixture_visuals.multimesh = _make_transform_multimesh(_make_fixture_mesh(FIXTURE_PANEL_MATERIAL), _lit_fixture_transforms)
	fixture_visuals_off.multimesh = _make_transform_multimesh(_make_fixture_mesh(FIXTURE_PANEL_OFF_MATERIAL), _off_fixture_transforms)


func _fixture_px(x: float, z: float, off: bool, rotation_index: int) -> Dictionary:
	return {"point": (Vector2(x, z) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, "off": off, "rotation": rotation_index}


func _build_details() -> void:
	_socket_transforms = [
		Transform3D(Basis.IDENTITY, _source_position(300, 330, 0.317)), Transform3D(Basis.IDENTITY, _source_position(430, 325, 0.317)),
		Transform3D(Basis.IDENTITY, _source_position(500, 450, 0.317)), Transform3D(Basis.IDENTITY, _source_position(600, 450, 0.317)),
		Transform3D(Basis.IDENTITY, _source_position(700, 445, 0.317)), Transform3D(Basis.IDENTITY, _source_position(810, 490, 0.317)),
	]
	_socket_transforms[1].basis = Basis(Vector3.UP, PI)
	_socket_transforms[3].basis = Basis(Vector3.UP, PI * 0.5)
	socket_visuals.multimesh = _make_transform_multimesh(SOCKET_MESH, _socket_transforms)
	_vent_transforms = [
		Transform3D(Basis.IDENTITY, _source_position(350, 330, FIXTURE_Y)), Transform3D(Basis.IDENTITY, _source_position(480, 450, FIXTURE_Y)),
		Transform3D(Basis.IDENTITY, _source_position(650, 445, FIXTURE_Y)), Transform3D(Basis.IDENTITY, _source_position(390, 735, FIXTURE_Y)),
	]
	vent_visuals.multimesh = _make_transform_multimesh(VENT_MESH, _vent_transforms)
	# A136: static and visibly warped, intentionally not an interactable door.
	jammed_door_visual.mesh = _make_jammed_door_mesh()
	jammed_door_visual.position = _source_position(782, 470, 1.09)
	jammed_door_visual.rotation = Vector3(0.0, PI * 0.5 + 0.10, 0.035)
	var door_shape := BoxShape3D.new()
	door_shape.size = Vector3(1.16, 2.18, 0.16)
	jammed_door_collision.shape = door_shape
	jammed_door_collision.position = jammed_door_visual.position
	jammed_door_collision.rotation = jammed_door_visual.rotation
	_build_square_shaft()
	var crack_transforms: Array[Transform3D] = [
		Transform3D(Basis(Vector3.UP, PI * 0.5), _source_position(800, 476, 1.25)),
		Transform3D(Basis(Vector3.UP, PI * 0.5), _source_position(816, 490, 1.72)),
		Transform3D(Basis.IDENTITY, _source_position(780, 440, 1.45)),
	]
	crack_visuals.multimesh = _make_transform_multimesh(_make_box_mesh(Vector3(0.035, 0.72, 0.025), DOOR_PANEL_MATERIAL), crack_transforms)


func _source_position(x: float, z: float, y: float) -> Vector3:
	var point := (Vector2(x, z) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	return Vector3(point.x, y + _floor_height(point), point.y)


func _floor_height(point: Vector2) -> float:
	var source_x := point.x / SOURCE_METERS_PER_PIXEL + SOURCE_ORIGIN_PX.x
	var slope_progress := clampf((source_x - SLOPE_START_PX_X) / (SLOPE_END_PX_X - SLOPE_START_PX_X), 0.0, 1.0)
	return slope_progress * SLOPE_DROP


func _build_square_shaft() -> void:
	var center := (HOLE_CENTER_PX - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var half := HOLE_SIZE * 0.5
	var top_y := -0.01
	var bottom_y := -3.0
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	var corners := [
		Vector3(center.x - half, top_y, center.y - half), Vector3(center.x + half, top_y, center.y - half),
		Vector3(center.x + half, top_y, center.y + half), Vector3(center.x - half, top_y, center.y + half),
	]
	for side_index in 4:
		var top_a: Vector3 = corners[side_index]
		var top_b: Vector3 = corners[(side_index + 1) % 4]
		var bottom_a := Vector3(top_a.x, bottom_y, top_a.z)
		var bottom_b := Vector3(top_b.x, bottom_y, top_b.z)
		var normal := (top_b - top_a).cross(bottom_a - top_a).normalized()
		_add_quad(surface, top_a, top_b, bottom_b, bottom_a, normal)
		faces.append_array(PackedVector3Array([top_a, top_b, bottom_b, top_a, bottom_b, bottom_a]))
	var mesh := surface.commit()
	mesh.surface_set_material(0, DOOR_PANEL_MATERIAL)
	square_hole_visual.mesh = mesh
	var shaft_shape := ConcavePolygonShape3D.new()
	shaft_shape.set_faces(faces)
	shaft_shape.backface_collision = true
	square_hole_collision.shape = shaft_shape


func _build_sparse_lights() -> void:
	var lit_points: Array[Vector2] = []
	for data: Dictionary in _fixture_points:
		if not bool(data["off"]):
			lit_points.push_back(data["point"])
	for light_index in mini(MAX_REAL_LIGHTS, lit_points.size()):
		var light := OmniLight3D.new()
		light.name = "Sector07Light_%02d" % light_index
		var point := lit_points[light_index]
		light.position = Vector3(point.x, _floor_height(point) + CEILING_Y - 0.24, point.y)
		light.light_color = Color(0.98, 0.96, 0.84, 1.0)
		light.light_energy = 1.32 if light_index % 3 != 0 else 1.12
		light.light_specular = 0.025
		light.omni_range = 9.5
		light.omni_attenuation = 1.42
		light.shadow_enabled = false
		sparse_lights.add_child(light)
		_light_count += 1


func _place_markers() -> void:
	entrance_marker.position = _source_position(180, 323, 0.0)
	entrance_marker.rotation.y = PI
	terminal_08.position = _source_position(294, 143, 0.0)
	terminal_08.rotation.y = 0.0
	terminal_11.position = _source_position(665, 333, 0.0)
	terminal_11.rotation.y = 0.0
	terminal_06.position = _source_position(826, 380, 0.0)
	terminal_06.rotation.y = -PI * 0.5
	music_source_marker.position = _source_position(468, 652, 0.0)


func _make_fixture_mesh(panel_material: Material) -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, Vector3(1.20, 0.055, 0.60), Vector3(0.0, 0.0, 0.0))
	var mesh := surface.commit()
	mesh.surface_set_material(0, FIXTURE_HOUSING_MATERIAL)
	var panel_surface := SurfaceTool.new()
	panel_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(panel_surface, Vector3(1.08, 0.018, 0.48), Vector3(0.0, -0.0365, 0.0))
	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, panel_surface.commit_to_arrays())
	mesh.surface_set_material(1, panel_material)
	return mesh


func _make_box_mesh(size: Vector3, material: Material) -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, size, Vector3.ZERO)
	var mesh := surface.commit()
	mesh.surface_set_material(0, material)
	return mesh


func _make_jammed_door_mesh() -> ArrayMesh:
	var frame_surface := SurfaceTool.new()
	frame_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(frame_surface, Vector3(0.085, 2.285, 0.12), Vector3(-0.6425, 0.0525, 0.0))
	# A136 explicitly describes a warped frame: the opposite jamb is shorter
	# and the header is visibly off level, while the whole assembly stays static.
	_add_box(frame_surface, Vector3(0.085, 2.14, 0.12), Vector3(0.6425, -0.020, 0.0))
	_add_box(frame_surface, Vector3(1.37, 0.085, 0.12), Vector3(0.0, 1.150, 0.0))
	var mesh := frame_surface.commit()
	mesh.surface_set_material(0, DOOR_FRAME_MATERIAL)
	var panel_surface := SurfaceTool.new()
	panel_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(panel_surface, Vector3(1.16, 2.10, 0.075), Vector3(0.0, -0.04, 0.0))
	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, panel_surface.commit_to_arrays())
	mesh.surface_set_material(1, DOOR_PANEL_MATERIAL)
	return mesh


func _make_transform_multimesh(mesh: Mesh, transforms: Array[Transform3D]) -> MultiMesh:
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
	for item: Variant in [[a, Vector2.ZERO], [b, Vector2.RIGHT], [c, Vector2.ONE], [a, Vector2.ZERO], [c, Vector2.ONE], [d, Vector2.DOWN]]:
		surface.set_normal(normal)
		surface.set_uv(item[1])
		surface.add_vertex(item[0])


func _run_optional_tasks() -> void:
	if OS.get_environment("LEVEL0_SECTOR07_VALIDATE") == "1":
		await get_tree().physics_frame
		await get_tree().physics_frame
		var valid := await _validate_sector()
		get_tree().quit(0 if valid else 1)
		return
	if OS.get_environment("LEVEL0_SECTOR07_CAPTURE") == "1":
		await _capture_sector()
		get_tree().quit()


func _validate_sector() -> bool:
	var failures: Array[String] = []
	for build_error: String in _build_result.get("errors", []):
		failures.push_back("architecture builder: %s" % build_error)
	if floor_visual.mesh == null or wall_visual.mesh == null or ceiling_visual.mesh == null or baseboard_visual.mesh == null:
		failures.push_back("missing aggregate visual mesh")
	if floor_collision.shape == null or wall_collision.shape == null or jammed_door_collision.shape == null or square_hole_collision.shape == null:
		failures.push_back("missing aggregate/special collision")
	if _light_count > MAX_REAL_LIGHTS or _off_fixture_transforms.size() != 3:
		failures.push_back("invalid light or broken-fixture distribution")
	var stats: Dictionary = _build_result.get("stats", {})
	if int(stats.get("input_polygons", 0)) < 300 or int(stats.get("union_polygons", -1)) != 0:
		failures.push_back("traced rectangles were replaced by a union polygon")
	if int(stats.get("duplicate_floor_triangles", -1)) != 0 or int(stats.get("duplicate_ceiling_triangles", -1)) != 0 or int(stats.get("duplicate_wall_triangles", -1)) != 0:
		failures.push_back("duplicate aggregate triangles")
	var space := get_world_3d().direct_space_state
	var entrance_local := (Vector2(180, 323) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var seam_from := to_global(Vector3(-0.65, 1.0, entrance_local.y))
	var seam_to := to_global(Vector3(1.50, 1.0, entrance_local.y))
	if not space.intersect_ray(PhysicsRayQueryParameters3D.create(seam_from, seam_to, 1)).is_empty():
		failures.push_back("Sector 04/07 passage is blocked")
	var floor_samples := [
		(Vector2(200, 323) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
		(Vector2(300, 350) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
		(Vector2(500, 470) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
		(Vector2(700, 445) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
		(Vector2(320, 580) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
		(Vector2(400, 735) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
		(Vector2(290, 880) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL,
	]
	for point: Vector2 in floor_samples:
		var from := to_global(Vector3(point.x, 1.5, point.y))
		if space.intersect_ray(PhysicsRayQueryParameters3D.create(from, from + Vector3.DOWN * 2.0, 1)).is_empty():
			failures.push_back("floor ray missed at (%.2f, %.2f)" % [point.x, point.y])
	var hole_center := (HOLE_CENTER_PX - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var hole_from := to_global(Vector3(hole_center.x, 1.0, hole_center.y))
	if not space.intersect_ray(PhysicsRayQueryParameters3D.create(hole_from, hole_from + Vector3.DOWN * 1.2, 1)).is_empty():
		failures.push_back("square hole still has a false floor")
	for source_void: Vector2 in [Vector2(392, 358), Vector2(404, 484), Vector2(400, 580)]:
		var void_point := (source_void - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
		var void_from := to_global(Vector3(void_point.x, 1.0, void_point.y))
		var void_hit := space.intersect_ray(PhysicsRayQueryParameters3D.create(void_from, void_from + Vector3.DOWN * 1.2, 1))
		var void_collider := void_hit.get("collider") as Node
		if void_collider != null and is_ancestor_of(void_collider) and void_collider == floor_collision.get_parent():
			failures.push_back("large source void was filled at (%d, %d)" % [source_void.x, source_void.y])
	_validate_map_room(space, failures)
	_validate_sector04_overlap(space, failures)
	var player := get_node_or_null("../../Player") as CharacterBody3D
	if player == null:
		failures.push_back("player missing for bidirectional seam test")
	else:
		var saved_transform := player.global_transform
		var edge_offset := PASSAGE_WIDTH * 0.5 - PLAYER_RADIUS - 0.08
		await _validate_crossing(player, Vector3(-5.15, 0.10, 29.25), PI * 0.5, -6.45, true, "04_to_07_center", failures)
		await _validate_crossing(player, Vector3(-6.85, 0.10, 29.25), -PI * 0.5, -5.55, false, "07_to_04_center", failures)
		await _validate_crossing(player, Vector3(-5.15, 0.10, 29.25 - edge_offset), PI * 0.5, -6.45, true, "04_to_07_left_edge", failures)
		await _validate_crossing(player, Vector3(-6.85, 0.10, 29.25 + edge_offset), -PI * 0.5, -5.70, false, "07_to_04_right_edge", failures)
		for corridor: Dictionary in CORRIDOR_TRAVERSALS:
			await _validate_corridor_traversal(player, corridor, failures)
		player.global_transform = saved_transform
		player.velocity = Vector3.ZERO
	if failures.is_empty():
		print("SECTOR07_VALIDATION: PASS traced_rects=%d floor_triangles=%d fixtures=%d on=%d off=%d lights=%d sockets=%d vents=%d passage=%.2fm hole=real slope_drop=%.3fm terminals=08+11+06 capped=true" % [stats.get("input_polygons", 0), stats.get("floor_triangles", 0), _fixture_points.size(), _lit_fixture_transforms.size(), _off_fixture_transforms.size(), _light_count, _socket_transforms.size(), _vent_transforms.size(), PASSAGE_WIDTH, absf(SLOPE_DROP)])
		return true
	for failure: String in failures:
		push_error("SECTOR07_VALIDATION: %s" % failure)
	return false


func _validate_map_room(space: PhysicsDirectSpaceState3D, failures: Array[String]) -> void:
	var sample_points := [
		Vector2(-15.825, 22.875), Vector2(-17.20, 21.35), Vector2(-14.45, 21.35),
		Vector2(-17.20, 24.40), Vector2(-14.45, 24.40),
	]
	for point: Vector2 in sample_points:
		var query := PhysicsRayQueryParameters3D.create(Vector3(point.x, 3.0, point.y), Vector3(point.x, -0.5, point.y), 1)
		if space.intersect_ray(query).is_empty():
			failures.push_back("Map Room floor missing at (%.3f, %.3f)" % [point.x, point.y])
	var protected_shape := BoxShape3D.new()
	protected_shape.size = Vector3(3.05, 2.50, 3.45)
	var shape_query := PhysicsShapeQueryParameters3D.new()
	shape_query.shape = protected_shape
	shape_query.transform = Transform3D(Basis.IDENTITY, Vector3(-15.825, 1.35, 22.875))
	shape_query.collision_mask = 1
	for hit: Dictionary in space.intersect_shape(shape_query, 64):
		var collider := hit.get("collider") as Node
		if collider != null and is_ancestor_of(collider):
			failures.push_back("Sector 07 collision invades the protected Map Room")
			break
	var sector_04 := get_node_or_null("../Sector04") as Node3D
	var map_mount := sector_04.get_node_or_null("Details/MapMount") as MeshInstance3D if sector_04 != null else null
	if map_mount == null or map_mount.global_position.distance_to(Vector3(-17.4625, 1.45, 22.80)) > 0.001:
		failures.push_back("MapMount transform changed")
	var sight_query := PhysicsRayQueryParameters3D.create(Vector3(-14.02, 1.45, 22.80), Vector3(-17.30, 1.45, 22.80), 1)
	if not space.intersect_ray(sight_query).is_empty():
		failures.push_back("Map Room entrance-to-map sightline is blocked")


func _validate_sector04_overlap(space: PhysicsDirectSpaceState3D, failures: Array[String]) -> void:
	var probe := BoxShape3D.new()
	probe.size = Vector3(0.08, 2.40, 0.08)
	var query := PhysicsShapeQueryParameters3D.new()
	query.shape = probe
	query.collision_mask = 1
	var seam := Rect2(-6.20, 29.26 - PASSAGE_WIDTH * 0.5, 0.40, PASSAGE_WIDTH)
	for footprint: PackedVector2Array in _sector04_footprints():
		var minimum := footprint[0]
		var maximum := footprint[0]
		for point: Vector2 in footprint:
			minimum = minimum.min(point)
			maximum = maximum.max(point)
		var x := minimum.x + 0.25
		while x < maximum.x:
			var z := minimum.y + 0.25
			while z < maximum.y:
				var sample := Vector2(x, z)
				if Geometry2D.is_point_in_polygon(sample, footprint) and not seam.has_point(sample):
					query.transform = Transform3D(Basis.IDENTITY, Vector3(x, 1.25, z))
					for hit: Dictionary in space.intersect_shape(query, 16):
						var collider := hit.get("collider") as Node
						if collider != null and is_ancestor_of(collider):
							failures.push_back("Sector 04/07 collision overlap at (%.2f, %.2f)" % [x, z])
							return
				z += 0.50
			x += 0.50


func _validate_crossing(player: CharacterBody3D, start: Vector3, yaw: float, threshold_x: float, expect_less: bool, label: String, failures: Array[String]) -> void:
	player.global_position = start
	player.rotation = Vector3(0.0, yaw, 0.0)
	player.velocity = Vector3.ZERO
	for _settle_frame in 5:
		await get_tree().physics_frame
	Input.action_press("move_forward")
	for _move_frame in 30:
		await get_tree().physics_frame
	Input.action_release("move_forward")
	var crossed := player.global_position.x < threshold_x if expect_less else player.global_position.x > threshold_x
	if not crossed:
		failures.push_back("%s stopped at x=%.3f" % [label, player.global_position.x])
	if player.global_position.y < -0.5:
		failures.push_back("%s fell through seam" % label)
	print("SECTOR07_CROSSING: id=%s start=(%.3f,%.3f) end=(%.3f,%.3f) passed=%s" % [label, start.x, start.z, player.global_position.x, player.global_position.z, str(crossed and player.global_position.y >= -0.5)])


func _validate_corridor_traversal(player: CharacterBody3D, corridor: Dictionary, failures: Array[String]) -> void:
	var source_a: Vector2 = corridor["a"]
	var source_b: Vector2 = corridor["b"]
	var local_a := (source_a - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var local_b := (source_b - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var local_direction := local_a.direction_to(local_b)
	# Audit chords connect room/corridor centres and may bend at their endpoints.
	# Probe a 1.20 m segment across each chord's interior with the real capsule;
	# endpoint-to-endpoint motion would incorrectly cut those authored bends.
	var local_midpoint := local_a.lerp(local_b, float(corridor.get("probe_t", 0.50)))
	var local_start := local_midpoint - local_direction * 0.60
	var local_finish := local_midpoint + local_direction * 0.60
	var world_start := to_global(Vector3(local_start.x, _floor_height(local_start) + 0.10, local_start.y))
	var world_finish := to_global(Vector3(local_finish.x, _floor_height(local_finish) + 0.10, local_finish.y))
	player.global_position = world_start
	player.velocity = Vector3.ZERO
	player.look_at(Vector3(world_finish.x, player.global_position.y, world_finish.z), Vector3.UP)
	for _settle_frame in 5:
		await get_tree().physics_frame
	var planar_finish := Vector2(world_finish.x, world_finish.z)
	var passed := false
	Input.action_press("move_forward")
	var maximum_frames := ceili(world_start.distance_to(world_finish) / 3.5 * 60.0) + 60
	for _move_frame in maximum_frames:
		await get_tree().physics_frame
		if Vector2(player.global_position.x, player.global_position.z).distance_to(planar_finish) <= 0.70:
			passed = true
			break
	Input.action_release("move_forward")
	if not passed:
		failures.push_back("%s controller traversal stopped %.2f m from target" % [String(corridor["id"]), Vector2(player.global_position.x, player.global_position.z).distance_to(planar_finish)])
	if player.global_position.y < world_finish.y - 1.5:
		failures.push_back("%s controller fell through floor" % String(corridor["id"]))
	print("SECTOR07_CORRIDOR: id=%s distance=%.3f passed=%s" % [String(corridor["id"]), world_start.distance_to(world_finish), str(passed)])


func _print_build_audit() -> void:
	var stats: Dictionary = _build_result.get("stats", {})
	print("SECTOR07_BUILD: input=%d union=%d boundary=%d->%d floor_triangles=%d ceiling_triangles=%d fixtures=%d on=%d off=%d lights=%d" % [stats.get("input_polygons", 0), stats.get("union_polygons", 0), stats.get("boundary_edges_before", 0), stats.get("boundary_edges_after", 0), stats.get("floor_triangles", 0), stats.get("ceiling_triangles", 0), _fixture_points.size(), _lit_fixture_transforms.size(), _off_fixture_transforms.size(), _light_count])


func _print_performance_audit() -> void:
	var mesh_instances := find_children("*", "MeshInstance3D", true, false).size()
	var multimesh_instances := find_children("*", "MultiMeshInstance3D", true, false).size()
	var static_bodies := find_children("*", "StaticBody3D", true, false).size()
	var collision_shapes := find_children("*", "CollisionShape3D", true, false).size()
	var lights := find_children("*", "Light3D", true, false)
	var shadow_lights := 0
	for light: Light3D in lights:
		if light.shadow_enabled:
			shadow_lights += 1
	print("SECTOR07_PERFORMANCE: nodes=%d MeshInstance3D=%d ArrayMesh=%d StaticBody3D=%d CollisionShape3D=%d MultiMeshInstance3D=%d Light3D=%d shadow_lights=%d" % [find_children("*", "Node", true, false).size() + 1, mesh_instances, _count_array_meshes(), static_bodies, collision_shapes, multimesh_instances, lights.size(), shadow_lights])


func _count_array_meshes() -> int:
	var meshes: Dictionary = {}
	for mesh_instance: MeshInstance3D in find_children("*", "MeshInstance3D", true, false):
		if mesh_instance.mesh is ArrayMesh:
			meshes[mesh_instance.mesh.get_instance_id()] = true
	for multimesh_instance: MultiMeshInstance3D in find_children("*", "MultiMeshInstance3D", true, false):
		if multimesh_instance.multimesh != null and multimesh_instance.multimesh.mesh is ArrayMesh:
			meshes[multimesh_instance.multimesh.mesh.get_instance_id()] = true
	return meshes.size()


func _capture_sector() -> void:
	var player_ui := get_node_or_null("../../Player/PlayerUI") as CanvasLayer
	if player_ui != null:
		player_ui.visible = false
	var camera := Camera3D.new()
	camera.current = true
	add_child(camera)
	var overview_light := DirectionalLight3D.new()
	overview_light.light_energy = 3.5
	overview_light.shadow_enabled = false
	overview_light.rotation.x = -PI * 0.5
	overview_light.visible = false
	add_child(overview_light)
	var sector_04_node := get_node_or_null("../Sector04") as Node3D
	var shots := [
		{"file": "sector_07_topdown.png", "position": Vector3(30.0, 82.0, 34.0), "target": Vector3(30.0, 0.0, 34.0), "ortho_size": 84.0, "topdown": true},
		{"file": "sector_07_main_cluster.png", "position": _source_position(300, 350, 1.45), "target": _source_position(285, 445, 1.25), "fov": 66.0},
		{"file": "sector_07_narrow_corridor.png", "position": _source_position(312, 552, 1.38), "target": _source_position(330, 625, 1.18), "fov": 62.0},
		{"file": "sector_07_lighting.png", "position": _source_position(715, 445, 1.45), "target": _source_position(815, 475, 1.20), "fov": 62.0},
		{"file": "sector_07_hole_or_slope.png", "position": _source_position(HOLE_CENTER_PX.x, HOLE_CENTER_PX.y, 2.35), "target": _source_position(HOLE_CENTER_PX.x, HOLE_CENTER_PX.y, -0.20), "fov": 52.0},
		{"file": "sector_04_map_room_regression.png", "position": Vector3(-14.45, 1.45, 22.80), "target": Vector3(-17.4625, 1.45, 22.80), "fov": 62.0, "world": true},
		{"file": "sector_04_07_connection_from_04.png", "position": Vector3(-4.80, 1.45, 29.26), "target": Vector3(-7.40, 1.20, 29.26), "fov": 58.0, "world": true},
		{"file": "sector_04_07_connection_from_07.png", "position": Vector3(-7.40, 1.45, 29.26), "target": Vector3(-4.80, 1.20, 29.26), "fov": 58.0, "world": true},
		{"file": "sector_04_07_connection_closeup_left.png", "position": Vector3(-5.35, 1.45, 28.55), "target": Vector3(-6.0, 1.38, 28.185), "fov": 48.0, "world": true},
		{"file": "sector_04_07_connection_closeup_right.png", "position": Vector3(-5.35, 1.45, 29.97), "target": Vector3(-6.0, 1.38, 30.335), "fov": 48.0, "world": true},
	]
	var output_dir := ProjectSettings.globalize_path("res://captures")
	DirAccess.make_dir_recursive_absolute(output_dir)
	for shot: Dictionary in shots:
		var topdown := bool(shot.get("topdown", false))
		ceiling_visual.visible = not topdown
		fixture_visuals.visible = not topdown
		fixture_visuals_off.visible = not topdown
		vent_visuals.visible = not topdown
		overview_light.visible = topdown
		if sector_04_node != null:
			sector_04_node.visible = true
		camera.projection = Camera3D.PROJECTION_ORTHOGONAL if topdown else Camera3D.PROJECTION_PERSPECTIVE
		var world_space := bool(shot.get("world", false))
		if world_space:
			camera.global_position = shot["position"]
		else:
			camera.position = shot["position"]
		if topdown:
			camera.size = float(shot["ortho_size"])
		else:
			camera.fov = float(shot["fov"])
		var target_world: Vector3 = shot["target"] if world_space else to_global(shot["target"])
		var look_direction := camera.global_position.direction_to(target_world)
		var up := Vector3.FORWARD if absf(look_direction.dot(Vector3.UP)) > 0.99 else Vector3.UP
		camera.look_at(target_world, up)
		await get_tree().process_frame
		await RenderingServer.frame_post_draw
		var image := get_viewport().get_texture().get_image()
		var output_path: String = output_dir.path_join(String(shot["file"]))
		var save_error := image.save_png(output_path)
		if save_error != OK:
			push_error("Sector07 capture failed: %s" % error_string(save_error))
		else:
			print("SECTOR07_CAPTURE: %s" % output_path)
	ceiling_visual.visible = true
	fixture_visuals.visible = true
	fixture_visuals_off.visible = true
	vent_visuals.visible = true
	if sector_04_node != null:
		sector_04_node.visible = true
	overview_light.queue_free()
	camera.queue_free()
