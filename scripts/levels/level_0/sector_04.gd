extends Node3D

## Sector 04 uses the traced sector silhouette for topology and the imported
## Backrooms VR package for architectural dimensions and visual language.
## All repeated geometry stays batched; wall mass grows outside the walkable
## polygon so the source footprint is not narrowed by the 0.30 m wall standard.

const TRACE_PATH := "res://assets/level_0/maps/sector_04_trace.json"
const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.035
const SOCKET_CENTER_Y := 0.317
const CEILING_MODULE := 0.60
const FIXTURE_Y := CEILING_Y - 0.012
const FIXTURE_CELL := 3.60
const MAX_REAL_LIGHTS := 8

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/wallpaper.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/ceiling.tres")
const TRIM_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/trim.tres")
const DOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_panel.tres")
const SOCKET_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/socket_dark.tres")
const FIXTURE_HOUSING_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_housing.tres")
const FIXTURE_PANEL_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel.tres")
const FIXTURE_PANEL_OFF_MATERIAL: Material = preload("res://resources/materials/level_0/rooms/s01_r01_fixture_panel_off.tres")

@onready var floor_visual: MeshInstance3D = %FloorVisual
@onready var wall_visual: MeshInstance3D = %WallVisual
@onready var ceiling_visual: MeshInstance3D = %CeilingVisual
@onready var baseboard_visual: MeshInstance3D = %BaseboardVisual
@onready var fixture_visuals: MultiMeshInstance3D = %FluorescentFixtures
@onready var fixture_visuals_off: MultiMeshInstance3D = %FluorescentFixturesOff
@onready var socket_visuals: MultiMeshInstance3D = %SocketVisuals
@onready var door_frames: MultiMeshInstance3D = %DoorFrames
@onready var door_panels: MultiMeshInstance3D = %DoorPanels
@onready var sparse_lights: Node3D = %SparseLights
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var player_spawn: Marker3D = %Sector04PlayerSpawn
@onready var unexplored_exit: Marker3D = %UnexploredExit

var _polygon := PackedVector2Array()
var _triangles := PackedInt32Array()
var _source_rotation := 0.0
var _fixture_positions: Array[Vector2] = []
var _lit_fixture_positions: Array[Vector2] = []
var _off_fixture_positions: Array[Vector2] = []
var _door_transforms: Array[Transform3D] = []
var _socket_transforms: Array[Transform3D] = []
var _light_count := 0


func _ready() -> void:
	_polygon = _load_and_align_polygon()
	if _polygon.size() < 3:
		push_error("Sector04: trace polygon is missing or invalid")
		return
	_triangles = Geometry2D.triangulate_polygon(_polygon)
	if _triangles.is_empty():
		push_error("Sector04: traced polygon could not be triangulated")
		return
	_build_floor_and_collision()
	_build_ceiling()
	_build_walls_and_collision()
	_build_baseboards()
	_build_wall_details()
	_build_fixtures()
	_build_sparse_lights()
	_place_markers()
	_print_performance_audit()
	print(
		"SECTOR04_BUILD: points=%d triangles=%d size=%.2fx%.2fm rotation=%.2fdeg walls=%.2fm ceiling=%.3fm fixtures=%d on=%d off=%d lights=%d sockets=%d doors=%d"
		% [
			_polygon.size(), int(_triangles.size() / 3.0), _polygon_bounds().size.x,
			_polygon_bounds().size.y, rad_to_deg(_source_rotation), WALL_THICKNESS,
			CEILING_Y, _fixture_positions.size(), _lit_fixture_positions.size(),
			_off_fixture_positions.size(), _light_count, _socket_transforms.size(),
			_door_transforms.size()
		]
	)
	call_deferred("_run_optional_tasks")


