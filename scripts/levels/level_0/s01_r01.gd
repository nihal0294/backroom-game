extends Node3D

## Direct room-by-room implementation of S01-R01. This script consumes only the
## documented R01 polygon; it does not invoke the deprecated sector generators.

const METERS_PER_PIXEL := 0.173846
const MAP_ORIGIN_PX := Vector2(24.0, 3223.0)
const CEILING_Y := 3.20
const WALL_THICKNESS := 0.15
const FIXTURE_Y := CEILING_Y - 0.012
const CEILING_MODULE_SIZE := 0.60
const FIXTURE_DISTRIBUTION_CELL := 6.0
const REAL_LIGHT_COUNT := 12

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_wall.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_ceiling.tres")
const FIXTURE_HOUSING_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_housing.tres")
const FIXTURE_PANEL_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel.tres")
const FIXTURE_PANEL_OFF_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel_off.tres")

# Clockwise master-map silhouette verified against the original PNG crop in
# captures/s01_r01_source_overlay.png. Edge 29 (the closing edge) is X01 to
# future R09. Edge 5 is the visible-blocked X02 interface to future R02.
const SOURCE_POLYGON_PX := [
	Vector2(313.0, 3223.0),
	Vector2(24.0, 3518.0),
	Vector2(165.0, 3659.0),
	Vector2(225.0, 3601.0),
	Vector2(251.0, 3626.0),
	Vector2(310.0, 3563.0),
	Vector2(288.0, 3583.0),
	Vector2(280.0, 3575.0),
	Vector2(283.0, 3571.0),
	Vector2(239.0, 3524.0),
	Vector2(227.0, 3534.0),
	Vector2(197.0, 3504.0),
	Vector2(276.0, 3425.0),
	Vector2(412.0, 3560.0),
	Vector2(494.0, 3478.0),
	Vector2(475.0, 3456.0),
	Vector2(481.0, 3450.0),
	Vector2(487.0, 3454.0),
	Vector2(531.0, 3410.0),
	Vector2(527.0, 3404.0),
	Vector2(555.0, 3374.0),
	Vector2(524.0, 3344.0),
	Vector2(503.0, 3364.0),
	Vector2(464.0, 3327.0),
	Vector2(429.0, 3362.0),
	Vector2(433.0, 3367.0),
	Vector2(415.0, 3385.0),
	Vector2(445.0, 3417.0),
	Vector2(416.0, 3442.0),
	Vector2(338.0, 3364.0),
]

# TEMPORARY DEVELOPMENT CAPS: both adjacent rooms are unimplemented. These
# edges are excluded from the permanent wall batch, then rebuilt as clearly
# named, removable wall caps using exactly the normal wall material.
const TEMPORARY_CONNECTION_EDGES := [29, 5]

@onready var floor_visual: MeshInstance3D = %FloorVisual
@onready var wall_visual: MeshInstance3D = %WallVisual
@onready var ceiling_visual: MeshInstance3D = %CeilingVisual
@onready var fixture_visuals: MultiMeshInstance3D = %FluorescentFixtures
@onready var fixture_visuals_off: MultiMeshInstance3D = %FluorescentFixturesOff
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var temporary_x01_visual: MeshInstance3D = %TemporaryX01WallCapVisual
@onready var temporary_x01_collision: CollisionShape3D = %TemporaryX01WallCapCollision
@onready var temporary_x02_visual: MeshInstance3D = %TemporaryX02WallCapVisual
@onready var temporary_x02_collision: CollisionShape3D = %TemporaryX02WallCapCollision
@onready var sparse_lights: Node3D = %SparseLights
@onready var x01_marker: Marker3D = %X01_R09
@onready var x02_marker: Marker3D = %X02_R02

var _polygon := PackedVector2Array()
var _triangles := PackedInt32Array()
var _fixture_positions: Array[Vector2] = []
var _lit_fixture_positions: Array[Vector2] = []
var _off_fixture_positions: Array[Vector2] = []
var _fixture_count := 0
var _fixture_off_count := 0
var _light_count := 0


