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

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/sector_04_orange_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/wallpaper.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/ceiling.tres")
const TRIM_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/trim.tres")
const DARK_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/socket_dark.tres")
const MAP_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/door_panel.tres")
const GLASS_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/glass.tres")
const TORN_WALLPAPER_MATERIAL: Material = preload("res://resources/materials/level_0/vr_kit/torn_wallpaper.tres")
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
@onready var torn_wallpaper_visual: MeshInstance3D = %TornWallpaperVisual
@onready var map_placeholder: MeshInstance3D = %MapPlaceholder
@onready var map_label: Label3D = %MapLabel
@onready var sparse_lights: Node3D = %SparseLights
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var glass_door_collision: CollisionShape3D = %GlassDoorCollision
@onready var player_spawn: Marker3D = %Sector04PlayerSpawn
@onready var unexplored_exit: Marker3D = %UnexploredExit

var _floor_shapes: Array[PackedVector2Array] = []
var _boundary_walls: Array[Dictionary] = []
var _partition_walls: Array[Dictionary] = []
var _fixture_data: Array[Dictionary] = []
var _lit_fixture_transforms: Array[Transform3D] = []
var _off_fixture_transforms: Array[Transform3D] = []
var _socket_transforms: Array[Transform3D] = []
var _light_count := 0


func _ready() -> void:
	_floor_shapes = _manual_floor_shapes()
	_boundary_walls = _manual_boundary_walls()
	_partition_walls = _manual_partition_walls()
	_fixture_data = _manual_fixture_data()
	_build_floor_and_collision()
	_build_ceiling()
	_build_walls_columns_and_collision()
	_build_baseboards()
	_build_glass_door()
	_build_fixed_sockets()
	_build_map_placeholder()
	_build_torn_wallpaper()
	_build_fixtures()
	_build_sparse_lights()
	_place_markers()
	_print_performance_audit()
	print(
		"SECTOR04_MANUAL_BUILD: floor_shapes=%d boundary_walls=%d partition_walls=%d columns=6 fixtures=%d on=%d off=%d lights=%d sockets=%d ceiling=%.3fm wall=%.2fm"
		% [_floor_shapes.size(), _boundary_walls.size(), _partition_walls.size(), _fixture_data.size(), _lit_fixture_transforms.size(), _off_fixture_transforms.size(), _light_count, _socket_transforms.size(), CEILING_Y, WALL_THICKNESS]
	)
	call_deferred("_run_optional_tasks")


func _manual_floor_shapes() -> Array[PackedVector2Array]:
	var shapes: Array[PackedVector2Array] = []
	shapes.push_back(_rect_polygon(-5.40, 0.00, 5.40, 4.80)) # A1
	shapes.push_back(_rect_polygon(-4.10, 4.80, 4.10, 24.80)) # A2
	shapes.push_back(_rect_polygon(5.40, 0.70, 8.80, 4.10)) # B
	shapes.push_back(_rect_polygon(-1.00, -7.50, 1.00, 0.00)) # C01
	shapes.push_back(_rect_polygon(-1.00, -9.50, 7.00, -7.50)) # C02
	shapes.push_back(_rect_polygon(5.50, -15.00, 11.00, -9.50)) # C-R01
	shapes.push_back(_rect_polygon(7.00, -19.00, 11.00, -15.00)) # C-R02
	shapes.push_back(_rect_polygon(8.00, -22.20, 11.00, -19.00)) # C-R03
	shapes.push_back(_rect_polygon(-9.30, 13.00, -4.10, 18.00)) # D-R01/D-R02
	shapes.push_back(_rect_polygon(-17.00, 25.50, -7.00, 34.00)) # E
	shapes.push_back(PackedVector2Array([ # E diagonal 2.20 m connector
		Vector2(-4.10, 22.00), Vector2(-4.10, 24.20),
		Vector2(-7.00, 28.60), Vector2(-7.00, 26.40),
	]))
	return shapes


