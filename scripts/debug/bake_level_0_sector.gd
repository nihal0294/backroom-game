extends SceneTree
## Headless baker: bake.json -> ArrayMesh/ConcavePolygonShape3D/MultiMesh .res
## Run: godot --headless --path . -s res://scripts/debug/bake_level_0_sector.gd

var BAKE := "res://resources/generated/level_0/sector_001/bake.json"
var OUT := "res://resources/generated/level_0/sector_001/"


func _init() -> void:
	var env_bake := OS.get_environment("LEVEL0_BAKE_JSON")
	var env_out := OS.get_environment("LEVEL0_BAKE_OUT")
	if env_bake != "":
		BAKE = env_bake
	if env_out != "":
		OUT = env_out
	print("Level0 bake src ", BAKE, " out ", OUT)
	var err := _bake()
	if err != OK:
		push_error("Level0 bake failed: %s" % err)
		quit(1)
	else:
		print("Level0 bake: ok")
		quit(0)


func _bake() -> Error:
	if not FileAccess.file_exists(BAKE):
		push_error("missing bake.json")
		return ERR_FILE_NOT_FOUND
	var txt := FileAccess.get_file_as_string(BAKE)
	var data: Variant = JSON.parse_string(txt)
	if typeof(data) != TYPE_DICTIONARY:
		push_error("bake.json parse failed")
		return ERR_PARSE_ERROR
	DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(OUT))

	var chunks: Array = data["chunks"]
	for chunk in chunks:
		var cid: String = chunk["id"]
		var visual: Dictionary = chunk["visual"]
		for mat_key in visual.keys():
			var boxes: Array = visual[mat_key]
			var mesh := _mesh_from_boxes(boxes)
			if mesh.get_surface_count() == 0:
				continue
			var path := "%s%s_%s.res" % [OUT, cid, mat_key]
			var err := ResourceSaver.save(mesh, path)
			if err != OK:
				push_error("save mesh %s -> %s" % [path, err])
				return err
			print("saved mesh ", path, " verts ", mesh.surface_get_array_len(0))
		for col_name in ["col_floor", "col_walls", "col_stairs"]:
			var col_boxes: Array = chunk[col_name]
			if col_boxes.is_empty():
				continue
			var shape: ConcavePolygonShape3D
			if col_name == "col_floor":
				shape = _shape_from_floor_boxes(col_boxes)
			elif col_name == "col_stairs":
				shape = _shape_from_stair_col(col_boxes)
			else:
				shape = _shape_from_boxes(col_boxes)
			var path := "%s%s_%s.res" % [OUT, cid, col_name]
			var err := ResourceSaver.save(shape, path)
			if err != OK:
				push_error("save shape %s -> %s" % [path, err])
				return err
			print("saved shape ", path, " faces ", shape.get_faces().size() / 3)

	var err := _save_fixture_multimeshes(data)
	if err != OK:
		return err
	return OK


func _save_fixture_multimeshes(data: Dictionary) -> Error:
	var house := BoxMesh.new()
	house.size = Vector3(1.22, 0.05, 0.28)
	var tube := BoxMesh.new()
	tube.size = Vector3(1.14, 0.03, 0.18)
	for key in ["fixtures_on", "fixtures_off"]:
		var pts: Array = data[key]
		if pts.is_empty():
			continue
		var mm_h := _multimesh(house, pts, 0.0)
		var mm_t := _multimesh(tube, pts, -0.028)
		var e1 := ResourceSaver.save(mm_h, "%smm_%s_house.res" % [OUT, key])
		var e2 := ResourceSaver.save(mm_t, "%smm_%s_tube.res" % [OUT, key])
		if e1 != OK:
			return e1
		if e2 != OK:
			return e2
		print("saved multimesh ", key, " n=", pts.size())
	return OK


func _multimesh(mesh: Mesh, pts: Array, y_off: float) -> MultiMesh:
	var mm := MultiMesh.new()
	mm.transform_format = MultiMesh.TRANSFORM_3D
	mm.mesh = mesh
	mm.instance_count = pts.size()
	for i in pts.size():
		var p: Array = pts[i]
		var xf := Transform3D(Basis.IDENTITY, Vector3(float(p[0]), float(p[1]) + y_off, float(p[2])))
		mm.set_instance_transform(i, xf)
	return mm


func _yaw_of(b: Array) -> float:
	if b.size() >= 8:
		return float(b[7])
	return 0.0


func _corners(cx: float, cy: float, cz: float, sx: float, sy: float, sz: float, yaw: float = 0.0) -> PackedVector3Array:
	var hx := sx * 0.5
	var hy := sy * 0.5
	var hz := sz * 0.5
	var p := PackedVector3Array([
		Vector3(-hx, -hy, -hz),
		Vector3(hx, -hy, -hz),
		Vector3(hx, hy, -hz),
		Vector3(-hx, hy, -hz),
		Vector3(-hx, -hy, hz),
		Vector3(hx, -hy, hz),
		Vector3(hx, hy, hz),
		Vector3(-hx, hy, hz),
	])
	var c := Vector3(cx, cy, cz)
	var cs := cos(yaw)
	var sn := sin(yaw)
	for i in p.size():
		var q := p[i]
		p[i] = Vector3(c.x + q.x * cs + q.z * sn, c.y + q.y, c.z - q.x * sn + q.z * cs)
	return p


func _mesh_from_boxes(boxes: Array) -> ArrayMesh:
	var st := SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	for b in boxes:
		_add_box(
			st,
			float(b[0]), float(b[1]), float(b[2]),
			float(b[3]), float(b[4]), float(b[5]),
			_yaw_of(b)
		)
	st.generate_normals()
	return st.commit()


