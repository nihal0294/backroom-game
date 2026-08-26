extends Node3D

## Isolated Level 0 visual foundation. It deliberately does not read or bake the
## master trace, and therefore cannot alter Sector001/Sector002 topology.

const CEILING_Y := 3.0
const WALL_THICKNESS := 0.20
const FIXTURE_Y := 2.982

const FLOOR_MATERIAL: Material = preload("res://resources/materials/level_0/golden/golden_carpet.tres")
const WALL_MATERIAL: Material = preload("res://resources/materials/level_0/golden/golden_wall.tres")
const CEILING_MATERIAL: Material = preload("res://resources/materials/level_0/golden/golden_ceiling.tres")
const FIXTURE_HOUSING_MATERIAL: Material = preload("res://resources/materials/level_0/golden/golden_fixture_housing.tres")
const FIXTURE_PANEL_MATERIAL: Material = preload("res://resources/materials/level_0/golden/golden_fixture_panel.tres")

const FLOOR_RECTS := [
	Rect2(-5.0, -5.0, 10.0, 8.0),
	Rect2(-1.5, 3.0, 3.0, 11.0),
	Rect2(-1.5, 14.0, 9.5, 3.0),
]

# Each outward vector points away from the walkable footprint. Wall thickness
# therefore grows outside the intended clear dimensions.
const WALL_SEGMENTS := [
	{"a": Vector2(-5.0, -5.0), "b": Vector2(5.0, -5.0), "out": Vector2(0.0, -1.0)},
	{"a": Vector2(5.0, -5.0), "b": Vector2(5.0, 3.0), "out": Vector2(1.0, 0.0)},
	{"a": Vector2(5.0, 3.0), "b": Vector2(1.5, 3.0), "out": Vector2(0.0, 1.0), "cap_end": true},
	{"a": Vector2(-1.5, 3.0), "b": Vector2(-5.0, 3.0), "out": Vector2(0.0, 1.0), "cap_start": true},
	{"a": Vector2(-5.0, 3.0), "b": Vector2(-5.0, -5.0), "out": Vector2(-1.0, 0.0)},
	{"a": Vector2(-1.5, 3.0), "b": Vector2(-1.5, 17.0), "out": Vector2(-1.0, 0.0)},
	{"a": Vector2(1.5, 3.0), "b": Vector2(1.5, 14.0), "out": Vector2(1.0, 0.0)},
	{"a": Vector2(1.5, 14.0), "b": Vector2(8.0, 14.0), "out": Vector2(0.0, -1.0)},
	{"a": Vector2(8.0, 14.0), "b": Vector2(8.0, 17.0), "out": Vector2(1.0, 0.0)},
	{"a": Vector2(8.0, 17.0), "b": Vector2(-1.5, 17.0), "out": Vector2(0.0, 1.0)},
]

const FIXTURES := [
	{"position": Vector3(-2.5, FIXTURE_Y, -0.8), "yaw": 0.0},
	{"position": Vector3(2.5, FIXTURE_Y, -0.8), "yaw": 0.0},
	{"position": Vector3(0.0, FIXTURE_Y, 4.8), "yaw": PI * 0.5},
	{"position": Vector3(0.0, FIXTURE_Y, 8.6), "yaw": PI * 0.5},
	{"position": Vector3(0.0, FIXTURE_Y, 12.4), "yaw": PI * 0.5},
	{"position": Vector3(2.4, FIXTURE_Y, 15.5), "yaw": 0.0},
	{"position": Vector3(5.8, FIXTURE_Y, 15.5), "yaw": 0.0},
]

const CAPTURE_SHOTS := [
	{"name": "normal_room", "position": Vector3(0.0, 1.62, -3.8), "target": Vector3(0.0, 1.42, 1.0), "fov": 69.0},
	{"name": "corridor", "position": Vector3(0.0, 1.62, 4.0), "target": Vector3(0.0, 1.48, 12.8), "fov": 68.0},
	{"name": "corner", "position": Vector3(0.0, 1.62, 11.6), "target": Vector3(4.6, 1.48, 15.5), "fov": 70.0},
	{"name": "doorway", "position": Vector3(1.8, 1.62, -0.2), "target": Vector3(0.0, 1.48, 4.2), "fov": 64.0},
	{"name": "floor_closeup", "position": Vector3(1.6, 1.15, -2.0), "target": Vector3(1.0, 0.0, -0.35), "fov": 58.0},
	{"name": "wall_closeup", "position": Vector3(-2.2, 1.55, -1.6), "target": Vector3(-4.96, 1.45, -0.7), "fov": 52.0},
	{"name": "ceiling_fluorescent_closeup", "position": Vector3(0.0, 1.34, -2.1), "target": Vector3(-0.8, 2.97, -0.8), "fov": 58.0},
]