func _load_and_align_polygon() -> PackedVector2Array:
	var json_text := FileAccess.get_file_as_string(TRACE_PATH)
	var parsed: Variant = JSON.parse_string(json_text)
	if not parsed is Dictionary:
		return PackedVector2Array()
	var trace := parsed as Dictionary
	var raw_points: Variant = trace.get("polygon_m", [])
	if not raw_points is Array:
		return PackedVector2Array()
	var source := PackedVector2Array()
	for entry: Variant in raw_points:
		if entry is Array and entry.size() >= 2:
			source.push_back(Vector2(float(entry[0]), float(entry[1])))
	if source.size() < 3:
		return source

	# The longest traced architectural edge supplies the rigid alignment angle.
	# This changes presentation only; distances and topology remain untouched.
	var longest_direction := Vector2.RIGHT
	var longest_length := 0.0
	for edge_index in source.size():
		var edge := source[(edge_index + 1) % source.size()] - source[edge_index]
		if edge.length_squared() > longest_length * longest_length:
			longest_length = edge.length()
			longest_direction = edge.normalized()
	_source_rotation = -longest_direction.angle()
	var aligned := PackedVector2Array()
	for point: Vector2 in source:
		aligned.push_back(point.rotated(_source_rotation))
	var bounds := _bounds_for(aligned)
	for point_index in aligned.size():
		aligned[point_index] -= bounds.position
	if _signed_area(aligned) < 0.0:
		aligned.reverse()
	return aligned


func _build_floor_and_collision() -> void:
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


func _build_walls_and_collision() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	var outer := _make_outer_vertices()
	for edge_index in _polygon.size():
		var next_index := (edge_index + 1) % _polygon.size()
		var a := _polygon[edge_index]
		var b := _polygon[next_index]
		var outer_a := outer[edge_index]
		var outer_b := outer[next_index]
		var direction := (b - a).normalized()
		var inward := Vector2(-direction.y, direction.x)
		var inner_normal := Vector3(inward.x, 0.0, inward.y)
		var outer_normal := -inner_normal
		var a0 := Vector3(a.x, 0.0, a.y)
		var b0 := Vector3(b.x, 0.0, b.y)
		var b1 := Vector3(b.x, CEILING_Y, b.y)
		var a1 := Vector3(a.x, CEILING_Y, a.y)
		var oa0 := Vector3(outer_a.x, 0.0, outer_a.y)
		var ob0 := Vector3(outer_b.x, 0.0, outer_b.y)
		var ob1 := Vector3(outer_b.x, CEILING_Y, outer_b.y)
		var oa1 := Vector3(outer_a.x, CEILING_Y, outer_a.y)
		var length := a.distance_to(b)
		_add_quad(surface, a0, b0, b1, a1, inner_normal, length, CEILING_Y)
		_add_quad(surface, ob0, oa0, oa1, ob1, outer_normal, length, CEILING_Y)
		_append_quad_faces(faces, a0, b0, b1, a1)
		_append_quad_faces(faces, ob0, oa0, oa1, ob1)
		_add_wall_cap(surface, faces, a0, oa0, oa1, a1)
	var mesh := surface.commit()
	mesh.surface_set_material(0, WALL_MATERIAL)
	wall_visual.mesh = mesh
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	shape.backface_collision = true
	wall_collision.shape = shape


func _build_baseboards() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	for edge_index in _polygon.size():
		var a := _polygon[edge_index]
		var b := _polygon[(edge_index + 1) % _polygon.size()]
		var direction := (b - a).normalized()
		var inward := Vector2(-direction.y, direction.x)
		var offset := inward * BASEBOARD_DEPTH
		var a0 := Vector3(a.x + offset.x, 0.0, a.y + offset.y)
		var b0 := Vector3(b.x + offset.x, 0.0, b.y + offset.y)
		var b1 := Vector3(b0.x, BASEBOARD_HEIGHT, b0.z)
		var a1 := Vector3(a0.x, BASEBOARD_HEIGHT, a0.z)
		_add_quad(surface, a0, b0, b1, a1, Vector3(inward.x, 0.0, inward.y), a.distance_to(b), BASEBOARD_HEIGHT)
	var mesh := surface.commit()
	mesh.surface_set_material(0, TRIM_MATERIAL)
	baseboard_visual.mesh = mesh