func _ready() -> void:
	_polygon = _make_local_polygon()
	_triangles = Geometry2D.triangulate_polygon(_polygon)
	if _triangles.is_empty():
		push_error("S01-R01 source polygon could not be triangulated")
		return
	_build_floor()
	_build_ceiling()
	_build_walls()
	_build_temporary_connection_caps()
	_build_fixtures()
	_build_sparse_lights()
	_place_interface_markers()
	print(
		"S01-R01: polygon_points=%d triangles=%d fixtures=%d on=%d off=%d lights=%d wall_thickness=%.2f ceiling=%.2f"
		% [_polygon.size(), int(_triangles.size() / 3.0), _fixture_count, _lit_fixture_positions.size(), _fixture_off_count, _light_count, WALL_THICKNESS, CEILING_Y]
	)
	call_deferred("_run_optional_tasks")


func _make_local_polygon() -> PackedVector2Array:
	var result := PackedVector2Array()
	for source_point: Vector2 in SOURCE_POLYGON_PX:
		result.push_back((source_point - MAP_ORIGIN_PX) * METERS_PER_PIXEL)
	return result


func _build_floor() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	for triangle_index in range(0, _triangles.size(), 3):
		var a := _floor_vertex(_polygon[_triangles[triangle_index]])
		var b := _floor_vertex(_polygon[_triangles[triangle_index + 1]])
		var c := _floor_vertex(_polygon[_triangles[triangle_index + 2]])
		_add_triangle(surface, a, b, c, Vector3.UP)
		faces.append_array(PackedVector3Array([a, b, c]))
	var mesh := surface.commit()
	mesh.surface_set_material(0, FLOOR_MATERIAL)
	floor_visual.mesh = mesh
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	shape.backface_collision = true
	floor_collision.shape = shape


func _build_ceiling() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	for triangle_index in range(0, _triangles.size(), 3):
		var a := _ceiling_vertex(_polygon[_triangles[triangle_index]])
		var b := _ceiling_vertex(_polygon[_triangles[triangle_index + 1]])
		var c := _ceiling_vertex(_polygon[_triangles[triangle_index + 2]])
		_add_triangle(surface, c, b, a, Vector3.DOWN)
	var mesh := surface.commit()
	mesh.surface_set_material(0, CEILING_MATERIAL)
	ceiling_visual.mesh = mesh


func _build_walls() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	var outer_vertices := _make_outer_vertices()
	for edge_index in _polygon.size():
		if edge_index in TEMPORARY_CONNECTION_EDGES:
			continue
		var next_index := (edge_index + 1) % _polygon.size()
		var a := _polygon[edge_index]
		var b := _polygon[next_index]
		var outer_a := outer_vertices[edge_index]
		var outer_b := outer_vertices[next_index]
		var direction := (b - a).normalized()
		var outward := Vector2(-direction.y, direction.x)
		var inward_normal := Vector3(-outward.x, 0.0, -outward.y)
		var outward_normal := Vector3(outward.x, 0.0, outward.y)
		var segment_length := a.distance_to(b)
		var a0 := Vector3(a.x, 0.0, a.y)
		var b0 := Vector3(b.x, 0.0, b.y)
		var b1 := Vector3(b.x, CEILING_Y, b.y)
		var a1 := Vector3(a.x, CEILING_Y, a.y)
		var oa0 := Vector3(outer_a.x, 0.0, outer_a.y)
		var ob0 := Vector3(outer_b.x, 0.0, outer_b.y)
		var ob1 := Vector3(outer_b.x, CEILING_Y, outer_b.y)
		var oa1 := Vector3(outer_a.x, CEILING_Y, outer_a.y)

		_add_quad(surface, a0, b0, b1, a1, inward_normal, segment_length, CEILING_Y)
		_add_quad(surface, ob0, oa0, oa1, ob1, outward_normal, segment_length, CEILING_Y)
		_append_quad_faces(faces, a0, b0, b1, a1)
		_append_quad_faces(faces, ob0, oa0, oa1, ob1)

	for gap_edge_index: int in TEMPORARY_CONNECTION_EDGES:
		var next_index := (gap_edge_index + 1) % _polygon.size()
		_add_wall_cap(surface, faces, _polygon[gap_edge_index], outer_vertices[gap_edge_index])
		_add_wall_cap(surface, faces, _polygon[next_index], outer_vertices[next_index])

	var mesh := surface.commit()
	mesh.surface_set_material(0, WALL_MATERIAL)
	wall_visual.mesh = mesh
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	shape.backface_collision = true
	wall_collision.shape = shape


