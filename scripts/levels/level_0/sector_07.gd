extends Node3D

## Static, source-derived Sector 07. Topology is frozen from sector_07.png;
## no raster or trace resource is read at runtime.

const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.035
const FIXTURE_Y := 2.84
const SOURCE_METERS_PER_PIXEL := 0.089583
const SOURCE_ORIGIN_PX := Vector2(180.0, 324.0)
const PASSAGE_WIDTH := 2.15
const MAX_REAL_LIGHTS := 8
const HOLE_SIZE := 1.0
const HOLE_CENTER_PX := Vector2(412.0, 757.333)
const SLOPE_START_PX_X := 760.0
const SLOPE_END_PX_X := 844.0
const SLOPE_RISE := 0.75
const PLAYER_RADIUS := 0.32
const ArchitectureBuilderScript = preload("res://scripts/levels/level_0/level0_architecture_builder.gd")

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
var _floor_shapes: Array[PackedVector2Array] = []
var _fixture_points: Array[Dictionary] = []
var _lit_fixture_transforms: Array[Transform3D] = []
var _off_fixture_transforms: Array[Transform3D] = []
var _socket_transforms: Array[Transform3D] = []
var _vent_transforms: Array[Transform3D] = []
var _light_count := 0
var _custom_floor_triangle_count := 0
var _custom_floor_duplicate_count := 0