@onready var floor_mesh_instance: MeshInstance3D = %FloorVisual
@onready var wall_mesh_instance: MeshInstance3D = %WallVisual
@onready var ceiling_mesh_instance: MeshInstance3D = %CeilingVisual
@onready var fixture_instances: MultiMeshInstance3D = %FluorescentFixtures
@onready var floor_collision: CollisionShape3D = %FloorCollision
@onready var wall_collision: CollisionShape3D = %WallCollision
@onready var camera: Camera3D = %Camera3D


func _ready() -> void:
	_build_floor()
	_build_ceiling()
	_build_walls()
	_build_fixtures()
	print("GOLDEN_ROOM: 3 visual ArrayMeshes, 1 fixture MultiMesh, 2 aggregated collision shapes, 3 sparse lights")
	if OS.get_environment("LEVEL0_GOLDEN_CAPTURE") == "1":
		await get_tree().process_frame
		await _capture_all()


func _build_floor() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var collision_faces := PackedVector3Array()
	for rect in FLOOR_RECTS:
		var x0: float = rect.position.x
		var z0: float = rect.position.y
		var x1: float = rect.end.x
		var z1: float = rect.end.y
		var a := Vector3(x0, 0.0, z0)
		var b := Vector3(x1, 0.0, z0)
		var c := Vector3(x1, 0.0, z1)
		var d := Vector3(x0, 0.0, z1)
		_add_quad(surface, a, b, c, d, Vector3.UP, Vector2(x0, z0), Vector2(x1, z0), Vector2(x1, z1), Vector2(x0, z1))
		_append_quad_faces(collision_faces, a, b, c, d)
	var mesh := surface.commit()
	mesh.surface_set_material(0, FLOOR_MATERIAL)
	floor_mesh_instance.mesh = mesh
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(collision_faces)
	shape.backface_collision = true
	floor_collision.shape = shape


func _build_ceiling() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	for rect in FLOOR_RECTS:
		var x0: float = rect.position.x
		var z0: float = rect.position.y
		var x1: float = rect.end.x
		var z1: float = rect.end.y
		_add_quad(
			surface,
			Vector3(x0, CEILING_Y, z0), Vector3(x1, CEILING_Y, z0),
			Vector3(x1, CEILING_Y, z1), Vector3(x0, CEILING_Y, z1),
			Vector3.DOWN,
			Vector2(x0, z0), Vector2(x1, z0), Vector2(x1, z1), Vector2(x0, z1)
		)
	var mesh := surface.commit()
	mesh.surface_set_material(0, CEILING_MATERIAL)
	ceiling_mesh_instance.mesh = mesh


func _build_walls() -> void:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var collision_faces := PackedVector3Array()
	for segment in WALL_SEGMENTS:
		var a: Vector2 = segment.a
		var b: Vector2 = segment.b
		var outward: Vector2 = segment.out
		var tangent := (b - a).normalized()
		var inward_normal := Vector3(-outward.x, 0.0, -outward.y)
		var a0 := Vector3(a.x, 0.0, a.y)
		var b0 := Vector3(b.x, 0.0, b.y)
		var b1 := Vector3(b.x, CEILING_Y, b.y)
		var a1 := Vector3(a.x, CEILING_Y, a.y)
		var segment_length := a.distance_to(b)
		_add_quad(surface, a0, b0, b1, a1, inward_normal, Vector2(0.0, 0.0), Vector2(segment_length, 0.0), Vector2(segment_length, CEILING_Y), Vector2(0.0, CEILING_Y))
		var offset := Vector3(outward.x, 0.0, outward.y) * WALL_THICKNESS
		var ao := a0 + offset
		var bo := b0 + offset
		var bo1 := b1 + offset
		var ao1 := a1 + offset
		_add_quad(surface, bo, ao, ao1, bo1, Vector3(outward.x, 0.0, outward.y), Vector2(0.0, 0.0), Vector2(segment_length, 0.0), Vector2(segment_length, CEILING_Y), Vector2(0.0, CEILING_Y))
		_append_quad_faces(collision_faces, a0, b0, b1, a1)
		_append_quad_faces(collision_faces, bo, ao, ao1, bo1)
		_append_quad_faces(collision_faces, ao, a0, a1, ao1)
		_append_quad_faces(collision_faces, b0, bo, bo1, b1)
		if bool(segment.get("cap_start", false)):
			_add_quad(surface, ao, a0, a1, ao1, Vector3(-tangent.x, 0.0, -tangent.y), Vector2(0.0, 0.0), Vector2(WALL_THICKNESS, 0.0), Vector2(WALL_THICKNESS, CEILING_Y), Vector2(0.0, CEILING_Y))
		if bool(segment.get("cap_end", false)):
			_add_quad(surface, b0, bo, bo1, b1, Vector3(tangent.x, 0.0, tangent.y), Vector2(0.0, 0.0), Vector2(WALL_THICKNESS, 0.0), Vector2(WALL_THICKNESS, CEILING_Y), Vector2(0.0, CEILING_Y))
	var mesh := surface.commit()
	mesh.surface_set_material(0, WALL_MATERIAL)
	wall_mesh_instance.mesh = mesh
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(collision_faces)
	shape.backface_collision = true
	wall_collision.shape = shape