func _make_outer_vertices() -> PackedVector2Array:
	var result := PackedVector2Array()
	for vertex_index in _polygon.size():
		var previous := _polygon[(vertex_index - 1 + _polygon.size()) % _polygon.size()]
		var current := _polygon[vertex_index]
		var next := _polygon[(vertex_index + 1) % _polygon.size()]
		var previous_direction := (current - previous).normalized()
		var next_direction := (next - current).normalized()
		var previous_outward := Vector2(-previous_direction.y, previous_direction.x)
		var next_outward := Vector2(-next_direction.y, next_direction.x)
		var miter := previous_outward + next_outward
		if miter.length_squared() < 0.0001:
			miter = next_outward
		else:
			miter = miter.normalized()
		var denominator := maxf(absf(miter.dot(next_outward)), 0.25)
		var miter_length := minf(WALL_THICKNESS / denominator, WALL_THICKNESS * 3.0)
		result.push_back(current + miter * miter_length)
	return result


func _add_wall_cap(surface: SurfaceTool, faces: PackedVector3Array, inner: Vector2, outer: Vector2) -> void:
	var inner_bottom := Vector3(inner.x, 0.0, inner.y)
	var outer_bottom := Vector3(outer.x, 0.0, outer.y)
	var outer_top := Vector3(outer.x, CEILING_Y, outer.y)
	var inner_top := Vector3(inner.x, CEILING_Y, inner.y)
	var normal_2d := (outer - inner).normalized()
	var normal := Vector3(-normal_2d.y, 0.0, normal_2d.x)
	_add_quad(surface, inner_bottom, outer_bottom, outer_top, inner_top, normal, WALL_THICKNESS, CEILING_Y)
	_append_quad_faces(faces, inner_bottom, outer_bottom, outer_top, inner_top)


func _build_temporary_connection_caps() -> void:
	_build_temporary_wall_cap(29, temporary_x01_visual, temporary_x01_collision)
	_build_temporary_wall_cap(5, temporary_x02_visual, temporary_x02_collision)


func _build_temporary_wall_cap(
	edge_index: int,
	visual: MeshInstance3D,
	collision: CollisionShape3D
) -> void:
	var a := _polygon[edge_index]
	var b := _polygon[(edge_index + 1) % _polygon.size()]
	var a0 := Vector3(a.x, 0.0, a.y)
	var b0 := Vector3(b.x, 0.0, b.y)
	var b1 := Vector3(b.x, CEILING_Y, b.y)
	var a1 := Vector3(a.x, CEILING_Y, a.y)
	var direction := (b - a).normalized()
	var normal := Vector3(-direction.y, 0.0, direction.x)
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(surface, a0, b0, b1, a1, normal, a.distance_to(b), CEILING_Y)
	var mesh := surface.commit()
	mesh.surface_set_material(0, WALL_MATERIAL)
	visual.mesh = mesh
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(PackedVector3Array([a0, b0, b1, a0, b1, a1]))
	shape.backface_collision = true
	collision.shape = shape