func _manual_boundary_walls() -> Array[Dictionary]:
	var walls: Array[Dictionary] = []
	# A1, with C01, A2 and glass-room interface left open.
	_add_boundary(walls, Vector2(-5.40, 0.00), Vector2(-1.00, 0.00), Vector2.UP)
	_add_boundary(walls, Vector2(1.00, 0.00), Vector2(5.40, 0.00), Vector2.UP)
	_add_boundary(walls, Vector2(5.40, 0.00), Vector2(5.40, 0.70), Vector2.LEFT)
	_add_boundary(walls, Vector2(5.40, 4.10), Vector2(5.40, 4.80), Vector2.LEFT)
	_add_boundary(walls, Vector2(5.40, 4.80), Vector2(4.10, 4.80), Vector2.DOWN)
	_add_boundary(walls, Vector2(-4.10, 4.80), Vector2(-5.40, 4.80), Vector2.DOWN)
	_add_boundary(walls, Vector2(-5.40, 4.80), Vector2(-5.40, 0.00), Vector2.RIGHT)
	# B glass room exterior.
	_add_boundary(walls, Vector2(5.40, 0.70), Vector2(8.80, 0.70), Vector2.UP)
	_add_boundary(walls, Vector2(8.80, 0.70), Vector2(8.80, 4.10), Vector2.LEFT)
	_add_boundary(walls, Vector2(8.80, 4.10), Vector2(5.40, 4.10), Vector2.DOWN)
	# A2, with D-R01 and diagonal connector openings removed.
	_add_boundary(walls, Vector2(4.10, 4.80), Vector2(4.10, 24.80), Vector2.LEFT)
	_add_boundary(walls, Vector2(4.10, 24.80), Vector2(-4.10, 24.80), Vector2.DOWN)
	_add_boundary(walls, Vector2(-4.10, 24.80), Vector2(-4.10, 24.20), Vector2.RIGHT)
	_add_boundary(walls, Vector2(-4.10, 22.00), Vector2(-4.10, 18.00), Vector2.RIGHT)
	_add_boundary(walls, Vector2(-4.10, 13.00), Vector2(-4.10, 4.80), Vector2.RIGHT)
	# D-R01 exterior.
	_add_boundary(walls, Vector2(-4.10, 13.00), Vector2(-9.30, 13.00), Vector2.UP)
	_add_boundary(walls, Vector2(-9.30, 13.00), Vector2(-9.30, 18.00), Vector2.RIGHT)
	_add_boundary(walls, Vector2(-9.30, 18.00), Vector2(-4.10, 18.00), Vector2.DOWN)
	# C01/C02.
	_add_boundary(walls, Vector2(-1.00, 0.00), Vector2(-1.00, -7.50), Vector2.RIGHT)
	_add_boundary(walls, Vector2(1.00, -7.50), Vector2(1.00, 0.00), Vector2.LEFT)
	_add_boundary(walls, Vector2(1.00, -7.50), Vector2(7.00, -7.50), Vector2.DOWN)
	_add_boundary(walls, Vector2(7.00, -7.50), Vector2(7.00, -9.50), Vector2.LEFT)
	_add_boundary(walls, Vector2(5.50, -9.50), Vector2(-1.00, -9.50), Vector2.UP)
	_add_boundary(walls, Vector2(-1.00, -9.50), Vector2(-1.00, -7.50), Vector2.RIGHT)
	# Three south rooms.
	_add_boundary(walls, Vector2(7.00, -9.50), Vector2(11.00, -9.50), Vector2.DOWN)
	_add_boundary(walls, Vector2(11.00, -9.50), Vector2(11.00, -15.00), Vector2.LEFT)
	_add_boundary(walls, Vector2(7.00, -15.00), Vector2(5.50, -15.00), Vector2.UP)
	_add_boundary(walls, Vector2(5.50, -15.00), Vector2(5.50, -9.50), Vector2.RIGHT)
	_add_boundary(walls, Vector2(7.00, -15.00), Vector2(7.00, -19.00), Vector2.RIGHT)
	_add_boundary(walls, Vector2(8.00, -19.00), Vector2(7.00, -19.00), Vector2.UP)
	_add_boundary(walls, Vector2(11.00, -15.00), Vector2(11.00, -19.00), Vector2.LEFT)
	_add_boundary(walls, Vector2(8.00, -19.00), Vector2(8.00, -22.20), Vector2.RIGHT)
	_add_boundary(walls, Vector2(11.00, -19.00), Vector2(11.00, -22.20), Vector2.LEFT)
	_add_boundary(walls, Vector2(11.00, -22.20), Vector2(8.00, -22.20), Vector2.UP)
	# Diagonal connector and E hall.
	_add_boundary(walls, Vector2(-4.10, 24.20), Vector2(-7.00, 28.60), Vector2(-0.835, -0.550))
	_add_boundary(walls, Vector2(-7.00, 26.40), Vector2(-4.10, 22.00), Vector2(0.835, 0.550))
	_add_boundary(walls, Vector2(-7.00, 28.60), Vector2(-7.00, 34.00), Vector2.LEFT)
	_add_boundary(walls, Vector2(-7.00, 34.00), Vector2(-17.00, 34.00), Vector2.DOWN)
	_add_boundary(walls, Vector2(-17.00, 34.00), Vector2(-17.00, 25.50), Vector2.RIGHT)
	_add_boundary(walls, Vector2(-17.00, 25.50), Vector2(-7.00, 25.50), Vector2.UP)
	_add_boundary(walls, Vector2(-7.00, 25.50), Vector2(-7.00, 26.40), Vector2.LEFT)
	return walls