func _build_fixtures() -> void:
	var fixture_mesh := ArrayMesh.new()
	var housing := SurfaceTool.new()
	housing.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(housing, Vector3(-0.6, 0.0, -0.3), Vector3(0.6, 0.0, -0.3), Vector3(0.6, 0.0, 0.3), Vector3(-0.6, 0.0, 0.3), Vector3.DOWN, Vector2.ZERO, Vector2.RIGHT, Vector2.ONE, Vector2.DOWN)
	housing.commit(fixture_mesh)
	var panel := SurfaceTool.new()
	panel.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(panel, Vector3(-0.54, -0.004, -0.24), Vector3(0.54, -0.004, -0.24), Vector3(0.54, -0.004, 0.24), Vector3(-0.54, -0.004, 0.24), Vector3.DOWN, Vector2.ZERO, Vector2.RIGHT, Vector2.ONE, Vector2.DOWN)
	panel.commit(fixture_mesh)
	fixture_mesh.surface_set_material(0, FIXTURE_HOUSING_MATERIAL)
	fixture_mesh.surface_set_material(1, FIXTURE_PANEL_MATERIAL)
	var multimesh := MultiMesh.new()
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.mesh = fixture_mesh
	multimesh.instance_count = FIXTURES.size()
	for index in FIXTURES.size():
		var fixture: Dictionary = FIXTURES[index]
		var basis := Basis(Vector3.UP, float(fixture.yaw))
		multimesh.set_instance_transform(index, Transform3D(basis, fixture.position))
	fixture_instances.multimesh = multimesh


func _add_quad(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, d: Vector3, normal: Vector3, uv_a: Vector2, uv_b: Vector2, uv_c: Vector2, uv_d: Vector2) -> void:
	_add_vertex(surface, a, normal, uv_a)
	_add_vertex(surface, b, normal, uv_b)
	_add_vertex(surface, c, normal, uv_c)
	_add_vertex(surface, a, normal, uv_a)
	_add_vertex(surface, c, normal, uv_c)
	_add_vertex(surface, d, normal, uv_d)


func _add_vertex(surface: SurfaceTool, vertex: Vector3, normal: Vector3, uv: Vector2) -> void:
	surface.set_normal(normal)
	surface.set_uv(uv)
	surface.add_vertex(vertex)


func _append_quad_faces(faces: PackedVector3Array, a: Vector3, b: Vector3, c: Vector3, d: Vector3) -> void:
	faces.push_back(a)
	faces.push_back(b)
	faces.push_back(c)
	faces.push_back(a)
	faces.push_back(c)
	faces.push_back(d)


func _capture_all() -> void:
	var output_dir := ProjectSettings.globalize_path("res://captures")
	var directory_error := DirAccess.make_dir_recursive_absolute(output_dir)
	if directory_error != OK:
		push_error("Golden room could not create capture directory: %s" % error_string(directory_error))
		get_tree().quit(1)
		return
	for shot in CAPTURE_SHOTS:
		camera.fov = float(shot.fov)
		camera.global_position = shot.position
		camera.look_at(shot.target, Vector3.UP)
		await get_tree().process_frame
		await RenderingServer.frame_post_draw
		var image := get_viewport().get_texture().get_image()
		var output_path: String = output_dir.path_join("level_0_golden_%s.png" % shot.name)
		var save_error := image.save_png(output_path)
		if save_error != OK:
			push_error("Golden room capture failed: %s (%s)" % [output_path, error_string(save_error)])
		else:
			print("GOLDEN_CAPTURE: %s" % output_path)
	get_tree().quit()