func _build_fixtures() -> void:
	_fixture_positions = _fixture_scattered_positions()
	for position_2d: Vector2 in _fixture_positions:
		var module_x := roundi(position_2d.x / CEILING_MODULE_SIZE)
		var module_z := roundi((position_2d.y - CEILING_MODULE_SIZE * 0.5) / CEILING_MODULE_SIZE)
		if posmod(_fixture_hash(module_x, module_z, 31), 7) == 0:
			_off_fixture_positions.push_back(position_2d)
		else:
			_lit_fixture_positions.push_back(position_2d)

	var fixture_mesh_on := _make_fixture_mesh(FIXTURE_PANEL_MATERIAL)
	var fixture_mesh_off := _make_fixture_mesh(FIXTURE_PANEL_OFF_MATERIAL)
	fixture_visuals.multimesh = _make_fixture_multimesh(fixture_mesh_on, _lit_fixture_positions)
	fixture_visuals_off.multimesh = _make_fixture_multimesh(fixture_mesh_off, _off_fixture_positions)
	_fixture_count = _fixture_positions.size()
	_fixture_off_count = _off_fixture_positions.size()


func _make_fixture_mesh(panel_material: Material) -> ArrayMesh:
	var fixture_mesh := ArrayMesh.new()
	var housing := SurfaceTool.new()
	housing.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(housing, Vector3(-0.60, 0.0, -0.30), Vector3(0.60, 0.0, -0.30), Vector3(0.60, 0.0, 0.30), Vector3(-0.60, 0.0, 0.30), Vector3.DOWN, 1.2, 0.6)
	housing.commit(fixture_mesh)
	var panel := SurfaceTool.new()
	panel.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(panel, Vector3(-0.54, -0.006, -0.24), Vector3(0.54, -0.006, -0.24), Vector3(0.54, -0.006, 0.24), Vector3(-0.54, -0.006, 0.24), Vector3.DOWN, 1.08, 0.48)
	panel.commit(fixture_mesh)
	fixture_mesh.surface_set_material(0, FIXTURE_HOUSING_MATERIAL)
	fixture_mesh.surface_set_material(1, panel_material)
	return fixture_mesh


func _make_fixture_multimesh(mesh: Mesh, positions: Array[Vector2]) -> MultiMesh:
	var multimesh := MultiMesh.new()
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.mesh = mesh
	multimesh.instance_count = positions.size()
	for index in positions.size():
		var position_2d := positions[index]
		multimesh.set_instance_transform(index, Transform3D(Basis.IDENTITY, Vector3(position_2d.x, FIXTURE_Y, position_2d.y)))
	return multimesh


func _build_sparse_lights() -> void:
	for light_index in REAL_LIGHT_COUNT:
		var fixture_index := floori((float(light_index) + 0.5) * float(_lit_fixture_positions.size()) / float(REAL_LIGHT_COUNT))
		var position_2d := _lit_fixture_positions[fixture_index]
		var light := OmniLight3D.new()
		light.name = "FluorescentLight_%02d" % _light_count
		light.position = Vector3(position_2d.x, CEILING_Y - 0.24, position_2d.y)
		light.light_color = Color(0.98, 0.96, 0.84, 1.0)
		light.light_energy = 1.40 if (_light_count % 3) != 0 else 1.22
		light.light_specular = 0.03
		light.omni_range = 11.5
		light.omni_attenuation = 1.30
		light.shadow_enabled = false
		sparse_lights.add_child(light)
		_light_count += 1