func _manual_partition_walls() -> Array[Dictionary]:
	var walls: Array[Dictionary] = []
	# Glass door span: X=5.40, Z=1.80..3.00.
	_add_partition(walls, Vector2(5.40, 0.70), Vector2(5.40, 1.80))
	_add_partition(walls, Vector2(5.40, 3.00), Vector2(5.40, 4.10))
	# D-R01 opening: Z=14.80..16.20.
	_add_partition(walls, Vector2(-4.10, 13.00), Vector2(-4.10, 14.80))
	_add_partition(walls, Vector2(-4.10, 16.20), Vector2(-4.10, 18.00))
	# D-R02, with 0.90 m east entrance.
	_add_partition(walls, Vector2(-8.50, 14.00), Vector2(-6.20, 14.00))
	_add_partition(walls, Vector2(-6.20, 14.00), Vector2(-6.20, 14.65))
	_add_partition(walls, Vector2(-6.20, 15.55), Vector2(-6.20, 16.20))
	_add_partition(walls, Vector2(-6.20, 16.20), Vector2(-8.50, 16.20))
	_add_partition(walls, Vector2(-8.50, 16.20), Vector2(-8.50, 14.00))
	# Exact 1.40/1.20/1.20 m room openings.
	_add_partition(walls, Vector2(5.50, -9.50), Vector2(5.55, -9.50))
	_add_partition(walls, Vector2(6.95, -9.50), Vector2(7.00, -9.50))
	_add_partition(walls, Vector2(7.00, -15.00), Vector2(8.40, -15.00))
	_add_partition(walls, Vector2(9.60, -15.00), Vector2(11.00, -15.00))
	_add_partition(walls, Vector2(8.00, -19.00), Vector2(8.90, -19.00))
	_add_partition(walls, Vector2(10.10, -19.00), Vector2(11.00, -19.00))
	return walls


func _manual_fixture_data() -> Array[Dictionary]:
	return [
		_fixture(Vector2(-1.2, 2.4), false, 0), _fixture(Vector2(1.0, 7.4), false, 0),
		_fixture(Vector2(-0.8, 12.4), false, 0), _fixture(Vector2(0.9, 17.4), false, 0),
		_fixture(Vector2(-0.6, 22.3), true, 0), _fixture(Vector2(7.1, 2.4), false, 1),
		_fixture(Vector2(0.0, -4.0), false, 0), _fixture(Vector2(3.2, -8.5), true, 0),
		_fixture(Vector2(8.2, -12.1), false, 1), _fixture(Vector2(9.0, -17.0), false, 0),
		_fixture(Vector2(9.5, -20.6), false, 1), _fixture(Vector2(-5.3, 16.8), false, 1),
		_fixture(Vector2(-7.5, 15.1), false, 0), _fixture(Vector2(-14.2, 28.0), false, 0),
		_fixture(Vector2(-9.8, 28.0), false, 0), _fixture(Vector2(-14.2, 32.0), true, 0),
		_fixture(Vector2(-9.8, 32.0), false, 0),
	]


func _build_floor_and_collision() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	for shape: PackedVector2Array in _floor_shapes:
		var triangles := Geometry2D.triangulate_polygon(shape)
		for triangle_index in range(0, triangles.size(), 3):
			var a := Vector3(shape[triangles[triangle_index]].x, 0.0, shape[triangles[triangle_index]].y)
			var b := Vector3(shape[triangles[triangle_index + 1]].x, 0.0, shape[triangles[triangle_index + 1]].y)
			var c := Vector3(shape[triangles[triangle_index + 2]].x, 0.0, shape[triangles[triangle_index + 2]].y)
			_add_triangle(surface, a, b, c, Vector3.UP)
			faces.append_array(PackedVector3Array([a, b, c]))
	var mesh := surface.commit()
	mesh.surface_set_material(0, FLOOR_MATERIAL)
	floor_visual.mesh = mesh
	var shape_3d := ConcavePolygonShape3D.new()
	shape_3d.set_faces(faces)
	shape_3d.backface_collision = true
	floor_collision.shape = shape_3d