func _build_wall_details() -> void:
	_socket_transforms.clear()
	_door_transforms.clear()
	var door_candidates: Array[int] = []
	for edge_index in _polygon.size():
		var a := _polygon[edge_index]
		var b := _polygon[(edge_index + 1) % _polygon.size()]
		var length := a.distance_to(b)
		if length >= 2.6:
			var direction := (b - a).normalized()
			var inward := Vector2(-direction.y, direction.x)
			var socket_count := maxi(1, floori(length / 7.0))
			for socket_index in socket_count:
				var amount := float(socket_index + 1) / float(socket_count + 1)
				var point := a.lerp(b, amount) + inward * (BASEBOARD_DEPTH + 0.006)
				_socket_transforms.push_back(_wall_transform(point, direction, SOCKET_CENTER_Y))
			if length >= 4.0:
				door_candidates.push_back(edge_index)

	# Two deterministic, widely separated door-like landmarks reproduce the
	# jamb/exit vocabulary of the VR reference without inventing new openings.
	if not door_candidates.is_empty():
		_add_door_on_edge(door_candidates[0])
	if door_candidates.size() > 1:
		_add_door_on_edge(door_candidates[door_candidates.size() / 2])

	socket_visuals.multimesh = _make_detail_multimesh(_make_socket_mesh(), _socket_transforms)
	door_frames.multimesh = _make_detail_multimesh(_make_door_frame_mesh(), _door_transforms)
	door_panels.multimesh = _make_detail_multimesh(_make_door_panel_mesh(), _door_transforms)


func _add_door_on_edge(edge_index: int) -> void:
	var a := _polygon[edge_index]
	var b := _polygon[(edge_index + 1) % _polygon.size()]
	var direction := (b - a).normalized()
	var inward := Vector2(-direction.y, direction.x)
	var midpoint := a.lerp(b, 0.5) + inward * 0.018
	_door_transforms.push_back(_wall_transform(midpoint, direction, 0.0))


func _make_socket_mesh() -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, Vector3(0.078, 0.126, 0.008), Vector3(0.0, 0.0, 0.0))
	_add_box(surface, Vector3(0.032, 0.012, 0.005), Vector3(0.0, 0.021, 0.006))
	_add_box(surface, Vector3(0.032, 0.012, 0.005), Vector3(0.0, -0.021, 0.006))
	var mesh := surface.commit()
	mesh.surface_set_material(0, SOCKET_MATERIAL)
	return mesh


func _make_door_frame_mesh() -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, Vector3(0.09, 2.20, 0.08), Vector3(-0.555, 1.10, 0.0))
	_add_box(surface, Vector3(0.09, 2.20, 0.08), Vector3(0.555, 1.10, 0.0))
	_add_box(surface, Vector3(1.20, 0.09, 0.08), Vector3(0.0, 2.155, 0.0))
	var mesh := surface.commit()
	mesh.surface_set_material(0, TRIM_MATERIAL)
	return mesh


func _make_door_panel_mesh() -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, Vector3(1.02, 2.08, 0.025), Vector3(0.0, 1.04, -0.018))
	var mesh := surface.commit()
	mesh.surface_set_material(0, DOOR_MATERIAL)
	return mesh


func _make_detail_multimesh(mesh: Mesh, transforms: Array[Transform3D]) -> MultiMesh:
	var multimesh := MultiMesh.new()
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.mesh = mesh
	multimesh.instance_count = transforms.size()
	for transform_index in transforms.size():
		multimesh.set_instance_transform(transform_index, transforms[transform_index])
	return multimesh


func _wall_transform(point: Vector2, direction: Vector2, height: float) -> Transform3D:
	var x_axis := Vector3(direction.x, 0.0, direction.y)
	var z_axis := Vector3(-direction.y, 0.0, direction.x)
	return Transform3D(Basis(x_axis, Vector3.UP, z_axis), Vector3(point.x, height, point.y))


func _build_fixtures() -> void:
	_fixture_positions = _fixture_scattered_positions()
	for position_2d: Vector2 in _fixture_positions:
		var module_x := roundi(position_2d.x / CEILING_MODULE)
		var module_z := roundi(position_2d.y / CEILING_MODULE)
		if posmod(_layout_hash(module_x, module_z, 43), 7) == 0:
			_off_fixture_positions.push_back(position_2d)
		else:
			_lit_fixture_positions.push_back(position_2d)
	if _off_fixture_positions.is_empty() and _lit_fixture_positions.size() > 1:
		_off_fixture_positions.push_back(_lit_fixture_positions.pop_back())
	fixture_visuals.multimesh = _make_fixture_multimesh(_make_fixture_mesh(FIXTURE_PANEL_MATERIAL), _lit_fixture_positions)
	fixture_visuals_off.multimesh = _make_fixture_multimesh(_make_fixture_mesh(FIXTURE_PANEL_OFF_MATERIAL), _off_fixture_positions)