func _fixture_scattered_positions() -> Array[Vector2]:
	var result: Array[Vector2] = []
	var bounds := _polygon_bounds()
	var minimum_cell_x := floori(bounds.position.x / FIXTURE_DISTRIBUTION_CELL)
	var maximum_cell_x := ceili(bounds.end.x / FIXTURE_DISTRIBUTION_CELL)
	var minimum_cell_z := floori(bounds.position.y / FIXTURE_DISTRIBUTION_CELL)
	var maximum_cell_z := ceili(bounds.end.y / FIXTURE_DISTRIBUTION_CELL)
	for cell_z in range(minimum_cell_z, maximum_cell_z + 1):
		for cell_x in range(minimum_cell_x, maximum_cell_x + 1):
			var layout_hash := _fixture_hash(cell_x, cell_z, 7)
			if posmod(layout_hash, 13) == 0:
				continue
			var jitter_x := float(posmod(layout_hash >> 4, 5) - 2) * CEILING_MODULE_SIZE
			var jitter_z := float(posmod(layout_hash >> 9, 5) - 2) * CEILING_MODULE_SIZE
			var raw_position := Vector2(
				(float(cell_x) + 0.5) * FIXTURE_DISTRIBUTION_CELL + jitter_x,
				(float(cell_z) + 0.5) * FIXTURE_DISTRIBUTION_CELL + jitter_z
			)
			# A 1.2 x 0.6 m fixture occupies exactly two acoustic modules.
			# X is on a divider; Z is centred inside a module.
			var position_2d := Vector2(
				roundf(raw_position.x / CEILING_MODULE_SIZE) * CEILING_MODULE_SIZE,
				roundf((raw_position.y - CEILING_MODULE_SIZE * 0.5) / CEILING_MODULE_SIZE) * CEILING_MODULE_SIZE + CEILING_MODULE_SIZE * 0.5
			)
			if Geometry2D.is_point_in_polygon(position_2d, _polygon) and _distance_to_boundary(position_2d) >= 0.75:
				result.push_back(position_2d)
	return result


func _fixture_hash(cell_x: int, cell_z: int, salt: int) -> int:
	return absi((cell_x * 73856093) ^ (cell_z * 19349663) ^ (salt * 83492791))


func _polygon_bounds() -> Rect2:
	var minimum := _polygon[0]
	var maximum := _polygon[0]
	for point: Vector2 in _polygon:
		minimum = minimum.min(point)
		maximum = maximum.max(point)
	return Rect2(minimum, maximum - minimum)


func _distance_to_boundary(point: Vector2) -> float:
	var nearest := INF
	for edge_index in _polygon.size():
		var a := _polygon[edge_index]
		var b := _polygon[(edge_index + 1) % _polygon.size()]
		var segment := b - a
		var amount := clampf((point - a).dot(segment) / maxf(segment.length_squared(), 0.0001), 0.0, 1.0)
		nearest = minf(nearest, point.distance_to(a + segment * amount))
	return nearest


func _place_interface_markers() -> void:
	x01_marker.position = Vector3((_polygon[29].x + _polygon[0].x) * 0.5, 0.0, (_polygon[29].y + _polygon[0].y) * 0.5)
	x02_marker.position = Vector3((_polygon[5].x + _polygon[6].x) * 0.5, 0.0, (_polygon[5].y + _polygon[6].y) * 0.5)


func _source_to_local(source_point: Vector2) -> Vector2:
	return (source_point - MAP_ORIGIN_PX) * METERS_PER_PIXEL


func _floor_vertex(point: Vector2) -> Vector3:
	return Vector3(point.x, 0.0, point.y)


func _ceiling_vertex(point: Vector2) -> Vector3:
	return Vector3(point.x, CEILING_Y, point.y)


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


func _run_optional_tasks() -> void:
	await get_tree().process_frame
	for _frame_index in 5:
		await get_tree().physics_frame
	var validation_requested := OS.get_environment("LEVEL0_S01_R01_VALIDATE") == "1"
	var capture_requested := OS.get_environment("LEVEL0_S01_R01_CAPTURE") == "1"
	if validation_requested:
		var room_is_valid := await _validate_room()
		if not room_is_valid:
			get_tree().quit(1)
			return
	if capture_requested:
		await _capture_room()
		get_tree().quit()
	elif validation_requested:
		get_tree().quit()