func _ready() -> void:
	_floor_shapes = _authored_floor_shapes()
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
	var entrance_openings: Array[Dictionary] = [{
		"id": "sector07_to_sector04",
		"center": Vector2.ZERO,
		"wall_direction": Vector2.DOWN,
		"cut_width": PASSAGE_WIDTH,
		"cut_height": CEILING_Y,
	}]
	var no_partitions: Array[Dictionary] = []
	var no_columns: Array[Dictionary] = []
	_build_result = builder.build(
		_floor_shapes,
		no_partitions,
		entrance_openings,
		no_columns,
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
	_rebuild_annotated_floor()


func _authored_floor_shapes() -> Array[PackedVector2Array]:
	var shapes: Array[PackedVector2Array] = []
	# S07-L01: exact controlled seam, enlarged only inward from the cropped map edge.
	shapes.push_back(_rect_polygon(0.0, -PASSAGE_WIDTH * 0.5, 3.0, PASSAGE_WIDTH * 0.5))
	shapes.push_back(_source_polygon(PackedVector2Array([
		Vector2(292, 148), Vector2(320, 272), Vector2(324, 272), Vector2(316, 332), Vector2(316, 344), Vector2(300, 340), Vector2(300, 324), Vector2(272, 324), Vector2(260, 324), Vector2(252, 332), Vector2(244, 332), Vector2(248, 348), Vector2(232, 348), Vector2(212, 312), Vector2(212, 308), Vector2(180, 320), Vector2(180, 328), Vector2(196, 332), Vector2(204, 332), Vector2(220, 360), Vector2(220, 368), Vector2(240, 356), Vector2(256, 356), Vector2(292, 400), Vector2(300, 400), Vector2(288, 412), Vector2(288, 424), Vector2(272, 408), Vector2(272, 404), Vector2(244, 420), Vector2(236, 420), Vector2(256, 460), Vector2(256, 468), Vector2(280, 464), Vector2(288, 464), Vector2(296, 488), Vector2(300, 488), Vector2(312, 544), Vector2(312, 548), Vector2(300, 548), Vector2(292, 580), Vector2(292, 596), Vector2(328, 608), Vector2(364, 608), Vector2(376, 628), Vector2(376, 632), Vector2(404, 636), Vector2(412, 636), Vector2(408, 656), Vector2(408, 660), Vector2(436, 672), Vector2(436, 696), Vector2(464, 688), Vector2(476, 688), Vector2(488, 700), Vector2(512, 700), Vector2(528, 664), Vector2(536, 664), Vector2(520, 648), Vector2(520, 644), Vector2(488, 668), Vector2(488, 672), Vector2(472, 656), Vector2(464, 656), Vector2(492, 600), Vector2(492, 592), Vector2(476, 580), Vector2(460, 580), Vector2(436, 532), Vector2(432, 532), Vector2(464, 504), Vector2(464, 500), Vector2(488, 520), Vector2(556, 520), Vector2(600, 484), Vector2(600, 480), Vector2(636, 476), Vector2(648, 476), Vector2(656, 460), Vector2(656, 456), Vector2(700, 448), Vector2(700, 444), Vector2(712, 448), Vector2(712, 456), Vector2(728, 448), Vector2(748, 448), Vector2(752, 436), Vector2(760, 436), Vector2(760, 440), Vector2(772, 440), Vector2(772, 476), Vector2(772, 480), Vector2(776, 476), Vector2(800, 476), Vector2(808, 496), Vector2(808, 508), Vector2(836, 508), Vector2(844, 508), Vector2(832, 400), Vector2(832, 392), Vector2(700, 420), Vector2(700, 424), Vector2(684, 396), Vector2(680, 396), Vector2(676, 428), Vector2(676, 432), Vector2(660, 420), Vector2(648, 420), Vector2(624, 436), Vector2(604, 436), Vector2(600, 420), Vector2(596, 420), Vector2(588, 424), Vector2(588, 452), Vector2(564, 460), Vector2(560, 460), Vector2(560, 484), Vector2(560, 488), Vector2(516, 488), Vector2(508, 488), Vector2(496, 460), Vector2(496, 452), Vector2(516, 440), Vector2(516, 436), Vector2(488, 392), Vector2(480, 392), Vector2(500, 368), Vector2(500, 364), Vector2(452, 324), Vector2(440, 324), Vector2(448, 316), Vector2(448, 304), Vector2(424, 280), Vector2(424, 276), Vector2(348, 288), Vector2(336, 288), Vector2(292, 148),
	])))
	shapes.push_back(_source_polygon(PackedVector2Array([
		Vector2(680, 376), Vector2(684, 372), Vector2(700, 372), Vector2(700, 352), Vector2(688, 352), Vector2(688, 344), Vector2(704, 340), Vector2(708, 340), Vector2(688, 328), Vector2(684, 328), Vector2(684, 300), Vector2(660, 300), Vector2(672, 324), Vector2(680, 324), Vector2(680, 336), Vector2(668, 328), Vector2(664, 328), Vector2(668, 344), Vector2(680, 344), Vector2(668, 356), Vector2(664, 356), Vector2(680, 396),
	])))
	shapes.push_back(_source_polygon(PackedVector2Array([
		Vector2(324, 708), Vector2(340, 720), Vector2(344, 720), Vector2(328, 744), Vector2(324, 744), Vector2(340, 760), Vector2(340, 776), Vector2(376, 748), Vector2(396, 748), Vector2(388, 760), Vector2(388, 764), Vector2(404, 780), Vector2(408, 780), Vector2(444, 732), Vector2(448, 732), Vector2(428, 724), Vector2(428, 712), Vector2(416, 732), Vector2(408, 732), Vector2(388, 712), Vector2(388, 708), Vector2(368, 728), Vector2(360, 728), Vector2(324, 692),
	])))
	shapes.push_back(_source_polygon(PackedVector2Array([
		Vector2(312, 800), Vector2(300, 808), Vector2(300, 824), Vector2(280, 824), Vector2(272, 824), Vector2(288, 860), Vector2(292, 860), Vector2(276, 884), Vector2(272, 884), Vector2(284, 904), Vector2(284, 908), Vector2(296, 900), Vector2(304, 900), Vector2(308, 872), Vector2(308, 868), Vector2(296, 864), Vector2(296, 856), Vector2(300, 852), Vector2(316, 852), Vector2(328, 828), Vector2(332, 828), Vector2(328, 800),
	])))
	# S07-L02/L03/L04 restore source-visible connections thinner than the
	# diagnostic sampling grid, clamped to the agreed walkable width.
	shapes.push_back(_source_corridor(Vector2(680, 388), Vector2(680, 420), 24.0))
	shapes.push_back(_source_corridor(Vector2(448, 516), Vector2(390, 735), 24.0))
	shapes.push_back(_source_corridor(Vector2(380, 740), Vector2(300, 840), 24.0))
	return shapes


func _source_polygon(source_points: PackedVector2Array) -> PackedVector2Array:
	var result := PackedVector2Array()
	for point: Vector2 in source_points:
		result.push_back((point - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL)
	return result


func _source_corridor(source_a: Vector2, source_b: Vector2, width_px: float) -> PackedVector2Array:
	var direction := (source_b - source_a).normalized()
	var side := Vector2(-direction.y, direction.x) * width_px * 0.5
	return _source_polygon(PackedVector2Array([source_a + side, source_b + side, source_b - side, source_a - side]))


func _rect_polygon(min_x: float, min_z: float, max_x: float, max_z: float) -> PackedVector2Array:
	return PackedVector2Array([Vector2(min_x, min_z), Vector2(max_x, min_z), Vector2(max_x, max_z), Vector2(min_x, max_z)])


func _build_fixtures() -> void:
	_fixture_points = [
		_fixture_px(292, 300, false, 0), _fixture_px(360, 310, false, 1), _fixture_px(410, 315, false, 0),
		_fixture_px(260, 350, false, 1), _fixture_px(320, 390, false, 0), _fixture_px(380, 420, true, 1),
		_fixture_px(450, 420, false, 0), _fixture_px(500, 470, false, 1), _fixture_px(550, 495, false, 0),
		_fixture_px(610, 455, false, 1), _fixture_px(665, 440, false, 0), _fixture_px(720, 435, false, 1),
		_fixture_px(780, 440, true, 0), _fixture_px(815, 475, true, 1), _fixture_px(680, 340, false, 0),
		_fixture_px(315, 540, false, 1), _fixture_px(335, 585, false, 0), _fixture_px(390, 635, false, 1),
		_fixture_px(455, 665, false, 0), _fixture_px(385, 735, false, 1), _fixture_px(300, 840, false, 0),
	]
	for data: Dictionary in _fixture_points:
		var point: Vector2 = data["point"]
		var fixture_basis := Basis(Vector3.UP, float(data["rotation"]) * PI * 0.5)
		var fixture_transform := Transform3D(fixture_basis, Vector3(point.x, FIXTURE_Y, point.y))
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
	return Vector3(point.x, y, point.y)


func _rebuild_annotated_floor() -> void:
	var union_polygons: Array = _build_result["union_polygons"]
	if union_polygons.size() != 1:
		return
	var outer: PackedVector2Array = union_polygons[0]
	var hole_center := (HOLE_CENTER_PX - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var half := HOLE_SIZE * 0.5
	var hole := PackedVector2Array([
		hole_center + Vector2(-half, -half), hole_center + Vector2(half, -half),
		hole_center + Vector2(half, half), hole_center + Vector2(-half, half),
	])
	var indices := Geometry2D.triangulate_polygon(outer)
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	var triangle_keys: Dictionary = {}
	for index in range(0, indices.size(), 3):
		var source_triangle := PackedVector2Array([outer[indices[index]], outer[indices[index + 1]], outer[indices[index + 2]]])
		for fragment: PackedVector2Array in _triangle_fragments_around_hole(source_triangle, hole, hole_center):
			var a: Vector2 = fragment[0]
			var b: Vector2 = fragment[1]
			var c: Vector2 = fragment[2]
			var va := Vector3(a.x, _floor_height(a), a.y)
			var vb := Vector3(b.x, _floor_height(b), b.y)
			var vc := Vector3(c.x, _floor_height(c), c.y)
			if (vb - va).cross(vc - va).y < 0.0:
				var swap := vb
				vb = vc
				vc = swap
			var key := _triangle_key(va, vb, vc)
			if triangle_keys.has(key):
				_custom_floor_duplicate_count += 1
				continue
			triangle_keys[key] = true
			var normal := (vb - va).cross(vc - va).normalized()
			for vertex: Vector3 in [va, vb, vc]:
				surface.set_normal(normal)
				surface.set_uv(Vector2(vertex.x, vertex.z) * 0.72)
				surface.add_vertex(vertex)
				faces.push_back(vertex)
			_custom_floor_triangle_count += 1
	var mesh := surface.commit()
	mesh.surface_set_material(0, FLOOR_MATERIAL)
	floor_visual.mesh = mesh
	var floor_shape := ConcavePolygonShape3D.new()
	floor_shape.set_faces(faces)
	floor_shape.backface_collision = true
	floor_collision.shape = floor_shape


func _triangle_fragments_around_hole(triangle: PackedVector2Array, hole: PackedVector2Array, hole_center: Vector2) -> Array[PackedVector2Array]:
	var points := PackedVector2Array(triangle)
	var intersects := false
	for corner: Vector2 in hole:
		if _point_in_triangle(corner, triangle[0], triangle[1], triangle[2]):
			_push_unique_point(points, corner)
			intersects = true
	# Delaunay is not constrained. Dense points along the four authoritative
	# square edges prevent a triangle from spanning across the opening and
	# being discarded as one large visible wedge.
	for hole_edge in 4:
		for step in range(1, 16):
			var edge_point: Vector2 = hole[hole_edge].lerp(hole[(hole_edge + 1) % 4], float(step) / 16.0)
			if _point_in_triangle(edge_point, triangle[0], triangle[1], triangle[2]):
				_push_unique_point(points, edge_point)
				intersects = true
	for vertex: Vector2 in triangle:
		if Geometry2D.is_point_in_polygon(vertex, hole):
			intersects = true
	for triangle_edge in 3:
		var triangle_a := triangle[triangle_edge]
		var triangle_b := triangle[(triangle_edge + 1) % 3]
		for hole_edge in 4:
			var intersection: Variant = Geometry2D.segment_intersects_segment(triangle_a, triangle_b, hole[hole_edge], hole[(hole_edge + 1) % 4])
			if intersection is Vector2:
				_push_unique_point(points, intersection)
				intersects = true
	if not intersects:
		return [triangle]
	if _point_in_triangle(hole_center, triangle[0], triangle[1], triangle[2]):
		_push_unique_point(points, hole_center)
	var result: Array[PackedVector2Array] = []
	var local_indices := Geometry2D.triangulate_delaunay(points)
	for index in range(0, local_indices.size(), 3):
		var a := points[local_indices[index]]
		var b := points[local_indices[index + 1]]
		var c := points[local_indices[index + 2]]
		var centroid := (a + b + c) / 3.0
		if not _point_in_triangle(centroid, triangle[0], triangle[1], triangle[2]):
			continue
		if Geometry2D.is_point_in_polygon(centroid, hole):
			continue
		result.push_back(PackedVector2Array([a, b, c]))
	return result


func _push_unique_point(points: PackedVector2Array, candidate: Vector2) -> void:
	for point: Vector2 in points:
		if point.distance_to(candidate) <= 0.0001:
			return
	points.push_back(candidate)


func _point_in_triangle(point: Vector2, a: Vector2, b: Vector2, c: Vector2) -> bool:
	var ab := (point - b).cross(a - b)
	var bc := (point - c).cross(b - c)
	var ca := (point - a).cross(c - a)
	var has_negative := ab < -0.000001 or bc < -0.000001 or ca < -0.000001
	var has_positive := ab > 0.000001 or bc > 0.000001 or ca > 0.000001
	return not (has_negative and has_positive)


func _floor_height(point: Vector2) -> float:
	var source_x := point.x / SOURCE_METERS_PER_PIXEL + SOURCE_ORIGIN_PX.x
	return smoothstep(SLOPE_START_PX_X, SLOPE_END_PX_X, source_x) * SLOPE_RISE


func _triangle_key(a: Vector3, b: Vector3, c: Vector3) -> String:
	var vertices := [a, b, c]
	vertices.sort_custom(func(first: Vector3, second: Vector3) -> bool:
		if not is_equal_approx(first.x, second.x):
			return first.x < second.x
		if not is_equal_approx(first.y, second.y):
			return first.y < second.y
		return first.z < second.z
	)
	return "%s|%s|%s" % [vertices[0].snapped(Vector3.ONE * 0.0001), vertices[1].snapped(Vector3.ONE * 0.0001), vertices[2].snapped(Vector3.ONE * 0.0001)]


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
		light.position = Vector3(lit_points[light_index].x, CEILING_Y - 0.24, lit_points[light_index].y)
		light.light_color = Color(0.98, 0.96, 0.84, 1.0)
		light.light_energy = 1.32 if light_index % 3 != 0 else 1.12
		light.light_specular = 0.025
		light.omni_range = 9.5
		light.omni_attenuation = 1.42
		light.shadow_enabled = false
		sparse_lights.add_child(light)
		_light_count += 1


func _place_markers() -> void:
	entrance_marker.position = Vector3.ZERO
	entrance_marker.rotation.y = PI
	terminal_08.position = _source_position(292, 144, 0.0)
	terminal_08.rotation.y = 0.0
	terminal_11.position = _source_position(672, 300, 0.0)
	terminal_11.rotation.y = 0.0
	terminal_06.position = _source_position(840, 450, 0.0)
	terminal_06.rotation.y = -PI * 0.5
	music_source_marker.position = _source_position(620, 410, 0.0)


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
	if int(stats.get("input_polygons", 0)) != 8:
		failures.push_back("unexpected authored polygon count")
	if int(stats.get("duplicate_floor_triangles", -1)) != 0 or int(stats.get("duplicate_ceiling_triangles", -1)) != 0 or int(stats.get("duplicate_wall_triangles", -1)) != 0:
		failures.push_back("duplicate aggregate triangles")
	if _custom_floor_duplicate_count != 0 or _custom_floor_triangle_count == 0:
		failures.push_back("invalid annotated floor triangulation")
	var space := get_world_3d().direct_space_state
	var seam_from := to_global(Vector3(-0.65, 1.0, 0.0))
	var seam_to := to_global(Vector3(1.50, 1.0, 0.0))
	if not space.intersect_ray(PhysicsRayQueryParameters3D.create(seam_from, seam_to, 1)).is_empty():
		failures.push_back("Sector 04/07 passage is blocked")
	var floor_samples := [Vector2(1.2, 0.0), (Vector2(310, 350) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, (Vector2(500, 470) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, (Vector2(700, 440) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, (Vector2(375, 725) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL, (Vector2(300, 840) - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL]
	for point: Vector2 in floor_samples:
		var from := to_global(Vector3(point.x, 1.5, point.y))
		if space.intersect_ray(PhysicsRayQueryParameters3D.create(from, from + Vector3.DOWN * 2.0, 1)).is_empty():
			failures.push_back("floor ray missed at (%.2f, %.2f)" % [point.x, point.y])
	var hole_center := (HOLE_CENTER_PX - SOURCE_ORIGIN_PX) * SOURCE_METERS_PER_PIXEL
	var hole_from := to_global(Vector3(hole_center.x, 1.0, hole_center.y))
	if not space.intersect_ray(PhysicsRayQueryParameters3D.create(hole_from, hole_from + Vector3.DOWN * 1.2, 1)).is_empty():
		failures.push_back("square hole still has a false floor")
	var player := get_node_or_null("../../Player") as CharacterBody3D
	if player == null:
		failures.push_back("player missing for bidirectional seam test")
	else:
		var saved_transform := player.global_transform
		var edge_offset := PASSAGE_WIDTH * 0.5 - PLAYER_RADIUS - 0.08
		await _validate_crossing(player, Vector3(-5.15, 0.10, 29.25), PI * 0.5, -6.45, true, "04_to_07_center", failures)
		await _validate_crossing(player, Vector3(-6.85, 0.10, 29.25), -PI * 0.5, -5.55, false, "07_to_04_center", failures)
		await _validate_crossing(player, Vector3(-5.15, 0.10, 29.25 - edge_offset), PI * 0.5, -6.45, true, "04_to_07_left_edge", failures)
		await _validate_crossing(player, Vector3(-6.85, 0.10, 29.25 + edge_offset), -PI * 0.5, -5.55, false, "07_to_04_right_edge", failures)
		player.global_transform = saved_transform
		player.velocity = Vector3.ZERO
	if failures.is_empty():
		print("SECTOR07_VALIDATION: PASS polygons=8 union=%d floor_triangles=%d floor_duplicates=%d fixtures=%d on=%d off=%d lights=%d sockets=%d vents=%d passage=%.2fm hole=real slope=%.2fm terminals=08+11+06 capped=true junction_delta=%.6fm" % [stats.get("union_polygons", 0), _custom_floor_triangle_count, _custom_floor_duplicate_count, _fixture_points.size(), _lit_fixture_transforms.size(), _off_fixture_transforms.size(), _light_count, _socket_transforms.size(), _vent_transforms.size(), PASSAGE_WIDTH, SLOPE_RISE, stats.get("max_wall_junction_delta", INF)])
		return true
	for failure: String in failures:
		push_error("SECTOR07_VALIDATION: %s" % failure)
	return false


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
		{"file": "sector_07_topdown.png", "position": Vector3(30.0, 72.0, 18.0), "target": Vector3(30.0, 0.0, 18.0), "ortho_size": 78.0, "topdown": true},
		{"file": "sector_07_main_cluster.png", "position": _source_position(310, 350, 1.45), "target": _source_position(405, 390, 1.25), "fov": 66.0},
		{"file": "sector_07_narrow_corridor.png", "position": _source_position(438, 535, 1.38), "target": _source_position(390, 675, 1.18), "fov": 62.0},
		{"file": "sector_07_lighting.png", "position": _source_position(715, 445, 1.45), "target": _source_position(815, 475, 1.20), "fov": 62.0},
		{"file": "sector_07_hole_or_slope.png", "position": _source_position(HOLE_CENTER_PX.x, HOLE_CENTER_PX.y, 2.35), "target": _source_position(HOLE_CENTER_PX.x, HOLE_CENTER_PX.y, -0.20), "fov": 52.0},
		{"file": "sector_04_07_connection_from_04.png", "position": Vector3(-1.50, 1.45, 0.0), "target": Vector3(3.0, 1.20, 0.0), "fov": 58.0},
		{"file": "sector_04_07_connection_from_07.png", "position": Vector3(1.50, 1.45, 0.0), "target": Vector3(-2.0, 1.20, 0.0), "fov": 58.0},
		{"file": "sector_04_07_connection_closeup_left.png", "position": Vector3(-0.50, 1.45, -0.62), "target": Vector3(0.0, 1.38, -1.075), "fov": 48.0},
		{"file": "sector_04_07_connection_closeup_right.png", "position": Vector3(-0.20, 1.45, 0.62), "target": Vector3(0.0, 1.38, 1.075), "fov": 48.0},
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
			sector_04_node.visible = not topdown
		camera.projection = Camera3D.PROJECTION_ORTHOGONAL if topdown else Camera3D.PROJECTION_PERSPECTIVE
		camera.position = shot["position"]
		if topdown:
			camera.size = float(shot["ortho_size"])
		else:
			camera.fov = float(shot["fov"])
		var target_world := to_global(shot["target"])
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