func _shape_from_boxes(boxes: Array) -> ConcavePolygonShape3D:
	var faces := PackedVector3Array()
	for b in boxes:
		_append_box_faces(
			faces,
			float(b[0]), float(b[1]), float(b[2]),
			float(b[3]), float(b[4]), float(b[5]),
			_yaw_of(b)
		)
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	return shape


func _shape_from_stair_col(items: Array) -> ConcavePolygonShape3D:
	var faces := PackedVector3Array()
	for b in items:
		if b.size() >= 9:
			faces.push_back(Vector3(float(b[0]), float(b[1]), float(b[2])))
			faces.push_back(Vector3(float(b[3]), float(b[4]), float(b[5])))
			faces.push_back(Vector3(float(b[6]), float(b[7]), float(b[8])))
		else:
			_append_box_faces(
				faces,
				float(b[0]), float(b[1]), float(b[2]),
				float(b[3]), float(b[4]), float(b[5]),
				_yaw_of(b)
			)
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	shape.backface_collision = true
	return shape


func _shape_from_floor_boxes(boxes: Array) -> ConcavePolygonShape3D:
	## Walkable TOP-ONLY surface: no bottoms, no internal verticals between coplanar rects.
	## Vertical faces only at real height discontinuities (e.g. water rim vs carpet).
	var faces := PackedVector3Array()
	var cell_y := {}
	var cell := 0.5
	for b in boxes:
		var cx := float(b[0])
		var cy := float(b[1])
		var cz := float(b[2])
		var sx := float(b[3])
		var sy := float(b[4])
		var sz := float(b[5])
		var x0 := cx - sx * 0.5
		var x1 := cx + sx * 0.5
		var z0 := cz - sz * 0.5
		var z1 := cz + sz * 0.5
		var yt := cy + sy * 0.5
		_append_top_quad(faces, x0, yt, z0, x1, z1)
		var ix0 := int(floor((x0 + 0.001) / cell))
		var ix1 := int(floor((x1 - 0.001) / cell))
		var iz0 := int(floor((z0 + 0.001) / cell))
		var iz1 := int(floor((z1 - 0.001) / cell))
		for iz in range(iz0, iz1 + 1):
			for ix in range(ix0, ix1 + 1):
				cell_y[Vector2i(ix, iz)] = yt
	var keys: Array = cell_y.keys()
	for k in keys:
		var ix: int = k.x
		var iz: int = k.y
		var y0: float = cell_y[k]
		var east := Vector2i(ix + 1, iz)
		if cell_y.has(east):
			var y1: float = cell_y[east]
			if absf(y0 - y1) > 0.02:
				var x := float(ix + 1) * cell
				var za := float(iz) * cell
				var zb := float(iz + 1) * cell
				_append_vert_quad(faces, x, minf(y0, y1), za, x, maxf(y0, y1), zb)
		var south := Vector2i(ix, iz + 1)
		if cell_y.has(south):
			var y1: float = cell_y[south]
			if absf(y0 - y1) > 0.02:
				var z := float(iz + 1) * cell
				var xa := float(ix) * cell
				var xb := float(ix + 1) * cell
				_append_vert_quad(faces, xa, minf(y0, y1), z, xb, maxf(y0, y1), z)
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	shape.backface_collision = true
	return shape


func _append_top_quad(faces: PackedVector3Array, x0: float, y: float, z0: float, x1: float, z1: float) -> void:
	# +Y, same winding as former box +Y face (3,7,6 / 3,6,2)
	faces.push_back(Vector3(x0, y, z0))
	faces.push_back(Vector3(x0, y, z1))
	faces.push_back(Vector3(x1, y, z1))
	faces.push_back(Vector3(x0, y, z0))
	faces.push_back(Vector3(x1, y, z1))
	faces.push_back(Vector3(x1, y, z0))


func _append_vert_quad(faces: PackedVector3Array, x0: float, y0: float, z0: float, x1: float, y1: float, z1: float) -> void:
	faces.push_back(Vector3(x0, y0, z0))
	faces.push_back(Vector3(x1, y0, z1))
	faces.push_back(Vector3(x1, y1, z1))
	faces.push_back(Vector3(x0, y0, z0))
	faces.push_back(Vector3(x1, y1, z1))
	faces.push_back(Vector3(x0, y1, z0))


func _box_tris() -> PackedInt32Array:
	return PackedInt32Array([
		0, 2, 1, 0, 3, 2,
		4, 5, 6, 4, 6, 7,
		0, 1, 5, 0, 5, 4,
		3, 7, 6, 3, 6, 2,
		0, 4, 7, 0, 7, 3,
		1, 2, 6, 1, 6, 5,
	])


func _add_box(st: SurfaceTool, cx: float, cy: float, cz: float, sx: float, sy: float, sz: float, yaw: float = 0.0) -> void:
	var p := _corners(cx, cy, cz, sx, sy, sz, yaw)
	var tris := _box_tris()
	for i in range(0, tris.size(), 3):
		st.add_vertex(p[tris[i]])
		st.add_vertex(p[tris[i + 1]])
		st.add_vertex(p[tris[i + 2]])


func _append_box_faces(faces: PackedVector3Array, cx: float, cy: float, cz: float, sx: float, sy: float, sz: float, yaw: float = 0.0) -> void:
	var p := _corners(cx, cy, cz, sx, sy, sz, yaw)
	var tris := _box_tris()
	for i in range(0, tris.size(), 3):
		faces.push_back(p[tris[i]])
		faces.push_back(p[tris[i + 1]])
		faces.push_back(p[tris[i + 2]])