func _fixture_scattered_positions() -> Array[Vector2]:
	var result: Array[Vector2] = []
	var bounds := _polygon_bounds()
	var maximum_x := ceili(bounds.end.x / FIXTURE_CELL)
	var maximum_z := ceili(bounds.end.y / FIXTURE_CELL)
	for cell_z in maximum_z:
		for cell_x in maximum_x:
			var layout_hash := _layout_hash(cell_x, cell_z, 17)
			if posmod(layout_hash, 11) == 0:
				continue
			var raw := Vector2(
				(float(cell_x) + 0.5) * FIXTURE_CELL + float(posmod(layout_hash >> 4, 5) - 2) * CEILING_MODULE,
				(float(cell_z) + 0.5) * FIXTURE_CELL + float(posmod(layout_hash >> 9, 5) - 2) * CEILING_MODULE
			)
			var snapped := Vector2(
				roundf(raw.x / CEILING_MODULE) * CEILING_MODULE,
				roundf((raw.y - CEILING_MODULE * 0.5) / CEILING_MODULE) * CEILING_MODULE + CEILING_MODULE * 0.5
			)
			if Geometry2D.is_point_in_polygon(snapped, _polygon) and _distance_to_boundary(snapped) >= 0.78:
				result.push_back(snapped)
	return result


func _make_fixture_mesh(panel_material: Material) -> ArrayMesh:
	var mesh := ArrayMesh.new()
	var housing := SurfaceTool.new()
	housing.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(housing, Vector3(1.20, 0.035, 0.60), Vector3(0.0, 0.0, 0.0))
	housing.commit(mesh)
	var panel := SurfaceTool.new()
	panel.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(panel, Vector3(-0.54, -0.021, -0.24), Vector3(0.54, -0.021, -0.24), Vector3(0.54, -0.021, 0.24), Vector3(-0.54, -0.021, 0.24), Vector3.DOWN, 1.08, 0.48)
	panel.commit(mesh)
	mesh.surface_set_material(0, FIXTURE_HOUSING_MATERIAL)
	mesh.surface_set_material(1, panel_material)
	return mesh


func _make_fixture_multimesh(mesh: Mesh, positions: Array[Vector2]) -> MultiMesh:
	var multimesh := MultiMesh.new()
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.mesh = mesh
	multimesh.instance_count = positions.size()
	for position_index in positions.size():
		var position_2d := positions[position_index]
		var quarter_turn := posmod(_layout_hash(roundi(position_2d.x), roundi(position_2d.y), 71), 2)
		var basis := Basis(Vector3.UP, float(quarter_turn) * PI * 0.5)
		multimesh.set_instance_transform(position_index, Transform3D(basis, Vector3(position_2d.x, FIXTURE_Y, position_2d.y)))
	return multimesh


func _build_sparse_lights() -> void:
	if _lit_fixture_positions.is_empty():
		return
	var desired_count := mini(MAX_REAL_LIGHTS, _lit_fixture_positions.size())
	for light_index in desired_count:
		var fixture_index := floori((float(light_index) + 0.5) * float(_lit_fixture_positions.size()) / float(desired_count))
		var point := _lit_fixture_positions[fixture_index]
		var light := OmniLight3D.new()
		light.name = "FluorescentLight_%02d" % light_index
		light.position = Vector3(point.x, CEILING_Y - 0.24, point.y)
		light.light_color = Color(0.98, 0.96, 0.84, 1.0)
		light.light_energy = 1.36 if (light_index % 3) != 0 else 1.16
		light.light_specular = 0.025
		light.omni_range = 9.5
		light.omni_attenuation = 1.42
		light.shadow_enabled = false
		sparse_lights.add_child(light)
		_light_count += 1


func _place_markers() -> void:
	var spawn := _load_source_point("spawn_m", _polygon_bounds().get_center())
	spawn = _align_source_point(spawn)
	if not Geometry2D.is_point_in_polygon(spawn, _polygon):
		spawn = _polygon_bounds().get_center()
	player_spawn.position = Vector3(spawn.x, 0.10, spawn.y)
	var target := _interior_target(spawn)
	player_spawn.look_at(Vector3(target.x, 0.10, target.y), Vector3.UP)
	if not _door_transforms.is_empty():
		unexplored_exit.transform = _door_transforms[_door_transforms.size() - 1]