func _build_ceiling() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	for shape: PackedVector2Array in _floor_shapes:
		var triangles := Geometry2D.triangulate_polygon(shape)
		for triangle_index in range(0, triangles.size(), 3):
			var a := Vector3(shape[triangles[triangle_index]].x, CEILING_Y, shape[triangles[triangle_index]].y)
			var b := Vector3(shape[triangles[triangle_index + 1]].x, CEILING_Y, shape[triangles[triangle_index + 1]].y)
			var c := Vector3(shape[triangles[triangle_index + 2]].x, CEILING_Y, shape[triangles[triangle_index + 2]].y)
			_add_triangle(surface, c, b, a, Vector3.DOWN)
	var mesh := surface.commit()
	mesh.surface_set_material(0, CEILING_MATERIAL)
	ceiling_visual.mesh = mesh


func _build_walls_columns_and_collision() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	for wall: Dictionary in _boundary_walls:
		_add_boundary_wall(surface, faces, wall["a"], wall["b"], wall["normal"])
	for wall: Dictionary in _partition_walls:
		_add_centered_wall(surface, faces, wall["a"], wall["b"])
	for center: Vector2 in _column_centers():
		_add_box_with_faces(surface, faces, Vector3(0.75, CEILING_Y, 0.75), Vector3(center.x, CEILING_Y * 0.5, center.y))
	var mesh := surface.commit()
	mesh.surface_set_material(0, WALL_MATERIAL)
	wall_visual.mesh = mesh
	var collision_mesh := ConcavePolygonShape3D.new()
	collision_mesh.set_faces(faces)
	collision_mesh.backface_collision = true
	wall_collision.shape = collision_mesh


func _build_baseboards() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	for wall: Dictionary in _boundary_walls:
		_add_baseboard_face(surface, wall["a"], wall["b"], wall["normal"])
	for wall: Dictionary in _partition_walls:
		var a: Vector2 = wall["a"]
		var b: Vector2 = wall["b"]
		var direction := (b - a).normalized()
		var normal := Vector2(-direction.y, direction.x)
		_add_baseboard_face(surface, a + normal * WALL_THICKNESS * 0.5, b + normal * WALL_THICKNESS * 0.5, normal)
		_add_baseboard_face(surface, b - normal * WALL_THICKNESS * 0.5, a - normal * WALL_THICKNESS * 0.5, -normal)
	for center: Vector2 in _column_centers():
		var half := 0.375
		_add_baseboard_face(surface, Vector2(center.x - half, center.y - half), Vector2(center.x + half, center.y - half), Vector2.DOWN)
		_add_baseboard_face(surface, Vector2(center.x + half, center.y - half), Vector2(center.x + half, center.y + half), Vector2.RIGHT)
		_add_baseboard_face(surface, Vector2(center.x + half, center.y + half), Vector2(center.x - half, center.y + half), Vector2.UP)
		_add_baseboard_face(surface, Vector2(center.x - half, center.y + half), Vector2(center.x - half, center.y - half), Vector2.LEFT)
	var mesh := surface.commit()
	mesh.surface_set_material(0, TRIM_MATERIAL)
	baseboard_visual.mesh = mesh


func _build_glass_door() -> void:
	var door_transform := _wall_transform(Vector2(5.40, 2.40), Vector2.UP, 0.0)
	door_frames.multimesh = _make_transform_multimesh(_make_door_frame_mesh(), [door_transform])
	door_panels.multimesh = _make_transform_multimesh(_make_glass_panel_mesh(), [door_transform])
	var shape := BoxShape3D.new()
	shape.size = Vector3(0.04, 2.20, 1.20)
	glass_door_collision.shape = shape
	glass_door_collision.position = Vector3(5.40, 1.10, 2.40)


func _build_fixed_sockets() -> void:
	_socket_transforms = [
		_wall_transform(Vector2(-3.3, 0.04), Vector2.RIGHT, SOCKET_CENTER_Y),
		_wall_transform(Vector2(3.1, 0.04), Vector2.RIGHT, SOCKET_CENTER_Y),
		_wall_transform(Vector2(4.06, 9.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(4.06, 19.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-4.06, 8.0), Vector2.DOWN, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-9.26, 16.5), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-0.96, -4.5), Vector2.DOWN, SOCKET_CENTER_Y),
		_wall_transform(Vector2(2.8, -9.46), Vector2.LEFT, SOCKET_CENTER_Y),
		_wall_transform(Vector2(10.96, -12.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(10.96, -17.0), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(10.96, -20.7), Vector2.UP, SOCKET_CENTER_Y),
		_wall_transform(Vector2(-16.96, 30.0), Vector2.DOWN, SOCKET_CENTER_Y),
	]
	socket_visuals.multimesh = _make_transform_multimesh(_make_socket_mesh(), _socket_transforms)


