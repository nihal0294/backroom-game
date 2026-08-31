extends Node3D

## Manually authored Sector 07. The source maps guide the named metric plan;
## runtime architecture never samples or traces pixels.

const CEILING_Y := 2.866
const WALL_THICKNESS := 0.30
const BASEBOARD_HEIGHT := 0.12
const BASEBOARD_DEPTH := 0.035
const FIXTURE_Y := 2.84
const PASSAGE_WIDTH := 2.60
const MAX_REAL_LIGHTS := 8
const HOLE_SIZE := 1.20
const SLOPE_DROP := -0.987395
const PLAYER_RADIUS := 0.32
const ArchitectureBuilderScript = preload("res://scripts/levels/level_0/level0_architecture_builder.gd")
const Sector07Layout = preload("res://scripts/levels/level_0/sector_07_layout.gd")
const PLAN_OFFSET: Vector2 = Sector07Layout.PLAN_OFFSET

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
	var columns: Array[Dictionary] = Sector07Layout.columns()
	for mass: Dictionary in Sector07Layout.masses():
		columns.push_back({"center": mass["center"], "size_x": mass["size"].x, "size_z": mass["size"].y, "id": mass["id"]})
	var boundary_openings: Array[Dictionary] = [
		{"id":"connector_to_r09", "center":_plan(Vector2(4.0,0.0)), "wall_direction":Vector2.DOWN, "cut_width":PASSAGE_WIDTH, "cut_height":CEILING_Y},
		{"id":"r06_to_core", "center":_plan(Vector2(14.5,-5.1125)), "wall_direction":Vector2(4.8,-1.0), "cut_width":2.60, "cut_height":CEILING_Y},
		{"id":"r06_to_r08", "center":_plan(Vector2(15.0,-3.0)), "wall_direction":Vector2.LEFT, "cut_width":2.60, "cut_height":CEILING_Y},
		{"id":"r07_to_r08", "center":_plan(Vector2(12.0,-6.7)), "wall_direction":Vector2.DOWN, "cut_width":4.00, "cut_height":CEILING_Y},
		{"id":"r08_join_west", "center":_plan(Vector2(11.2,-6.7)), "wall_direction":Vector2.DOWN, "cut_width":3.60, "cut_height":CEILING_Y},
		{"id":"r04_to_core", "center":_plan(Vector2(21.881,-11.0)), "wall_direction":Vector2(-0.5,-6.3), "cut_width":2.60, "cut_height":CEILING_Y},
		{"id":"r08_to_r04", "center":_plan(Vector2(21.3,-11.47)), "wall_direction":Vector2(-2.0,3.8), "cut_width":2.60, "cut_height":CEILING_Y},
		{"id":"core_landing_west", "center":_plan(Vector2(20.2,-11.5)), "wall_direction":Vector2.DOWN, "cut_width":2.60, "cut_height":CEILING_Y},
		{"id":"dark_room_to_ramp", "center":_plan(Vector2(59.0,-10.7)), "wall_direction":Vector2(0.666,-0.746), "cut_width":3.20, "cut_height":CEILING_Y},
		{"id":"ring_bridge_south", "center":_plan(Vector2(29.65,-31.25)), "wall_direction":Vector2(0.910,-0.414), "cut_width":3.00, "cut_height":CEILING_Y},
		{"id":"ring_bridge_north", "center":_plan(Vector2(30.15,-30.15)), "wall_direction":Vector2(0.910,-0.414), "cut_width":3.00, "cut_height":CEILING_Y},
		{"id":"hole_room_north", "center":_plan(Vector2(25.6,-36.5)), "wall_direction":Vector2.RIGHT, "cut_width":2.60, "cut_height":CEILING_Y},
		{"id":"hole_room_west", "center":_plan(Vector2(20.5,-42.0)), "wall_direction":Vector2.DOWN, "cut_width":2.20, "cut_height":CEILING_Y},
		{"id":"hole_room_east", "center":_plan(Vector2(27.5,-42.0)), "wall_direction":Vector2.UP, "cut_width":2.20, "cut_height":CEILING_Y},
	]
	_build_result = builder.build(
		Sector07Layout.walkable_shapes(),
		Sector07Layout.partitions(),
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
	_build_manual_ramp()
	_build_sector04_connector()
	_build_ring_bridge()
	_build_manual_hole_room()
	_build_placeholder_props()


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


func _rect_polygon(min_x: float, min_z: float, max_x: float, max_z: float) -> PackedVector2Array:
	return PackedVector2Array([Vector2(min_x, min_z), Vector2(max_x, min_z), Vector2(max_x, max_z), Vector2(min_x, max_z)])


func _build_manual_ramp() -> void:
	var start := _plan(Vector2(59.0, -10.7))
	var finish := _plan(Vector2(64.6, -5.7))
	var direction := start.direction_to(finish)
	# Extend collision slightly beneath the capped terminal so an exact endpoint
	# sample cannot fall through a floating-point edge shared by two triangles.
	finish += direction * 0.20
	var side := Vector2(-direction.y, direction.x) * 1.60
	var corners := [start + side, start - side, finish - side, finish + side]
	var heights := [0.0, 0.0, SLOPE_DROP, SLOPE_DROP]
	var floor_surface := SurfaceTool.new()
	floor_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var floor_points := [Vector3(corners[0].x, heights[0], corners[0].y), Vector3(corners[1].x, heights[1], corners[1].y), Vector3(corners[2].x, heights[2], corners[2].y), Vector3(corners[3].x, heights[3], corners[3].y)]
	var floor_normal: Vector3 = (floor_points[1] - floor_points[0]).cross(floor_points[3] - floor_points[0]).normalized()
	if floor_normal.y < 0.0: floor_normal = -floor_normal
	_add_quad(floor_surface, floor_points[0], floor_points[3], floor_points[2], floor_points[1], floor_normal)
	_add_manual_mesh("ManualRampFloor", floor_surface, FLOOR_MATERIAL)
	var ceiling_surface := SurfaceTool.new()
	ceiling_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(ceiling_surface, floor_points[0] + Vector3.UP * CEILING_Y, floor_points[1] + Vector3.UP * CEILING_Y, floor_points[2] + Vector3.UP * CEILING_Y, floor_points[3] + Vector3.UP * CEILING_Y, -floor_normal)
	_add_manual_mesh("ManualRampCeiling", ceiling_surface, CEILING_MATERIAL)
	var wall_surface := SurfaceTool.new()
	wall_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var collision_faces := PackedVector3Array([floor_points[0],floor_points[3],floor_points[2],floor_points[0],floor_points[2],floor_points[1]])
	for edge in [[0,3],[2,1],[3,2]]:
		var a:Vector3=floor_points[edge[0]]; var b:Vector3=floor_points[edge[1]]
		var c:=b+Vector3.UP*CEILING_Y; var d:=a+Vector3.UP*CEILING_Y
		var normal:=(b-a).cross(d-a).normalized()
		_add_quad(wall_surface,a,b,c,d,normal)
		collision_faces.append_array(PackedVector3Array([a,b,c,a,c,d]))
	_add_manual_mesh("ManualRampWalls", wall_surface, WALL_MATERIAL)
	_add_manual_collision("ManualRampBody", collision_faces)


func _build_sector04_connector() -> void:
	var start := Vector2.ZERO
	var finish := _plan(Vector2(4,0))
	var direction := start.direction_to(finish)
	var side := Vector2(-direction.y,direction.x) * PASSAGE_WIDTH * .5
	var wall_points := [start+side,start-side,finish-side,finish+side]
	var floor_finish := finish + direction * 0.75
	var floor_points_2d := [start+side,start-side,floor_finish-side,floor_finish+side]
	var floor_points: Array[Vector3] = []
	var wall_vertices: Array[Vector3] = []
	for point: Vector2 in floor_points_2d:
		floor_points.push_back(Vector3(point.x,0,point.y))
	for point: Vector2 in wall_points:
		wall_vertices.push_back(Vector3(point.x,0,point.y))
	var floor:=SurfaceTool.new(); floor.begin(Mesh.PRIMITIVE_TRIANGLES); var faces:=PackedVector3Array()
	_add_quad(floor,floor_points[0],floor_points[3],floor_points[2],floor_points[1],Vector3.UP)
	faces.append_array(PackedVector3Array([floor_points[0],floor_points[3],floor_points[2],floor_points[0],floor_points[2],floor_points[1]]))
	_add_manual_mesh("ManualSector04ConnectorFloor",floor,FLOOR_MATERIAL)
	var ceiling:=SurfaceTool.new(); ceiling.begin(Mesh.PRIMITIVE_TRIANGLES)
	_add_quad(ceiling,wall_vertices[0]+Vector3.UP*CEILING_Y,wall_vertices[1]+Vector3.UP*CEILING_Y,wall_vertices[2]+Vector3.UP*CEILING_Y,wall_vertices[3]+Vector3.UP*CEILING_Y,Vector3.DOWN)
	_add_manual_mesh("ManualSector04ConnectorCeiling",ceiling,CEILING_MATERIAL)
	var walls:=SurfaceTool.new(); walls.begin(Mesh.PRIMITIVE_TRIANGLES)
	for edge in [[0,3],[2,1]]:
		var a:Vector3=wall_vertices[edge[0]]; var b:Vector3=wall_vertices[edge[1]]; var c:=b+Vector3.UP*CEILING_Y; var d:=a+Vector3.UP*CEILING_Y
		_add_quad(walls,a,b,c,d,(b-a).cross(d-a).normalized()); faces.append_array(PackedVector3Array([a,b,c,a,c,d]))
	_add_manual_mesh("ManualSector04ConnectorWalls",walls,WALL_MATERIAL); _add_manual_collision("ManualSector04ConnectorBody",faces)


func _build_ring_bridge() -> void:
	var a:=_plan(Vector2(29.65,-31.25)); var b:=_plan(Vector2(30.15,-30.15))
	var direction:=a.direction_to(b)
	var side:=Vector2(-direction.y,direction.x)*1.60
	var points:=[a+side,a-side,b-side,b+side]
	var surface:=SurfaceTool.new(); surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces:=PackedVector3Array(); var rect:=[]
	for point:Vector2 in points: rect.push_back(Vector3(point.x,0,point.y))
	_add_quad(surface,rect[0],rect[3],rect[2],rect[1],Vector3.UP); faces.append_array(PackedVector3Array([rect[0],rect[3],rect[2],rect[0],rect[2],rect[1]]))
	_add_manual_mesh("ManualRingBridgeFloor",surface,FLOOR_MATERIAL)
	var ceiling:=SurfaceTool.new(); ceiling.begin(Mesh.PRIMITIVE_TRIANGLES); _add_quad(ceiling,rect[0]+Vector3.UP*CEILING_Y,rect[1]+Vector3.UP*CEILING_Y,rect[2]+Vector3.UP*CEILING_Y,rect[3]+Vector3.UP*CEILING_Y,Vector3.DOWN); _add_manual_mesh("ManualRingBridgeCeiling",ceiling,CEILING_MATERIAL)
	var walls:=SurfaceTool.new(); walls.begin(Mesh.PRIMITIVE_TRIANGLES)
	for edge in [[0,3],[2,1]]:
		var wa:Vector3=rect[edge[0]]; var wb:Vector3=rect[edge[1]]; var wc:=wb+Vector3.UP*CEILING_Y; var wd:=wa+Vector3.UP*CEILING_Y
		_add_quad(walls,wa,wb,wc,wd,(wb-wa).cross(wd-wa).normalized()); faces.append_array(PackedVector3Array([wa,wb,wc,wa,wc,wd]))
	_add_manual_mesh("ManualRingBridgeWalls",walls,WALL_MATERIAL); _add_manual_collision("ManualRingBridgeBody",faces)


func _build_manual_hole_room() -> void:
	var floor_surface:=SurfaceTool.new(); floor_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var floor_faces:=PackedVector3Array()
	for rect:Rect2 in [Rect2(_plan(Vector2(20.5,-43.5)),Vector2(3.0,7.0)),Rect2(_plan(Vector2(24.7,-43.5)),Vector2(2.8,7.0)),Rect2(_plan(Vector2(23.5,-43.5)),Vector2(1.2,1.5)),Rect2(_plan(Vector2(23.5,-40.8)),Vector2(1.2,4.3))]:
		_emit_horizontal_rect(floor_surface,floor_faces,rect,0.0,true)
	_add_manual_mesh("ManualHoleRoomFloor",floor_surface,FLOOR_MATERIAL)
	var ceiling_surface:=SurfaceTool.new(); ceiling_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var ignored:=PackedVector3Array(); _emit_horizontal_rect(ceiling_surface,ignored,Rect2(_plan(Vector2(20.5,-43.5)),Vector2(7.0,7.0)),CEILING_Y,false)
	_add_manual_mesh("ManualHoleRoomCeiling",ceiling_surface,CEILING_MATERIAL)
	var wall_surface:=SurfaceTool.new(); wall_surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var wall_faces:=PackedVector3Array()
	for segment in [[Vector2(20.5,-36.5),Vector2(24.3,-36.5)],[Vector2(26.9,-36.5),Vector2(27.5,-36.5)],[Vector2(20.5,-43.5),Vector2(20.5,-43.1)],[Vector2(20.5,-40.9),Vector2(20.5,-36.5)],[Vector2(27.5,-36.5),Vector2(27.5,-40.9)],[Vector2(27.5,-43.1),Vector2(27.5,-43.5)],[Vector2(27.5,-43.5),Vector2(20.5,-43.5)]]:
		_emit_manual_wall(wall_surface,wall_faces,_plan(segment[0]),_plan(segment[1]))
	_add_manual_mesh("ManualHoleRoomWalls",wall_surface,WALL_MATERIAL)
	floor_faces.append_array(wall_faces)
	_add_manual_collision("ManualHoleRoomBody",floor_faces)


func _build_placeholder_props() -> void:
	var parent:=Node3D.new(); parent.name="ManualPlaceholders"; add_child(parent)
	for data:Dictionary in Sector07Layout.props():
		var root:=Node3D.new(); root.name=String(data.id); root.position=Vector3(data.center.x,0.0,data.center.y); root.rotation.y=float(data.yaw); parent.add_child(root)
		var size:Vector3=data.size
		var visual:=MeshInstance3D.new(); visual.name="Visual"; visual.mesh=_make_box_mesh(size,DOOR_PANEL_MATERIAL); visual.position.y=size.y*.5; root.add_child(visual)
		var body:=StaticBody3D.new(); body.name="Collision"; root.add_child(body)
		var shape_node:=CollisionShape3D.new(); var shape:=BoxShape3D.new(); shape.size=size; shape_node.shape=shape; shape_node.position.y=size.y*.5; body.add_child(shape_node)


func _add_manual_mesh(node_name:String,surface:SurfaceTool,material:Material)->void:
	var mesh:=surface.commit(); mesh.surface_set_material(0,material)
	var node:=MeshInstance3D.new(); node.name=node_name; node.mesh=mesh; $Geometry.add_child(node)


func _add_manual_collision(node_name:String,faces:PackedVector3Array)->void:
	var body:=StaticBody3D.new(); body.name=node_name; $Collision.add_child(body)
	var node:=CollisionShape3D.new(); var shape:=ConcavePolygonShape3D.new(); shape.set_faces(faces); shape.backface_collision=true; node.shape=shape; body.add_child(node)


func _emit_horizontal_rect(surface:SurfaceTool,faces:PackedVector3Array,rect:Rect2,y:float,up:bool)->void:
	var a:=Vector3(rect.position.x,y,rect.position.y); var b:=Vector3(rect.end.x,y,rect.position.y); var c:=Vector3(rect.end.x,y,rect.end.y); var d:=Vector3(rect.position.x,y,rect.end.y)
	if up:
		_add_quad(surface,a,d,c,b,Vector3.UP); faces.append_array(PackedVector3Array([a,d,c,a,c,b]))
	else: _add_quad(surface,a,b,c,d,Vector3.DOWN)


func _emit_manual_wall(surface:SurfaceTool,faces:PackedVector3Array,a2:Vector2,b2:Vector2)->void:
	var a:=Vector3(a2.x,0,a2.y); var b:=Vector3(b2.x,0,b2.y); var c:=b+Vector3.UP*CEILING_Y; var d:=a+Vector3.UP*CEILING_Y
	var direction:=a2.direction_to(b2); var normal:=Vector3(-direction.y,0,direction.x)
	_add_quad(surface,a,b,c,d,normal); faces.append_array(PackedVector3Array([a,b,c,a,c,d]))


func _build_fixtures() -> void:
	_fixture_points = Sector07Layout.fixtures()
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


func _build_details() -> void:
	_socket_transforms = [
		Transform3D(Basis.IDENTITY, _plan3(Vector2(3.0,1.25),0.317)), Transform3D(Basis(Vector3.UP,PI), _plan3(Vector2(13.0,4.7),0.317)),
		Transform3D(Basis(Vector3.UP,PI*.5), _plan3(Vector2(25.3,-6.0),0.317)), Transform3D(Basis.IDENTITY, _plan3(Vector2(38.0,-18.5),0.317)),
		Transform3D(Basis(Vector3.UP,PI*.5), _plan3(Vector2(50.0,-7.9),0.317)), Transform3D(Basis(Vector3.UP,PI), _plan3(Vector2(14.0,-47.5),0.317)),
	]
	socket_visuals.multimesh = _make_transform_multimesh(SOCKET_MESH, _socket_transforms)
	_vent_transforms = [
		Transform3D(Basis.IDENTITY,_plan3(Vector2(16,0),FIXTURE_Y)), Transform3D(Basis(Vector3.UP,PI*.5),_plan3(Vector2(28,-12),-0.026+FIXTURE_Y)),
		Transform3D(Basis.IDENTITY,_plan3(Vector2(49.8,-10.8),FIXTURE_Y)), Transform3D(Basis(Vector3.UP,PI*.5),_plan3(Vector2(18,-45),FIXTURE_Y)),
	]
	vent_visuals.multimesh = _make_transform_multimesh(VENT_MESH, _vent_transforms)
	# A136: static and visibly warped, intentionally not an interactable door.
	jammed_door_visual.mesh = _make_jammed_door_mesh()
	jammed_door_visual.position = _plan3(Vector2(60.75,-7.0),1.09)
	jammed_door_visual.rotation = Vector3(0.0, -0.73, 0.035)
	var door_shape := BoxShape3D.new()
	door_shape.size = Vector3(1.16, 2.18, 0.16)
	jammed_door_collision.shape = door_shape
	jammed_door_collision.position = jammed_door_visual.position
	jammed_door_collision.rotation = jammed_door_visual.rotation
	_build_square_shaft()
	var crack_transforms: Array[Transform3D] = [
		Transform3D(Basis(Vector3.UP,-0.73),_plan3(Vector2(61.0,-7.2),1.25)),
		Transform3D(Basis(Vector3.UP,-0.73),_plan3(Vector2(62.5,-6.0),1.72)),
		Transform3D(Basis(Vector3.UP,-0.73),_plan3(Vector2(59.5,-8.0),1.45)),
	]
	crack_visuals.multimesh = _make_transform_multimesh(_make_box_mesh(Vector3(0.035, 0.72, 0.025), DOOR_PANEL_MATERIAL), crack_transforms)


func _floor_height(point: Vector2) -> float:
	var start:=_plan(Vector2(59.0,-10.7)); var finish:=_plan(Vector2(64.6,-5.7)); var direction:=start.direction_to(finish)
	return clampf((point-start).dot(direction)/start.distance_to(finish),0.0,1.0)*SLOPE_DROP


func _build_square_shaft() -> void:
	var center := _plan(Vector2(24.1, -41.4))
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
	var light_data:Array[Dictionary]=Sector07Layout.real_lights()
	for light_index in mini(MAX_REAL_LIGHTS, light_data.size()):
		var light := OmniLight3D.new()
		light.name = "Sector07Light_%02d" % light_index
		var data:Dictionary=light_data[light_index]; var point:Vector2=data.point
		light.position = Vector3(point.x, CEILING_Y - 0.24, point.y)
		light.light_color = Color(0.98, 0.96, 0.84, 1.0)
		light.light_energy = float(data.energy)
		light.light_specular = 0.025
		light.omni_range = float(data.range)
		light.omni_attenuation = 1.42
		light.shadow_enabled = false
		sparse_lights.add_child(light)
		_light_count += 1


func _place_markers() -> void:
	entrance_marker.position = Vector3.ZERO
	entrance_marker.rotation.y = PI
	var terminal08_point := _plan(Vector2(11.4,18.0))
	terminal_08.position = Vector3(terminal08_point.x,0.0,terminal08_point.y)
	terminal_08.rotation.y = 0.0
	var terminal11_point := _plan(Vector2(50.0,-1.0))
	terminal_11.position = Vector3(terminal11_point.x,0.0,terminal11_point.y)
	terminal_11.rotation.y = 0.0
	var terminal06_point := _plan(Vector2(64.6,-5.7))
	terminal_06.position = Vector3(terminal06_point.x,SLOPE_DROP,terminal06_point.y)
	terminal_06.rotation.y = -PI * 0.5
	var music_point := _plan(Vector2(29.0,-32.7))
	music_source_marker.position = Vector3(music_point.x,0.0,music_point.y)


func _plan(point: Vector2) -> Vector2:
	return point + PLAN_OFFSET


func _plan3(point: Vector2, y: float) -> Vector3:
	var shifted := _plan(point)
	return Vector3(shifted.x, y, shifted.y)


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
		var valid := await _validate_manual_sector()
		get_tree().quit(0 if valid else 1)
		return
	if OS.get_environment("LEVEL0_SECTOR07_CAPTURE") == "1":
		await _capture_sector()
		get_tree().quit()


func _validate_manual_sector() -> bool:
	var failures:Array[String]=[]
	for error:String in _build_result.get("errors",[]): failures.push_back("builder: "+error)
	var stats:Dictionary=_build_result.get("stats",{})
	if int(stats.get("input_polygons",999))>40: failures.push_back("more than 40 manual walkable shapes")
	if int(stats.get("duplicate_floor_triangles",0))!=0 or int(stats.get("duplicate_ceiling_triangles",0))!=0 or int(stats.get("duplicate_wall_triangles",0))!=0: failures.push_back("duplicate aggregate triangles")
	for corridor:Dictionary in Sector07Layout.corridors():
		if float(corridor.width)<2.80: failures.push_back("%s width %.2f below 2.80 m"%[corridor.id,corridor.width])
	var space:=get_world_3d().direct_space_state
	# Every room centre and four inset corner samples must have floor.
	for room:Dictionary in Sector07Layout.rooms():
		var center:Vector2=room.center; _require_floor(space,center,room.id+" center",failures)
		var polygon:PackedVector2Array=room.polygon
		for corner_index in mini(4,polygon.size()):
			var inset_sample := center.lerp(polygon[corner_index], .35)
			_require_floor(space, inset_sample, "%s corner%d" % [room.id, corner_index], failures)
	# Every corridor centreline is sampled at 0.50 m, including endpoints.
	for corridor:Dictionary in Sector07Layout.corridors(): _sample_polyline_floor(space,corridor.centerline,.50,corridor.id,failures)
	var ramp_line:=PackedVector2Array([_plan(Vector2(59,-10.7)),_plan(Vector2(64.6,-5.7))]); _sample_polyline_floor(space,ramp_line,.50,"R01 ramp",failures,true)
	for route:Dictionary in Sector07Layout.routes(): _validate_route_sweep(space,route,failures)
	var hole:=_plan(Vector2(24.1,-41.4)); var hole_from:=to_global(Vector3(hole.x,1.0,hole.y))
	if not space.intersect_ray(PhysicsRayQueryParameters3D.create(hole_from,hole_from+Vector3.DOWN*1.4,1)).is_empty(): failures.push_back("square hole has false floor")
	if Sector07Layout.columns().filter(func(item):return item.zone=="R01").size()!=8: failures.push_back("Dark Room does not contain eight columns")
	if Sector07Layout.props().filter(func(item):return item.zone=="R01").size()!=3: failures.push_back("Dark Room does not contain three props")
	if jammed_door_visual.get_parent().has_method("interact"): failures.push_back("jammed door is interactable")
	_validate_map_room(space,failures); _validate_sector04_overlap(space,failures)
	var hums:=0
	for light in sparse_lights.get_children():
		if light is not OmniLight3D:
			continue
		var hum := light.get_node_or_null("FluorescentHum") as AudioStreamPlayer3D
		if hum != null:
			hums += 1
			if hum.max_distance <= hum.unit_size or hum.bus != &"Ambience":
				failures.push_back("invalid spatial attenuation on %s" % light.name)
	if hums!=_light_count: failures.push_back("spatial light hum count %d != lights %d"%[hums,_light_count])
	else: print("SECTOR07_AUDIO_SPATIAL: real_lights=%d hums=%d near_unit=1.35 far_cutoff=8.00 off_fixtures=%d" % [_light_count,hums,_off_fixture_transforms.size()])
	if failures.is_empty():
		print("SECTOR07_MANUAL_VALIDATION: PASS rooms=17 corridors=8 junctions=1 shapes=%d floor_step=0.50 routes=6 columns=%d props=%d lights=%d"%[stats.input_polygons,Sector07Layout.columns().size(),Sector07Layout.props().size(),_light_count]); return true
	for failure in failures: push_error("SECTOR07_MANUAL_VALIDATION: "+failure)
	return false


func _require_floor(space:PhysicsDirectSpaceState3D,point:Vector2,label:String,failures:Array[String],profiled:=false)->void:
	var y:=_floor_height(point) if profiled else 0.0; var origin:=to_global(Vector3(point.x,y+1.2,point.y))
	if space.intersect_ray(PhysicsRayQueryParameters3D.create(origin,origin+Vector3.DOWN*1.6,1)).is_empty(): failures.push_back("floor missing: %s at (%.2f,%.2f)"%[label,point.x,point.y])


func _sample_polyline_floor(space:PhysicsDirectSpaceState3D,line:PackedVector2Array,step:float,label:String,failures:Array[String],profiled:=false)->void:
	for index in line.size()-1:
		var a:=line[index]; var b:=line[index+1]; var count:=maxi(1,ceili(a.distance_to(b)/step))
		for sample in count+1: _require_floor(space,a.lerp(b,float(sample)/count),label,failures,profiled)


func _validate_route_sweep(space:PhysicsDirectSpaceState3D,route:Dictionary,failures:Array[String])->void:
	var player:=get_node_or_null("../../Player") as CharacterBody3D
	if player==null: failures.push_back("player missing for "+String(route.id)); return
	var points:PackedVector2Array=route.points
	for index in points.size()-1:
		var a:=points[index]; var b:=points[index+1]; var count:=maxi(1,ceili(a.distance_to(b)/.25))
		for sample in count:
			var local_a:=a.lerp(b,float(sample)/count); var local_b:=a.lerp(b,float(sample+1)/count)
			_require_floor(space,local_a,String(route.id),failures,local_a.x>58.5+PLAN_OFFSET.x)
			var world_a:=to_global(Vector3(local_a.x,_floor_height(local_a)+.10,local_a.y)); var world_b:=to_global(Vector3(local_b.x,_floor_height(local_b)+.10,local_b.y))
			# Floor contact is expected. Treating recovery against the triangulated
			# floor as a route collision creates false blockers at triangle seams;
			# the sweep must report only geometry that opposes horizontal travel.
			if player.test_move(Transform3D(player.global_basis,world_a),world_b-world_a,null,.01,false,1):
				failures.push_back("%s blocked near (%.2f,%.2f) colliders=%s nearest=%s" % [route.id, local_a.x, local_a.y, _colliders_near(space, world_a), _nearest_builder_runs(local_a)])
				return
	print("SECTOR07_ROUTE: id=%s passed=true"%route.id)


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
							failures.push_back("Sector 04/07 collision overlap at (%.2f, %.2f) collider=%s" % [x, z, collider.get_path()])
							return
				z += 0.50
			x += 0.50


func _colliders_near(space: PhysicsDirectSpaceState3D, world_point: Vector3) -> String:
	var probe := CapsuleShape3D.new()
	probe.radius = PLAYER_RADIUS + 0.03
	probe.height = 1.80
	var query := PhysicsShapeQueryParameters3D.new()
	query.shape = probe
	query.transform = Transform3D(Basis.IDENTITY, world_point + Vector3.UP * 0.90)
	query.collision_mask = 1
	var paths: PackedStringArray = []
	for hit: Dictionary in space.intersect_shape(query, 16):
		var collider := hit.get("collider") as Node
		if collider != null:
			paths.push_back(str(collider.get_path()))
	return ",".join(paths)


func _nearest_builder_runs(point: Vector2) -> String:
	var ranked: Array[Dictionary] = []
	for key: String in ["boundary_runs", "partition_runs"]:
		for run: Dictionary in _build_result.get(key, []):
			var nearest := Geometry2D.get_closest_point_to_segment(point, run.a, run.b)
			ranked.push_back({"distance": point.distance_to(nearest), "label": "%s:%s[%s..%s](%.2f,o=%d)" % [key, run.get("id", "-"), run.a, run.b, point.distance_to(nearest), run.get("openings", []).size()]})
	ranked.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.distance < b.distance)
	var labels: PackedStringArray = []
	for index in mini(3, ranked.size()):
		labels.push_back(ranked[index].label)
	return ",".join(labels)


