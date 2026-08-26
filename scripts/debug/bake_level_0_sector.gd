extends SceneTree
## Headless baker: bake.json -> ArrayMesh/ConcavePolygonShape3D/MultiMesh .res
## Run: godot --headless --path . -s res://scripts/debug/bake_level_0_sector.gd

const BAKE := "res://resources/generated/level_0/sector_001/bake.json"
const OUT := "res://resources/generated/level_0/sector_001/"


func _init() -> void:
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
			var shape := _shape_from_boxes(col_boxes)
			var path := "%s%s_%s.res" % [OUT, cid, col_name]
			var err := ResourceSaver.save(shape, path)
			if err != OK:
				push_error("save shape %s -> %s" % [path, err])
				return err
			print("saved shape ", path)

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


func _mesh_from_boxes(boxes: Array) -> ArrayMesh:
	var st := SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	for b in boxes:
		var cx := float(b[0])
		var cy := float(b[1])
		var cz := float(b[2])
		var sx := float(b[3])
		var sy := float(b[4])
		var sz := float(b[5])
		_add_box(st, cx, cy, cz, sx, sy, sz)
	st.generate_normals()
	return st.commit()


func _shape_from_boxes(boxes: Array) -> ConcavePolygonShape3D:
	var faces := PackedVector3Array()
	for b in boxes:
		_append_box_faces(
			faces,
			float(b[0]), float(b[1]), float(b[2]),
			float(b[3]), float(b[4]), float(b[5])
		)
	var shape := ConcavePolygonShape3D.new()
	shape.set_faces(faces)
	return shape


func _add_box(st: SurfaceTool, cx: float, cy: float, cz: float, sx: float, sy: float, sz: float) -> void:
	var hx := sx * 0.5
	var hy := sy * 0.5
	var hz := sz * 0.5
	var p := PackedVector3Array([
		Vector3(cx - hx, cy - hy, cz - hz),
		Vector3(cx + hx, cy - hy, cz - hz),
		Vector3(cx + hx, cy + hy, cz - hz),
		Vector3(cx - hx, cy + hy, cz - hz),
		Vector3(cx - hx, cy - hy, cz + hz),
		Vector3(cx + hx, cy - hy, cz + hz),
		Vector3(cx + hx, cy + hy, cz + hz),
		Vector3(cx - hx, cy + hy, cz + hz),
	])
	# 12 triangles, CCW outward
	var tris := PackedInt32Array([
		0, 2, 1, 0, 3, 2,  # -Z
		4, 5, 6, 4, 6, 7,  # +Z
		0, 1, 5, 0, 5, 4,  # -Y
		3, 7, 6, 3, 6, 2,  # +Y
		0, 4, 7, 0, 7, 3,  # -X
		1, 2, 6, 1, 6, 5,  # +X
	])
	for i in range(0, tris.size(), 3):
		st.add_vertex(p[tris[i]])
		st.add_vertex(p[tris[i + 1]])
		st.add_vertex(p[tris[i + 2]])


func _append_box_faces(faces: PackedVector3Array, cx: float, cy: float, cz: float, sx: float, sy: float, sz: float) -> void:
	var hx := sx * 0.5
	var hy := sy * 0.5
	var hz := sz * 0.5
	var p := PackedVector3Array([
		Vector3(cx - hx, cy - hy, cz - hz),
		Vector3(cx + hx, cy - hy, cz - hz),
		Vector3(cx + hx, cy + hy, cz - hz),
		Vector3(cx - hx, cy + hy, cz - hz),
		Vector3(cx - hx, cy - hy, cz + hz),
		Vector3(cx + hx, cy - hy, cz + hz),
		Vector3(cx + hx, cy + hy, cz + hz),
		Vector3(cx - hx, cy + hy, cz + hz),
	])
	var tris := PackedInt32Array([
		0, 2, 1, 0, 3, 2,
		4, 5, 6, 4, 6, 7,
		0, 1, 5, 0, 5, 4,
		3, 7, 6, 3, 6, 2,
		0, 4, 7, 0, 7, 3,
		1, 2, 6, 1, 6, 5,
	])
	for i in range(0, tris.size(), 3):
		faces.push_back(p[tris[i]])
		faces.push_back(p[tris[i + 1]])
		faces.push_back(p[tris[i + 2]])