func _validate_room() -> bool:
	var failures: Array[String] = []
	if floor_visual.mesh == null or wall_visual.mesh == null or ceiling_visual.mesh == null:
		failures.push_back("missing visual mesh")
	if (
		floor_collision.shape == null
		or wall_collision.shape == null
		or temporary_x01_collision.shape == null
		or temporary_x02_collision.shape == null
	):
		failures.push_back("missing collision shape")
	if _fixture_count < 1 or _light_count < 1:
		failures.push_back("missing fluorescent coverage")
	if _off_fixture_positions.is_empty() or _lit_fixture_positions.size() <= _off_fixture_positions.size():
		failures.push_back("fixture on/off distribution is invalid")
	if fixture_visuals.multimesh == null or fixture_visuals_off.multimesh == null:
		failures.push_back("fixture MultiMesh is missing")
	var space := get_world_3d().direct_space_state
	var floor_point := to_global(Vector3(_source_to_local(Vector2(120.0, 3500.0)).x, 0.0, _source_to_local(Vector2(120.0, 3500.0)).y))
	var floor_query := PhysicsRayQueryParameters3D.create(floor_point + Vector3.UP * 2.0, floor_point + Vector3.DOWN * 1.0, 1)
	var floor_hit := space.intersect_ray(floor_query)
	if floor_hit.is_empty():
		failures.push_back("floor ray missed at spawn")
	var x02_midpoint := (x02_marker.global_position + Vector3.UP)
	var x02_direction := Vector3(_polygon[6].y - _polygon[5].y, 0.0, -(_polygon[6].x - _polygon[5].x)).normalized()
	var x02_query := PhysicsRayQueryParameters3D.create(x02_midpoint - x02_direction * 1.0, x02_midpoint + x02_direction * 1.0, 1)
	var x02_hit := space.intersect_ray(x02_query)
	if x02_hit.is_empty():
		failures.push_back("temporary X02 development cap ray missed")
	var x01_midpoint := x01_marker.global_position + Vector3.UP
	var x01_direction := Vector3(_polygon[0].y - _polygon[29].y, 0.0, -(_polygon[0].x - _polygon[29].x)).normalized()
	var x01_query := PhysicsRayQueryParameters3D.create(x01_midpoint - x01_direction * 1.0, x01_midpoint + x01_direction * 1.0, 1)
	if space.intersect_ray(x01_query).is_empty():
		failures.push_back("temporary X01 development cap ray missed")
	var player := get_node_or_null("../../Player") as CharacterBody3D
	var movement_distance := 0.0
	if player == null:
		failures.push_back("player missing from active Level 0 root")
	else:
		if not player.is_on_floor():
			failures.push_back("player did not settle on R01 floor")
		var movement_start := player.global_position
		Input.action_press("move_forward")
		for _frame_index in 30:
			await get_tree().physics_frame
		Input.action_release("move_forward")
		movement_distance = Vector2(player.global_position.x - movement_start.x, player.global_position.z - movement_start.z).length()
		if movement_distance < 0.75:
			failures.push_back("player movement test advanced only %.3f m" % movement_distance)
		if player.global_position.y < -0.5:
			failures.push_back("player fell through R01 floor")
		player.global_position = movement_start
		player.velocity = Vector3.ZERO
	if failures.is_empty():
		print("S01_R01_VALIDATION: PASS floor, walls, movement=%.3fm, X01 capped, X02 capped, fixtures=%d on=%d off=%d lights=%d nodes=%d" % [movement_distance, _fixture_count, _lit_fixture_positions.size(), _fixture_off_count, _light_count, _count_nodes(self)])
		return true
	for failure in failures:
		push_error("S01_R01_VALIDATION: %s" % failure)
	return false