func _build_map_placeholder() -> void:
	map_placeholder.mesh = _make_box_mesh(Vector3(0.08, 0.80, 1.20), MAP_MATERIAL)
	map_placeholder.position = Vector3(-8.31, 1.35, 15.10)
	map_label.position = Vector3(0.05, 0.0, 0.0)
	map_label.rotation = Vector3(0.0, -PI * 0.5, 0.0)


func _build_torn_wallpaper() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var x := -4.055
	var points := [Vector3(x, 0.75, 20.10), Vector3(x, 1.95, 20.00), Vector3(x, 2.05, 20.65), Vector3(x, 1.62, 20.92), Vector3(x, 0.82, 20.78)]
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
	var light_points := [Vector2(-1.2, 2.4), Vector2(1.0, 8.0), Vector2(-0.8, 15.0), Vector2(7.1, 2.4), Vector2(8.2, -12.1), Vector2(9.2, -18.0), Vector2(-6.0, 16.0), Vector2(-11.8, 30.0)]
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
	unexplored_exit.position = Vector3(0.0, 0.0, 24.80)
	unexplored_exit.rotation = Vector3(0.0, PI, 0.0)


func _add_boundary(walls: Array[Dictionary], a: Vector2, b: Vector2, normal: Vector2) -> void:
	walls.push_back({"a": a, "b": b, "normal": normal.normalized()})


func _add_partition(walls: Array[Dictionary], a: Vector2, b: Vector2) -> void:
	if a.distance_squared_to(b) > 0.000001:
		walls.push_back({"a": a, "b": b})


func _fixture(point: Vector2, off: bool, rotation_index: int) -> Dictionary:
	return {"point": point, "off": off, "rotation": rotation_index}


func _rect_polygon(min_x: float, min_z: float, max_x: float, max_z: float) -> PackedVector2Array:
	return PackedVector2Array([Vector2(min_x, min_z), Vector2(max_x, min_z), Vector2(max_x, max_z), Vector2(min_x, max_z)])


func _column_centers() -> Array[Vector2]:
	return [Vector2(-15.0, 28.25), Vector2(-12.0, 28.25), Vector2(-9.0, 28.25), Vector2(-15.0, 32.25), Vector2(-12.0, 32.25), Vector2(-9.0, 32.25)]


func _add_boundary_wall(surface: SurfaceTool, faces: PackedVector3Array, a: Vector2, b: Vector2, walkable_normal: Vector2) -> void:
	_add_wall_prism(surface, faces, a, b, a - walkable_normal * WALL_THICKNESS, b - walkable_normal * WALL_THICKNESS)


func _add_centered_wall(surface: SurfaceTool, faces: PackedVector3Array, a: Vector2, b: Vector2) -> void:
	var direction := (b - a).normalized()
	var normal := Vector2(-direction.y, direction.x)
	var half_offset := normal * WALL_THICKNESS * 0.5
	_add_wall_prism(surface, faces, a + half_offset, b + half_offset, a - half_offset, b - half_offset)


func _add_wall_prism(surface: SurfaceTool, faces: PackedVector3Array, inner_a: Vector2, inner_b: Vector2, outer_a: Vector2, outer_b: Vector2) -> void:
	var a0 := Vector3(inner_a.x, 0.0, inner_a.y)
	var b0 := Vector3(inner_b.x, 0.0, inner_b.y)
	var b1 := Vector3(inner_b.x, CEILING_Y, inner_b.y)
	var a1 := Vector3(inner_a.x, CEILING_Y, inner_a.y)
	var oa0 := Vector3(outer_a.x, 0.0, outer_a.y)
	var ob0 := Vector3(outer_b.x, 0.0, outer_b.y)
	var ob1 := Vector3(outer_b.x, CEILING_Y, outer_b.y)
	var oa1 := Vector3(outer_a.x, CEILING_Y, outer_a.y)
	var direction := (inner_b - inner_a).normalized()
	var inner_normal := Vector3(-direction.y, 0.0, direction.x)
	var length := inner_a.distance_to(inner_b)
	_add_quad(surface, a0, b0, b1, a1, inner_normal, length, CEILING_Y)
	_add_quad(surface, ob0, oa0, oa1, ob1, -inner_normal, length, CEILING_Y)
	_add_quad(surface, a1, b1, ob1, oa1, Vector3.UP, length, WALL_THICKNESS)
	_add_quad(surface, a0, oa0, ob0, b0, Vector3.DOWN, WALL_THICKNESS, length)
	_add_quad(surface, a0, a1, oa1, oa0, Vector3(-direction.x, 0.0, -direction.y), WALL_THICKNESS, CEILING_Y)
	_add_quad(surface, b0, ob0, ob1, b1, Vector3(direction.x, 0.0, direction.y), WALL_THICKNESS, CEILING_Y)
	_append_quad_faces(faces, a0, b0, b1, a1)
	_append_quad_faces(faces, ob0, oa0, oa1, ob1)
	_append_quad_faces(faces, a1, b1, ob1, oa1)
	_append_quad_faces(faces, a0, oa0, ob0, b0)
	_append_quad_faces(faces, a0, a1, oa1, oa0)
	_append_quad_faces(faces, b0, ob0, ob1, b1)