func _print_performance_audit() -> void:
	var mesh_instances := 0
	var array_meshes := 0
	var static_bodies := 0
	var collision_shapes := 0
	var multimesh_instances := 0
	var lights := 0
	var shadow_lights := 0
	var pending: Array[Node] = [self]
	while not pending.is_empty():
		var node: Node = pending.pop_back()
		pending.append_array(node.get_children())
		if node is MeshInstance3D:
			mesh_instances += 1
			if (node as MeshInstance3D).mesh is ArrayMesh:
				array_meshes += 1
		elif node is MultiMeshInstance3D:
			multimesh_instances += 1
			var multimesh: MultiMesh = (node as MultiMeshInstance3D).multimesh
			if multimesh != null and multimesh.mesh is ArrayMesh:
				array_meshes += 1
		elif node is StaticBody3D:
			static_bodies += 1
		elif node is CollisionShape3D:
			collision_shapes += 1
		elif node is Light3D:
			lights += 1
			if (node as Light3D).shadow_enabled:
				shadow_lights += 1
	print(
		"SECTOR04_PERFORMANCE: nodes=%d MeshInstance3D=%d ArrayMesh=%d StaticBody3D=%d CollisionShape3D=%d MultiMeshInstance3D=%d Light3D=%d shadow_lights=%d"
		% [_count_nodes(self), mesh_instances, array_meshes, static_bodies, collision_shapes, multimesh_instances, lights, shadow_lights]
	)


func _load_source_point(key: String, fallback: Vector2) -> Vector2:
	var parsed: Variant = JSON.parse_string(FileAccess.get_file_as_string(TRACE_PATH))
	if parsed is Dictionary:
		var value: Variant = (parsed as Dictionary).get(key, [])
		if value is Array and value.size() >= 2:
			return Vector2(float(value[0]), float(value[1]))
	return fallback


func _align_source_point(source_point: Vector2) -> Vector2:
	var source_polygon := PackedVector2Array()
	var parsed: Variant = JSON.parse_string(FileAccess.get_file_as_string(TRACE_PATH))
	if parsed is Dictionary:
		for entry: Variant in (parsed as Dictionary).get("polygon_m", []):
			if entry is Array and entry.size() >= 2:
				source_polygon.push_back(Vector2(float(entry[0]), float(entry[1])).rotated(_source_rotation))
	var source_bounds := _bounds_for(source_polygon)
	return source_point.rotated(_source_rotation) - source_bounds.position


func _interior_target(origin: Vector2) -> Vector2:
	var candidates := [Vector2.RIGHT, Vector2.LEFT, Vector2.UP, Vector2.DOWN]
	for direction: Vector2 in candidates:
		var candidate := origin + direction * 3.0
		if Geometry2D.is_point_in_polygon(candidate, _polygon):
			return candidate
	return _polygon_bounds().get_center()


func _make_outer_vertices() -> PackedVector2Array:
	var result := PackedVector2Array()
	for vertex_index in _polygon.size():
		var previous := _polygon[(vertex_index - 1 + _polygon.size()) % _polygon.size()]
		var current := _polygon[vertex_index]
		var next := _polygon[(vertex_index + 1) % _polygon.size()]
		var previous_direction := (current - previous).normalized()
		var next_direction := (next - current).normalized()
		var previous_outward := Vector2(previous_direction.y, -previous_direction.x)
		var next_outward := Vector2(next_direction.y, -next_direction.x)
		var miter := previous_outward + next_outward
		if miter.length_squared() < 0.0001:
			miter = next_outward
		else:
			miter = miter.normalized()
		var denominator := maxf(absf(miter.dot(next_outward)), 0.25)
		result.push_back(current + miter * minf(WALL_THICKNESS / denominator, WALL_THICKNESS * 3.0))
	return result


func _distance_to_boundary(point: Vector2) -> float:
	var nearest := INF
	for edge_index in _polygon.size():
		var a := _polygon[edge_index]
		var b := _polygon[(edge_index + 1) % _polygon.size()]
		var segment := b - a
		var amount := clampf((point - a).dot(segment) / maxf(segment.length_squared(), 0.0001), 0.0, 1.0)
		nearest = minf(nearest, point.distance_to(a + segment * amount))
	return nearest