func _capture_room() -> void:
	var player_ui := get_node_or_null("../../Player/PlayerUI") as CanvasLayer
	if player_ui != null:
		player_ui.visible = false
	var camera := Camera3D.new()
	camera.name = "S01R01CaptureCamera"
	camera.current = true
	camera.fov = 72.0
	add_child(camera)
	var ceiling_fixture_local := _nearest_lit_fixture_position(_source_to_local(Vector2(120.0, 3500.0)))
	var ceiling_fixture_source := ceiling_fixture_local / METERS_PER_PIXEL + MAP_ORIGIN_PX
	var ceiling_camera_source := ceiling_fixture_source + Vector2(12.0, 18.0)
	var off_fixture_local := _nearest_off_fixture_position(_source_to_local(Vector2(120.0, 3500.0)))
	var off_fixture_source := off_fixture_local / METERS_PER_PIXEL + MAP_ORIGIN_PX
	var off_fixture_camera_source := off_fixture_source + Vector2(11.0, 16.0)
	var shots := [
		{"file": "s01_r01_spawn_vr_palette_v7.png", "source": Vector2(120.0, 3500.0), "target": Vector2(270.0, 3395.0), "height": 1.68, "target_height": 1.45, "fov": 72.0},
		{"file": "s01_r01_wide_vr_palette_v7.png", "source": Vector2(400.0, 3480.0), "target": Vector2(150.0, 3500.0), "height": 1.62, "target_height": 1.48, "fov": 78.0},
		{"file": "s01_r01_wall_vr_palette_v7.png", "source": Vector2(60.0, 3505.0), "target": Vector2(38.0, 3504.0), "height": 1.55, "target_height": 1.55, "fov": 58.0},
		{"file": "s01_r01_carpet_vr_palette_v7.png", "source": Vector2(150.0, 3480.0), "target": Vector2(165.0, 3492.0), "height": 1.12, "target_height": 0.02, "fov": 58.0},
		{"file": "s01_r01_ceiling_vr_palette_v7.png", "source": ceiling_camera_source, "target": ceiling_fixture_source, "height": 1.34, "target_height": 3.18, "fov": 58.0},
		{"file": "s01_r01_fixture_off_vr_palette_v7.png", "source": off_fixture_camera_source, "target": off_fixture_source, "height": 1.34, "target_height": 3.18, "fov": 52.0},
	]
	var output_dir := ProjectSettings.globalize_path("res://captures")
	var directory_error := DirAccess.make_dir_recursive_absolute(output_dir)
	if directory_error != OK:
		push_error("S01-R01 capture directory failed: %s" % error_string(directory_error))
		return
	for shot: Dictionary in shots:
		var source_local := _source_to_local(shot.source)
		var target_local := _source_to_local(shot.target)
		camera.position = Vector3(source_local.x, float(shot.height), source_local.y)
		camera.fov = float(shot.fov)
		camera.look_at(to_global(Vector3(target_local.x, float(shot.target_height), target_local.y)), Vector3.UP)
		await get_tree().process_frame
		await RenderingServer.frame_post_draw
		var image := get_viewport().get_texture().get_image()
		var output_path: String = output_dir.path_join(String(shot.file))
		var save_error := image.save_png(output_path)
		if save_error != OK:
			push_error("S01-R01 capture failed: %s (%s)" % [output_path, error_string(save_error)])
		else:
			print("S01_R01_CAPTURE: %s" % output_path)
	camera.queue_free()


func _nearest_lit_fixture_position(target: Vector2) -> Vector2:
	var nearest := _lit_fixture_positions[0]
	var nearest_distance := nearest.distance_squared_to(target)
	for position_2d: Vector2 in _lit_fixture_positions:
		var distance := position_2d.distance_squared_to(target)
		if distance < nearest_distance:
			nearest = position_2d
			nearest_distance = distance
	return nearest


func _nearest_off_fixture_position(target: Vector2) -> Vector2:
	var nearest := _off_fixture_positions[0]
	var nearest_distance := nearest.distance_squared_to(target)
	for position_2d: Vector2 in _off_fixture_positions:
		var distance := position_2d.distance_squared_to(target)
		if distance < nearest_distance:
			nearest = position_2d
			nearest_distance = distance
	return nearest


func _count_nodes(node: Node) -> int:
	var total := 1
	for child in node.get_children():
		total += _count_nodes(child)
	return total