func _add_baseboard_face(surface: SurfaceTool, a: Vector2, b: Vector2, walkable_normal: Vector2) -> void:
	var projected_a := a + walkable_normal * BASEBOARD_DEPTH
	var projected_b := b + walkable_normal * BASEBOARD_DEPTH
	var a0 := Vector3(projected_a.x, 0.0, projected_a.y)
	var b0 := Vector3(projected_b.x, 0.0, projected_b.y)
	var b1 := Vector3(projected_b.x, BASEBOARD_HEIGHT, projected_b.y)
	var a1 := Vector3(projected_a.x, BASEBOARD_HEIGHT, projected_a.y)
	var direction := (b - a).normalized()
	_add_quad(surface, a0, b0, b1, a1, Vector3(-direction.y, 0.0, direction.x), a.distance_to(b), BASEBOARD_HEIGHT)


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


func _make_door_frame_mesh() -> ArrayMesh:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(surface, Vector3(0.09, 2.20, 0.08), Vector3(-0.645, 1.10, 0.0))
	_add_box(surface, Vector3(0.09, 2.20, 0.08), Vector3(0.645, 1.10, 0.0))
	_add_box(surface, Vector3(1.38, 0.09, 0.08), Vector3(0.0, 2.155, 0.0))
	var mesh := surface.commit()
	mesh.surface_set_material(0, TRIM_MATERIAL)
	return mesh


func _make_glass_panel_mesh() -> ArrayMesh:
	return _make_box_mesh(Vector3(1.20, 2.10, 0.025), GLASS_MATERIAL, Vector3(0.0, 1.05, 0.0))