func _polygon_bounds() -> Rect2:
	return _bounds_for(_polygon)


func _bounds_for(points: PackedVector2Array) -> Rect2:
	if points.is_empty():
		return Rect2()
	var minimum := points[0]
	var maximum := points[0]
	for point: Vector2 in points:
		minimum = minimum.min(point)
		maximum = maximum.max(point)
	return Rect2(minimum, maximum - minimum)


func _signed_area(points: PackedVector2Array) -> float:
	var double_area := 0.0
	for point_index in points.size():
		var a := points[point_index]
		var b := points[(point_index + 1) % points.size()]
		double_area += a.x * b.y - b.x * a.y
	return double_area * 0.5


func _layout_hash(cell_x: int, cell_z: int, salt: int) -> int:
	return absi((cell_x * 73856093) ^ (cell_z * 19349663) ^ (salt * 83492791))


func _floor_vertex(point: Vector2) -> Vector3:
	return Vector3(point.x, 0.0, point.y)


func _ceiling_vertex(point: Vector2) -> Vector3:
	return Vector3(point.x, CEILING_Y, point.y)


func _add_wall_cap(surface: SurfaceTool, faces: PackedVector3Array, a: Vector3, b: Vector3, c: Vector3, d: Vector3) -> void:
	var normal := (b - a).cross(d - a).normalized()
	_add_quad(surface, a, b, c, d, normal, a.distance_to(b), CEILING_Y)
	_append_quad_faces(faces, a, b, c, d)


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
	_add_quad(surface, p001, p101, p111, p011, Vector3.FORWARD, size.x, size.y)
	_add_quad(surface, p100, p000, p010, p110, Vector3.BACK, size.x, size.y)
	_add_quad(surface, p000, p001, p011, p010, Vector3.LEFT, size.z, size.y)
	_add_quad(surface, p101, p100, p110, p111, Vector3.RIGHT, size.z, size.y)
	_add_quad(surface, p010, p011, p111, p110, Vector3.UP, size.x, size.z)
	_add_quad(surface, p000, p100, p101, p001, Vector3.DOWN, size.x, size.z)


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
		failures.push_back("missing visual mesh")
	if floor_collision.shape == null or wall_collision.shape == null:
		failures.push_back("missing aggregate collision")
	if fixture_visuals.multimesh == null or fixture_visuals_off.multimesh == null:
		failures.push_back("missing fixture MultiMesh")
	if _lit_fixture_positions.is_empty() or _off_fixture_positions.is_empty():
		failures.push_back("fixture on/off distribution is invalid")
	var space := get_world_3d().direct_space_state
	var floor_point := player_spawn.global_position
	var floor_query := PhysicsRayQueryParameters3D.create(floor_point + Vector3.UP * 2.0, floor_point + Vector3.DOWN * 1.0, 1)
	if space.intersect_ray(floor_query).is_empty():
		failures.push_back("floor ray missed at spawn")
	var wall_a := _polygon[0]
	var wall_b := _polygon[1]
	for edge_index in _polygon.size():
		var candidate_a := _polygon[edge_index]
		var candidate_b := _polygon[(edge_index + 1) % _polygon.size()]
		if candidate_a.distance_to(candidate_b) >= 1.0:
			wall_a = candidate_a
			wall_b = candidate_b
			break
	var wall_direction := (wall_b - wall_a).normalized()
	var wall_inward := Vector2(-wall_direction.y, wall_direction.x)
	var wall_midpoint := wall_a.lerp(wall_b, 0.5)
	var wall_query := PhysicsRayQueryParameters3D.create(
		to_global(Vector3(wall_midpoint.x + wall_inward.x, 1.0, wall_midpoint.y + wall_inward.y)),
		to_global(Vector3(wall_midpoint.x - wall_inward.x, 1.0, wall_midpoint.y - wall_inward.y)),
		1
	)
	if space.intersect_ray(wall_query).is_empty():
		failures.push_back("wall collision ray missed")
	var player := get_node_or_null("../../Player") as CharacterBody3D
	var movement_distance := 0.0
	if player == null:
		failures.push_back("player missing from active Level 0 root")
	else:
		if not player.is_on_floor():
			failures.push_back("player did not settle on Sector04 floor")
		var movement_start := player.global_position
		Input.action_press("move_forward")
		for _frame_index in 30:
			await get_tree().physics_frame
		Input.action_release("move_forward")
		movement_distance = Vector2(player.global_position.x - movement_start.x, player.global_position.z - movement_start.z).length()
		if movement_distance < 0.70:
			failures.push_back("movement advanced only %.3f m" % movement_distance)
		if player.global_position.y < -0.5:
			failures.push_back("player fell through Sector04 floor")
		player.global_position = movement_start
		player.velocity = Vector3.ZERO
	if failures.is_empty():
		print("SECTOR04_VALIDATION: PASS floor walls movement=%.3fm fixtures=%d lights=%d nodes=%d" % [movement_distance, _fixture_positions.size(), _light_count, _count_nodes(self)])
		return true
	for failure: String in failures:
		push_error("SECTOR04_VALIDATION: %s" % failure)
	return false