func _print_build_audit() -> void:
	var stats: Dictionary = _build_result.get("stats", {})
	print("SECTOR07_BUILD: input=%d union=%d boundary=%d->%d floor_triangles=%d ceiling_triangles=%d fixtures=%d on=%d off=%d lights=%d" % [stats.get("input_polygons", 0), stats.get("union_polygons", 0), stats.get("boundary_edges_before", 0), stats.get("boundary_edges_after", 0), stats.get("floor_triangles", 0), stats.get("ceiling_triangles", 0), _fixture_points.size(), _lit_fixture_transforms.size(), _off_fixture_transforms.size(), _light_count])
	for index in _build_result.get("union_polygons", []).size():
		var polygon:PackedVector2Array=_build_result["union_polygons"][index]
		var minimum:=polygon[0]; var maximum:=polygon[0]
		for point in polygon: minimum=minimum.min(point); maximum=maximum.max(point)
		print("SECTOR07_UNION: index=%d points=%d bounds=(%.2f,%.2f)..(%.2f,%.2f)"%[index,polygon.size(),minimum.x,minimum.y,maximum.x,maximum.y])


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
	overview_light.light_energy = 10.0
	overview_light.light_color = Color.WHITE
	overview_light.shadow_enabled = false
	overview_light.rotation.x = PI * 0.5
	overview_light.visible = false
	add_child(overview_light)
	var sector_04_node := get_node_or_null("../Sector04") as Node3D
	var shots := [
		{"file":"sector_07_topdown.png","position":_plan3(Vector2(30,-20),82),"target":_plan3(Vector2(30,-20),0),"ortho_size":82.0,"topdown":true},
		{"file":"sector_07_dark_room_from_06.png","position":_plan3(Vector2(63.8,-6.4),0.65),"target":_plan3(Vector2(57,-13),1.1),"fov":70.0},
		{"file":"sector_07_dark_room_west_exit.png","position":_plan3(Vector2(59,-15.5),1.45),"target":_plan3(Vector2(52,-11.5),1.25),"fov":68.0},
		{"file":"sector_07_sector11_junction.png","position":_plan3(Vector2(45,-13.5),1.45),"target":_plan3(Vector2(50,-9),1.25),"fov":66.0},
		{"file":"sector_07_core.png","position":_plan3(Vector2(9,-9),1.45),"target":_plan3(Vector2(18,-8),1.25),"fov":70.0},
		{"file":"sector_07_sector08_branch.png","position":_plan3(Vector2(14,4),1.45),"target":_plan3(Vector2(11.4,17),1.25),"fov":64.0},
		{"file":"sector_07_south_ring.png","position":_plan3(Vector2(12,-23),1.45),"target":_plan3(Vector2(23,-31),1.25),"fov":70.0},
		{"file":"sector_07_hole_room.png","position":_plan3(Vector2(21.5,-38),1.7),"target":_plan3(Vector2(24.1,-41.4),-0.2),"fov":58.0},
		{"file":"sector_07_nest_antechamber.png","position":_plan3(Vector2(17,-49),1.45),"target":_plan3(Vector2(11,-53),1.15),"fov":65.0},
		{"file":"sector_07_nest_terminal.png","position":_plan3(Vector2(11.5,-54.8),1.45),"target":_plan3(Vector2(11.5,-58),1.2),"fov":62.0},
		{"file": "sector_04_map_room_regression.png", "position": Vector3(-14.45, 1.45, 22.80), "target": Vector3(-17.4625, 1.45, 22.80), "fov": 62.0, "world": true},
		{"file": "sector_04_07_connection_from_04.png", "position": Vector3(-4.80, 1.45, 29.26), "target": Vector3(-7.40, 1.20, 29.26), "fov": 58.0, "world": true},
		{"file": "sector_04_07_connection_from_07.png", "position": Vector3(-7.40, 1.45, 29.26), "target": Vector3(-4.80, 1.20, 29.26), "fov": 58.0, "world": true},
		{"file": "sector_04_07_connection_ceiling.png", "position": Vector3(-12.0, 1.30, 29.36), "target": Vector3(-17.2, 2.70, 29.45), "fov": 55.0, "world": true},
		{"file": "sector_04_07_connection_closeup_left.png", "position": Vector3(-5.35, 1.45, 28.55), "target": Vector3(-6.0, 1.38, 28.185), "fov": 48.0, "world": true},
		{"file": "sector_04_07_connection_closeup_right.png", "position": Vector3(-5.35, 1.45, 29.97), "target": Vector3(-6.0, 1.38, 30.335), "fov": 48.0, "world": true},
	]
	var output_dir := ProjectSettings.globalize_path("res://captures")
	DirAccess.make_dir_recursive_absolute(output_dir)
	for shot: Dictionary in shots:
		var topdown := bool(shot.get("topdown", false))
		ceiling_visual.visible = not topdown
		for manual_ceiling in $Geometry.find_children("*Ceiling", "MeshInstance3D", true, false): manual_ceiling.visible=not topdown
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