func _make_socket_mesh() -> ArrayMesh:
	var mesh := ArrayMesh.new()
	var plate := SurfaceTool.new()
	plate.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(plate, Vector3(0.078, 0.126, 0.008), Vector3.ZERO)
	plate.commit(mesh)
	var holes := SurfaceTool.new()
	holes.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_box(holes, Vector3(0.032, 0.012, 0.005), Vector3(0.0, 0.021, 0.006))
	_add_box(holes, Vector3(0.032, 0.012, 0.005), Vector3(0.0, -0.021, 0.006))
	holes.commit(mesh)
	mesh.surface_set_material(0, TRIM_MATERIAL)
	mesh.surface_set_material(1, DARK_MATERIAL)
	return mesh


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
	print("SECTOR04_MANUAL_PERFORMANCE: nodes=%d MeshInstance3D=%d ArrayMesh=%d StaticBody3D=%d CollisionShape3D=%d MultiMeshInstance3D=%d Light3D=%d shadow_lights=%d" % [counts.nodes, counts.mesh, counts.array, counts.body, counts.collision, counts.multimesh, counts.lights, counts.shadows])


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
	if _lit_fixture_transforms.is_empty() or _off_fixture_transforms.is_empty() or _light_count > MAX_REAL_LIGHTS:
		failures.push_back("invalid fixture/light distribution")
	var space := get_world_3d().direct_space_state
	var floor_samples := [Vector2(0.0, 2.2), Vector2(0.0, 12.0), Vector2(0.0, -4.0), Vector2(3.0, -8.5), Vector2(8.0, -12.0), Vector2(9.0, -17.0), Vector2(9.5, -20.5), Vector2(-5.2, 15.5), Vector2(-12.0, 30.0), Vector2(7.1, 2.4)]
	for point: Vector2 in floor_samples:
		var from := to_global(Vector3(point.x, 1.5, point.y))
		var query := PhysicsRayQueryParameters3D.create(from, from + Vector3.DOWN * 2.0, 1)
		if space.intersect_ray(query).is_empty():
			failures.push_back("floor ray missed at (%.2f, %.2f)" % [point.x, point.y])
	var glass_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(3.8, 1.1, 2.4)), to_global(Vector3(6.2, 1.1, 2.4)), 1)
	if space.intersect_ray(glass_query).is_empty():
		failures.push_back("glass-door collision ray missed")
	var column_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(-15.0, 1.0, 27.0)), to_global(Vector3(-15.0, 1.0, 29.0)), 1)
	if space.intersect_ray(column_query).is_empty():
		failures.push_back("column collision ray missed")
	var wall_query := PhysicsRayQueryParameters3D.create(to_global(Vector3(3.20, 1.0, 10.0)), to_global(Vector3(4.80, 1.0, 10.0)), 1)
	if space.intersect_ray(wall_query).is_empty():
		failures.push_back("solid east wall collision ray missed")
	var opening_rays := [
		{"id": "A1-A2", "from": Vector3(0.0, 1.0, 4.30), "to": Vector3(0.0, 1.0, 5.30)},
		{"id": "A1-C01", "from": Vector3(0.0, 1.0, 0.50), "to": Vector3(0.0, 1.0, -0.50)},
		{"id": "C01-C02", "from": Vector3(0.0, 1.0, -7.00), "to": Vector3(0.0, 1.0, -8.00)},
		{"id": "C02-C-R01", "from": Vector3(6.25, 1.0, -9.00), "to": Vector3(6.25, 1.0, -10.00)},
		{"id": "C-R01-C-R02", "from": Vector3(9.00, 1.0, -14.50), "to": Vector3(9.00, 1.0, -15.50)},
		{"id": "C-R02-C-R03", "from": Vector3(9.50, 1.0, -18.50), "to": Vector3(9.50, 1.0, -19.50)},
		{"id": "A2-D-R01", "from": Vector3(-3.60, 1.0, 15.50), "to": Vector3(-4.60, 1.0, 15.50)},
		{"id": "A2-E", "from": Vector3(-3.75, 1.0, 23.20), "to": Vector3(-4.85, 1.0, 24.65)},
	]
	for opening: Dictionary in opening_rays:
		var opening_query := PhysicsRayQueryParameters3D.create(to_global(opening["from"]), to_global(opening["to"]), 1)
		if not space.intersect_ray(opening_query).is_empty():
			failures.push_back("unexpected collision in opening %s" % String(opening["id"]))
	for width: float in [2.00, 1.40, 1.20, 1.20, 1.40, 2.20]:
		if width < 1.20 or width <= PLAYER_RADIUS * 2.0:
			failures.push_back("invalid opening width %.2f" % width)
	var player := get_node_or_null("../../Player") as CharacterBody3D
	var movement_distance := 0.0
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
	if failures.is_empty():
		print("SECTOR04_MANUAL_VALIDATION: PASS floors walls columns glass movement=%.3fm openings>=1.20m" % movement_distance)
		return true
	for failure: String in failures:
		push_error("SECTOR04_MANUAL_VALIDATION: %s" % failure)
	return false


func _capture_sector() -> void:
	var player_ui := get_node_or_null("../../Player/PlayerUI") as CanvasLayer
	if player_ui != null:
		player_ui.visible = false
	var camera := Camera3D.new()
	camera.current = true
	add_child(camera)
	var shots := [
		{"file": "sector_04_manual_spawn.png", "position": Vector3(0.0, 1.68, 2.2), "target": Vector3(0.2, 1.45, 15.0), "fov": 72.0},
		{"file": "sector_04_manual_glass_door.png", "position": Vector3(2.8, 1.58, 2.4), "target": Vector3(5.40, 1.10, 2.4), "fov": 62.0},
		{"file": "sector_04_manual_columns.png", "position": Vector3(-12.0, 1.62, 26.3), "target": Vector3(-12.0, 1.42, 33.0), "fov": 70.0},
	]
	var output_dir := ProjectSettings.globalize_path("res://captures")
	DirAccess.make_dir_recursive_absolute(output_dir)
	for shot: Dictionary in shots:
		camera.projection = Camera3D.PROJECTION_PERSPECTIVE
		camera.position = shot.position
		camera.fov = float(shot.fov)
		camera.look_at(shot.target, Vector3.UP)
		await _save_capture(camera, output_dir.path_join(String(shot.file)))
	ceiling_visual.visible = false
	fixture_visuals.visible = false
	fixture_visuals_off.visible = false
	camera.projection = Camera3D.PROJECTION_ORTHOGONAL
	camera.size = 66.0
	camera.position = Vector3(-3.0, 65.0, 6.0)
	camera.look_at(Vector3(-3.0, 0.0, 6.0), Vector3.FORWARD)
	await _save_capture(camera, output_dir.path_join("sector_04_manual_topdown.png"))
	ceiling_visual.visible = true
	fixture_visuals.visible = true
	fixture_visuals_off.visible = true
	_write_manual_overlay(output_dir.path_join("sector_04_manual_overlay.png"))
	camera.queue_free()