func _capture_sector() -> void:
	var player_ui := get_node_or_null("../../Player/PlayerUI") as CanvasLayer
	if player_ui != null:
		player_ui.visible = false
	var camera := Camera3D.new()
	camera.current = true
	camera.fov = 72.0
	add_child(camera)
	var spawn := Vector2(player_spawn.position.x, player_spawn.position.z)
	var center := _polygon_bounds().get_center()
	var nearest_fixture := _nearest_position(_lit_fixture_positions, spawn)
	var first_door := _door_transforms[0]
	var nearest_door := Vector2(first_door.origin.x, first_door.origin.z)
	var door_inward := Vector2(first_door.basis.z.x, first_door.basis.z.z)
	var shots := [
		{"file": "sector_04_spawn_vr_kit_v1.png", "position": Vector3(spawn.x, 1.68, spawn.y), "target": Vector3(_interior_target(spawn).x, 1.45, _interior_target(spawn).y), "fov": 72.0},
		{"file": "sector_04_wide_vr_kit_v1.png", "position": Vector3(center.x, 1.62, center.y), "target": Vector3(spawn.x, 1.42, spawn.y), "fov": 78.0},
		{"file": "sector_04_ceiling_vr_kit_v1.png", "position": Vector3(nearest_fixture.x + 1.8, 1.20, nearest_fixture.y + 1.4), "target": Vector3(nearest_fixture.x, CEILING_Y - 0.03, nearest_fixture.y), "fov": 58.0},
		{"file": "sector_04_door_vr_kit_v1.png", "position": Vector3(nearest_door.x + door_inward.x * 2.2, 1.55, nearest_door.y + door_inward.y * 2.2), "target": Vector3(nearest_door.x, 1.10, nearest_door.y), "fov": 62.0},
		{"file": "sector_04_topdown_vr_kit_v1.png", "position": Vector3(center.x, 42.0, center.y), "target": Vector3(center.x, 0.0, center.y), "fov": 52.0},
	]
	var output_dir := ProjectSettings.globalize_path("res://captures")
	var directory_error := DirAccess.make_dir_recursive_absolute(output_dir)
	if directory_error != OK:
		push_error("Sector04 capture directory failed: %s" % error_string(directory_error))
		return
	for shot: Dictionary in shots:
		camera.position = shot.position
		camera.fov = float(shot.fov)
		var up := Vector3.FORWARD if String(shot.file).contains("topdown") else Vector3.UP
		camera.look_at(shot.target, up)
		await get_tree().process_frame
		await RenderingServer.frame_post_draw
		var image := get_viewport().get_texture().get_image()
		var output_path: String = output_dir.path_join(String(shot.file))
		var save_error := image.save_png(output_path)
		if save_error != OK:
			push_error("Sector04 capture failed: %s" % error_string(save_error))
		else:
			print("SECTOR04_CAPTURE: %s" % output_path)
	camera.queue_free()


func _nearest_position(points: Array[Vector2], target: Vector2) -> Vector2:
	if points.is_empty():
		return target
	var nearest := points[0]
	var nearest_distance := nearest.distance_squared_to(target)
	for point: Vector2 in points:
		var distance := point.distance_squared_to(target)
		if distance < nearest_distance:
			nearest = point
			nearest_distance = distance
	return nearest


func _count_nodes(node: Node) -> int:
	var total := 1
	for child: Node in node.get_children():
		total += _count_nodes(child)
	return total