func _save_capture(_camera: Camera3D, output_path: String) -> void:
	await get_tree().process_frame
	await RenderingServer.frame_post_draw
	var image := get_viewport().get_texture().get_image()
	var save_error := image.save_png(output_path)
	if save_error != OK:
		push_error("Sector04 capture failed: %s" % error_string(save_error))
	else:
		print("SECTOR04_MANUAL_CAPTURE: %s" % output_path)


func _write_manual_overlay(output_path: String) -> void:
	var source := Image.load_from_file(ProjectSettings.globalize_path("res://assets/level_0/maps/sector_04.png"))
	if source == null or source.is_empty():
		push_error("Sector04 manual overlay source missing")
		return
	source.convert(Image.FORMAT_RGBA8)
	source.resize(1024, 1024, Image.INTERPOLATE_LANCZOS)
	var manual := Image.create(1024, 1024, false, Image.FORMAT_RGBA8)
	manual.fill(Color(0.31, 0.31, 0.31, 1.0))
	var bounds := Rect2(Vector2(-18.5, -23.7), Vector2(31.0, 59.2))
	for pixel_y in 1024:
		for pixel_x in 1024:
			var world := Vector2(bounds.position.x + float(pixel_x) / 1023.0 * bounds.size.x, bounds.end.y - float(pixel_y) / 1023.0 * bounds.size.y)
			if _point_on_manual_floor(world):
				manual.set_pixel(pixel_x, pixel_y, Color(0.76, 0.59, 0.34, 1.0))
	for wall: Dictionary in _boundary_walls:
		_draw_world_line(manual, wall["a"], wall["b"], bounds, Color(0.0, 0.95, 0.92, 1.0), 2)
	for wall: Dictionary in _partition_walls:
		_draw_world_line(manual, wall["a"], wall["b"], bounds, Color(0.0, 0.95, 0.92, 1.0), 2)
	_draw_world_line(manual, Vector2(5.40, 1.80), Vector2(5.40, 3.00), bounds, Color(0.2, 0.75, 1.0, 1.0), 3)
	for center: Vector2 in _column_centers():
		var pixel := _world_to_overlay(center, bounds)
		for offset_y in range(-5, 6):
			for offset_x in range(-5, 6):
				var target := pixel + Vector2i(offset_x, offset_y)
				if target.x >= 0 and target.y >= 0 and target.x < 1024 and target.y < 1024:
					manual.set_pixelv(target, Color(0.18, 0.12, 0.05, 1.0))
	var comparison := Image.create(2048, 1024, false, Image.FORMAT_RGBA8)
	comparison.blit_rect(source, Rect2i(0, 0, 1024, 1024), Vector2i.ZERO)
	comparison.blit_rect(manual, Rect2i(0, 0, 1024, 1024), Vector2i(1024, 0))
	var save_error := comparison.save_png(output_path)
	if save_error != OK:
		push_error("Sector04 overlay failed: %s" % error_string(save_error))
	else:
		print("SECTOR04_MANUAL_CAPTURE: %s" % output_path)


func _point_on_manual_floor(point: Vector2) -> bool:
	for shape: PackedVector2Array in _floor_shapes:
		if Geometry2D.is_point_in_polygon(point, shape):
			return true
	return false


func _draw_world_line(image: Image, a: Vector2, b: Vector2, bounds: Rect2, color: Color, thickness: int) -> void:
	var start := _world_to_overlay(a, bounds)
	var finish := _world_to_overlay(b, bounds)
	var delta := finish - start
	var steps := maxi(absi(delta.x), absi(delta.y))
	for step in steps + 1:
		var amount := float(step) / float(maxi(steps, 1))
		var pixel := Vector2i(Vector2(start).lerp(Vector2(finish), amount))
		for offset_y in range(-thickness, thickness + 1):
			for offset_x in range(-thickness, thickness + 1):
				var target := pixel + Vector2i(offset_x, offset_y)
				if target.x >= 0 and target.y >= 0 and target.x < image.get_width() and target.y < image.get_height():
					image.set_pixelv(target, color)


func _world_to_overlay(point: Vector2, bounds: Rect2) -> Vector2i:
	return Vector2i(roundi((point.x - bounds.position.x) / bounds.size.x * 1023.0), roundi((bounds.end.y - point.y) / bounds.size.y * 1023.0))
