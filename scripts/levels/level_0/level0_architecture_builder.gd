extends RefCounted

## Local construction utility shared by the dev Golden Room and Sector 04.
## Walkable polygons are unioned before any render or collision geometry exists.

const POSITION_EPSILON := 0.001
const MIN_SEGMENT_LENGTH := 0.01

var union_polygons: Array[PackedVector2Array] = []
var boundary_runs: Array[Dictionary] = []
var partition_runs: Array[Dictionary] = []
var wall_face_runs: Array[Dictionary] = []
var errors: Array[String] = []
var stats := {
	"input_polygons": 0,
	"union_polygons": 0,
	"boundary_edges_before": 0,
	"boundary_edges_after": 0,
	"partition_count": 0,
	"floor_triangles": 0,
	"ceiling_triangles": 0,
	"duplicate_floor_triangles": 0,
	"duplicate_ceiling_triangles": 0,
	"duplicate_wall_triangles": 0,
	"max_wall_junction_correction": 0.0,
	"max_wall_junction_delta": 0.0,
}


func make_framed_opening(
	id: String,
	center: Vector2,
	clear_width: float,
	clear_height: float,
	jamb_visible_width: float,
	jamb_depth: float,
	frame_projection: float
) -> Dictionary:
	var frame_outer_width := clear_width + jamb_visible_width * 2.0
	return {
		"id": id,
		"center": center,
		"framed": true,
		"clear_width": clear_width,
		"clear_height": clear_height,
		"jamb_visible_width": jamb_visible_width,
		"jamb_depth": jamb_depth,
		"frame_projection": frame_projection,
		"frame_outer_width": frame_outer_width,
		"cut_width": frame_outer_width,
		"cut_height": clear_height + jamb_visible_width,
	}


func build_framed_opening_mesh(opening: Dictionary, wall_thickness: float, material: Material, seam_overlap := 0.0015) -> ArrayMesh:
	var clear_width := float(opening["clear_width"])
	var clear_height := float(opening["clear_height"])
	var jamb_width := float(opening["jamb_visible_width"])
	var casing_depth := float(opening["jamb_depth"])
	var projection := float(opening["frame_projection"])
	var outer_width := float(opening["frame_outer_width"])
	var jamb_center := clear_width * 0.5 + jamb_width * 0.5
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	# Full-depth jamb/reveal volume. This is what prevents a lit room from being
	# visible between the wall cut and the front/back casing.
	var reveal_depth := wall_thickness + seam_overlap * 2.0
	_emit_visual_box(surface, Vector3(jamb_width, clear_height, reveal_depth), Vector3(-jamb_center, clear_height * 0.5, 0.0))
	_emit_visual_box(surface, Vector3(jamb_width, clear_height, reveal_depth), Vector3(jamb_center, clear_height * 0.5, 0.0))
	_emit_visual_box(surface, Vector3(outer_width, jamb_width, reveal_depth), Vector3(0.0, clear_height + jamb_width * 0.5, 0.0))
	# The source-derived visual casing remains 60 mm deep and 20 mm proud of
	# each authoritative wall face. Both sides share the same opening contract.
	var wall_half := wall_thickness * 0.5
	for side: float in [-1.0, 1.0]:
		var casing_z: float = side * (wall_half + projection)
		_emit_visual_box(surface, Vector3(jamb_width, clear_height, casing_depth), Vector3(-jamb_center, clear_height * 0.5, casing_z))
		_emit_visual_box(surface, Vector3(jamb_width, clear_height, casing_depth), Vector3(jamb_center, clear_height * 0.5, casing_z))
		_emit_visual_box(surface, Vector3(outer_width, jamb_width, casing_depth), Vector3(0.0, clear_height + jamb_width * 0.5, casing_z))
	var mesh := surface.commit()
	mesh.surface_set_material(0, material)
	return mesh


func opening_wall_center(run: Dictionary, opening: Dictionary, wall_thickness: float) -> Vector2:
	var direction := (Vector2(run["b"]) - Vector2(run["a"])).normalized()
	var center := Vector2(run["a"]) + direction * float(opening["center_distance"])
	if String(run["mode"]) == "boundary":
		center -= Vector2(run["normal"]) * wall_thickness * 0.5
	return center


func build(
	walkable_shapes: Array[PackedVector2Array],
	partitions: Array[Dictionary],
	boundary_openings: Array[Dictionary],
	columns: Array[Dictionary],
	materials: Dictionary,
	config: Dictionary
) -> Dictionary:
	errors.clear()
	stats["input_polygons"] = walkable_shapes.size()
	union_polygons = _union_walkable_shapes(walkable_shapes)
	stats["union_polygons"] = union_polygons.size()
	boundary_runs = _extract_boundary_runs(union_polygons, boundary_openings)
	partition_runs = _sanitize_partitions(partitions)
	stats["partition_count"] = partition_runs.size()
	_validate_wall_runs()

	var floor_result := _build_horizontal_mesh(union_polygons, 0.0, true, materials["floor"])
	var ceiling_y := float(config["ceiling_y"])
	var ceiling_result := _build_horizontal_mesh(union_polygons, ceiling_y, false, materials["ceiling"])
	stats["floor_triangles"] = int(floor_result["triangles"])
	stats["ceiling_triangles"] = int(ceiling_result["triangles"])
	stats["duplicate_floor_triangles"] = _duplicate_triangle_count(floor_result["mesh"])
	stats["duplicate_ceiling_triangles"] = _duplicate_triangle_count(ceiling_result["mesh"])
	if int(stats["duplicate_floor_triangles"]) != 0:
		errors.push_back("duplicate floor triangles: %d" % int(stats["duplicate_floor_triangles"]))
	if int(stats["duplicate_ceiling_triangles"]) != 0:
		errors.push_back("duplicate ceiling triangles: %d" % int(stats["duplicate_ceiling_triangles"]))

	var wall_result := _build_wall_mesh(columns, materials["wall"], config)
	wall_face_runs.assign(wall_result["face_runs"])
	stats["duplicate_wall_triangles"] = _duplicate_triangle_count(wall_result["mesh"])
	if int(stats["duplicate_wall_triangles"]) != 0:
		errors.push_back("duplicate wall triangles: %d" % int(stats["duplicate_wall_triangles"]))
	var baseboard_mesh := _build_baseboard_mesh(columns, materials["trim"], config)

	return {
		"floor_mesh": floor_result["mesh"],
		"floor_faces": floor_result["faces"],
		"ceiling_mesh": ceiling_result["mesh"],
		"wall_mesh": wall_result["mesh"],
		"wall_faces": wall_result["faces"],
		"baseboard_mesh": baseboard_mesh,
		"union_polygons": union_polygons,
		"boundary_runs": boundary_runs,
		"partition_runs": partition_runs,
		"wall_face_runs": wall_face_runs,
		"stats": stats.duplicate(true),
		"errors": errors.duplicate(),
	}


func _union_walkable_shapes(shapes: Array[PackedVector2Array]) -> Array[PackedVector2Array]:
	var result: Array[PackedVector2Array] = []
	for source: PackedVector2Array in shapes:
		var pending := _normalized_loop(source)
		if pending.size() < 3:
			errors.push_back("walkable polygon has fewer than three points")
			continue
		var merged_again := true
		while merged_again:
			merged_again = false
			for result_index in result.size():
				var merged: Array[PackedVector2Array] = Geometry2D.merge_polygons(result[result_index], pending)
				if merged.size() != 1:
					continue
				pending = _normalized_loop(merged[0])
				result.remove_at(result_index)
				merged_again = true
				break
		result.push_back(pending)
	var changed := true
	while changed:
		changed = false
		for first_index in result.size():
			for second_index in range(first_index + 1, result.size()):
				var merged: Array[PackedVector2Array] = Geometry2D.merge_polygons(result[first_index], result[second_index])
				if merged.size() != 1:
					continue
				result[first_index] = _normalized_loop(merged[0])
				result.remove_at(second_index)
				changed = true
				break
			if changed:
				break
	return result


func _extract_boundary_runs(polygons: Array[PackedVector2Array], opening_sources: Array[Dictionary]) -> Array[Dictionary]:
	var runs: Array[Dictionary] = []
	for polygon: PackedVector2Array in polygons:
		stats["boundary_edges_before"] = int(stats["boundary_edges_before"]) + polygon.size()
		var simplified := _simplify_loop(polygon)
		for point_index in simplified.size():
			var a := simplified[point_index]
			var b := simplified[(point_index + 1) % simplified.size()]
			if a.distance_to(b) < MIN_SEGMENT_LENGTH:
				errors.push_back("short union boundary segment")
				continue
			var direction := (b - a).normalized()
			var normal := Vector2(-direction.y, direction.x)
			runs.push_back({
				"a": a,
				"b": b,
				"normal": normal,
				"mode": "boundary",
				"openings": _openings_for_run(a, b, opening_sources),
			})
	stats["boundary_edges_after"] = runs.size()
	return runs


func _sanitize_partitions(sources: Array[Dictionary]) -> Array[Dictionary]:
	var runs: Array[Dictionary] = []
	for source: Dictionary in sources:
		var a: Vector2 = source["a"]
		var b: Vector2 = source["b"]
		if a.distance_to(b) < MIN_SEGMENT_LENGTH:
			continue
		var normal: Vector2 = source.get("normal", Vector2(-(b - a).normalized().y, (b - a).normalized().x))
		normal = normal.normalized()
		var left := Vector2(-(b - a).normalized().y, (b - a).normalized().x)
		if left.dot(normal) < 0.0:
			var swap := a
			a = b
			b = swap
		var duplicate := false
		for existing: Dictionary in runs:
			if _same_segment(a, b, existing["a"], existing["b"]):
				duplicate = true
				break
		if duplicate:
			continue
		var opening_sources: Array[Dictionary] = []
		for opening: Dictionary in source.get("openings", []):
			opening_sources.push_back(opening)
		runs.push_back({
			"id": String(source.get("id", "partition_%d" % runs.size())),
			"a": a,
			"b": b,
			"normal": normal,
			"mode": "partition",
			"openings": _openings_for_run(a, b, opening_sources),
		})
	return runs


func _openings_for_run(a: Vector2, b: Vector2, sources: Array[Dictionary]) -> Array[Dictionary]:
	var openings: Array[Dictionary] = []
	var direction := (b - a).normalized()
	var length := a.distance_to(b)
	for source: Dictionary in sources:
		var center: Vector2 = source["center"]
		var projection := (center - a).dot(direction)
		var closest := a + direction * projection
		if closest.distance_to(center) > POSITION_EPSILON:
			continue
		var cut_width := float(source.get("frame_outer_width", source["cut_width"]))
		var start := projection - cut_width * 0.5
		var finish := projection + cut_width * 0.5
		if start < -POSITION_EPSILON or finish > length + POSITION_EPSILON:
			errors.push_back("opening %s exceeds its wall run" % String(source.get("id", "unnamed")))
			continue
		var opening := {
			"id": String(source.get("id", "unnamed")),
			"start": clampf(start, 0.0, length),
			"end": clampf(finish, 0.0, length),
			"height": float(source["cut_height"]),
			"center_distance": projection,
			"center": closest,
			"framed": bool(source.get("framed", false)),
		}
		if bool(opening["framed"]):
			var clear_width := float(source["clear_width"])
			opening["clear_width"] = clear_width
			opening["clear_start"] = projection - clear_width * 0.5
			opening["clear_end"] = projection + clear_width * 0.5
			opening["clear_height"] = float(source["clear_height"])
			opening["jamb_visible_width"] = float(source["jamb_visible_width"])
			opening["jamb_depth"] = float(source["jamb_depth"])
			opening["frame_projection"] = float(source["frame_projection"])
			opening["frame_outer_width"] = float(source["frame_outer_width"])
		openings.push_back(opening)
	openings.sort_custom(func(first: Dictionary, second: Dictionary) -> bool: return float(first["start"]) < float(second["start"]))
	for opening_index in range(1, openings.size()):
		if float(openings[opening_index]["start"]) < float(openings[opening_index - 1]["end"]) - POSITION_EPSILON:
			errors.push_back("overlapping wall openings")
	return openings


func _build_horizontal_mesh(polygons: Array[PackedVector2Array], height: float, upward: bool, material: Material) -> Dictionary:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	var triangle_count := 0
	for polygon: PackedVector2Array in polygons:
		var triangles := Geometry2D.triangulate_polygon(polygon)
		if triangles.is_empty():
			errors.push_back("walkable polygon triangulation failed")
			continue
		for triangle_offset in range(0, triangles.size(), 3):
			var a2 := polygon[triangles[triangle_offset]]
			var b2 := polygon[triangles[triangle_offset + 1]]
			var c2 := polygon[triangles[triangle_offset + 2]]
			var a := Vector3(a2.x, height, a2.y)
			var b := Vector3(b2.x, height, b2.y)
			var c := Vector3(c2.x, height, c2.y)
			if upward:
				_emit_triangle(surface, a, c, b, Vector3.UP)
				faces.append_array(PackedVector3Array([a, c, b]))
			else:
				_emit_triangle(surface, a, b, c, Vector3.DOWN)
			triangle_count += 1
	var mesh := surface.commit()
	mesh.surface_set_material(0, material)
	return {"mesh": mesh, "faces": faces, "triangles": triangle_count}


func _build_wall_mesh(columns: Array[Dictionary], material: Material, config: Dictionary) -> Dictionary:
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	var faces := PackedVector3Array()
	var all_runs: Array[Dictionary] = []
	all_runs.append_array(boundary_runs)
	all_runs.append_array(partition_runs)
	var ceiling_y := float(config["ceiling_y"])
	var thickness := float(config["wall_thickness"])
	var face_runs := _build_wall_face_runs(all_runs, thickness)
	for face_run: Dictionary in face_runs:
		if bool(face_run["primary"]):
			_emit_wall_run(
				surface,
				faces,
				face_run["face_a"],
				face_run["face_b"],
				face_run["normal"],
				thickness,
				ceiling_y,
				face_run["openings"],
				_endpoint_is_free(face_run["joint_a"], all_runs),
				_endpoint_is_free(face_run["joint_b"], all_runs)
			)
		else:
			_emit_wall_face_visual(surface, face_run["face_a"], face_run["face_b"], face_run["normal"], ceiling_y, face_run["openings"])
	for column: Dictionary in columns:
		_emit_column(surface, faces, column, ceiling_y)
	var mesh := surface.commit()
	mesh.surface_set_material(0, material)
	return {"mesh": mesh, "faces": faces, "face_runs": face_runs}


func _build_wall_face_runs(all_runs: Array[Dictionary], thickness: float) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for source_index in all_runs.size():
		var run: Dictionary = all_runs[source_index]
		var normal: Vector2 = run["normal"]
		var offset := thickness * 0.5 if String(run["mode"]) == "partition" else 0.0
		result.push_back(_wall_face_run(source_index, "front", run["a"] + normal * offset, run["b"] + normal * offset, run["a"], run["b"], normal, run["openings"], true))
		if String(run["mode"]) == "partition":
			result.push_back(_wall_face_run(source_index, "back", run["b"] - normal * offset, run["a"] - normal * offset, run["b"], run["a"], -normal, _reverse_openings(run["openings"], run["a"].distance_to(run["b"])), false))
	for face_index in result.size():
		var face: Dictionary = result[face_index]
		var raw_a: Vector2 = face["face_a"]
		var raw_b: Vector2 = face["face_b"]
		var direction := (raw_b - raw_a).normalized()
		var adjusted_a := _mitered_face_endpoint(face_index, true, result)
		var adjusted_b := _mitered_face_endpoint(face_index, false, result)
		stats["max_wall_junction_correction"] = maxf(
			float(stats["max_wall_junction_correction"]),
			maxf(raw_a.distance_to(adjusted_a), raw_b.distance_to(adjusted_b))
		)
		var start_shift := (adjusted_a - raw_a).dot(direction)
		face["face_a"] = adjusted_a
		face["face_b"] = adjusted_b
		face["openings"] = _shift_openings(face["openings"], start_shift)
		result[face_index] = face
	var max_delta := 0.0
	for face_index in result.size():
		var face: Dictionary = result[face_index]
		max_delta = maxf(max_delta, Vector2(face["face_a"]).distance_to(_mitered_face_endpoint(face_index, true, result)))
		max_delta = maxf(max_delta, Vector2(face["face_b"]).distance_to(_mitered_face_endpoint(face_index, false, result)))
	stats["max_wall_junction_delta"] = max_delta
	if max_delta > POSITION_EPSILON:
		errors.push_back("wall face junction delta exceeds 0.001 m")
	return result


func _wall_face_run(source_index: int, side: String, face_a: Vector2, face_b: Vector2, joint_a: Vector2, joint_b: Vector2, normal: Vector2, openings: Array, primary: bool) -> Dictionary:
	return {
		"source_index": source_index,
		"side": side,
		"face_a": face_a,
		"face_b": face_b,
		"joint_a": joint_a,
		"joint_b": joint_b,
		"normal": normal.normalized(),
		"openings": openings,
		"primary": primary,
	}


func _mitered_face_endpoint(face_index: int, at_start: bool, runs: Array[Dictionary]) -> Vector2:
	var run: Dictionary = runs[face_index]
	var face_endpoint: Vector2 = run["face_a"] if at_start else run["face_b"]
	var joint: Vector2 = run["joint_a"] if at_start else run["joint_b"]
	var normal: Vector2 = run["normal"]
	var best := face_endpoint
	var best_score := -INF
	for other_index in runs.size():
		if other_index == face_index:
			continue
		var other: Dictionary = runs[other_index]
		if not _point_on_segment(joint, other["joint_a"], other["joint_b"]):
			continue
		var other_normal: Vector2 = other["normal"]
		if normal.dot(other_normal) < -0.95:
			continue
		var intersection: Variant = _line_intersection(run["face_a"], run["face_b"], other["face_a"], other["face_b"])
		if intersection == null:
			continue
		var point: Vector2 = intersection
		var offset := point - joint
		var expected := normal + other_normal
		if expected.length_squared() <= 0.000001 or offset.dot(expected) < -POSITION_EPSILON:
			continue
		if offset.length() > 0.50:
			continue
		var score := offset.normalized().dot(expected.normalized()) if offset.length_squared() > 0.000001 else 1.0
		if score > best_score:
			best_score = score
			best = point
	return best


func _shift_openings(openings: Array, start_shift: float) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for source: Dictionary in openings:
		var opening := source.duplicate(true)
		for key in ["start", "end", "center_distance", "clear_start", "clear_end"]:
			if opening.has(key):
				opening[key] = float(opening[key]) - start_shift
		result.push_back(opening)
	return result


func _emit_wall_run(surface: SurfaceTool, faces: PackedVector3Array, a: Vector2, b: Vector2, normal: Vector2, thickness: float, ceiling_y: float, openings: Array, cap_start: bool, cap_end: bool) -> void:
	var direction := (b - a).normalized()
	var length := a.distance_to(b)
	var outer_a := a - normal * thickness
	var outer_b := b - normal * thickness
	var cursor := 0.0
	for opening: Dictionary in openings:
		var start := float(opening["start"])
		var finish := float(opening["end"])
		var opening_height := float(opening["height"])
		_emit_wall_rectangle(surface, faces, a, outer_a, direction, normal, cursor, start, 0.0, ceiling_y)
		_emit_wall_rectangle(surface, faces, a, outer_a, direction, normal, start, finish, opening_height, ceiling_y)
		_emit_opening_reveals(surface, faces, a, outer_a, direction, normal, start, finish, opening_height)
		if bool(opening.get("framed", false)):
			_append_framed_opening_collision(faces, a, outer_a, direction, opening)
		cursor = finish
	_emit_wall_rectangle(surface, faces, a, outer_a, direction, normal, cursor, length, 0.0, ceiling_y)
	if cap_start:
		_emit_depth_quad(surface, faces, a, outer_a, 0.0, ceiling_y, -direction)
	if cap_end:
		_emit_depth_quad(surface, faces, b, outer_b, 0.0, ceiling_y, direction)


func _emit_wall_face_visual(surface: SurfaceTool, a: Vector2, b: Vector2, normal: Vector2, ceiling_y: float, openings: Array) -> void:
	var direction := (b - a).normalized()
	var length := a.distance_to(b)
	var cursor := 0.0
	for opening: Dictionary in openings:
		var start := float(opening["start"])
		var finish := float(opening["end"])
		var opening_height := float(opening["height"])
		_emit_face_rectangle(surface, a, direction, normal, cursor, start, 0.0, ceiling_y)
		_emit_face_rectangle(surface, a, direction, normal, start, finish, opening_height, ceiling_y)
		cursor = finish
	_emit_face_rectangle(surface, a, direction, normal, cursor, length, 0.0, ceiling_y)


func _emit_face_rectangle(surface: SurfaceTool, origin: Vector2, direction: Vector2, normal: Vector2, start: float, finish: float, y0: float, y1: float) -> void:
	if finish - start < POSITION_EPSILON or y1 - y0 < POSITION_EPSILON:
		return
	var first := origin + direction * start
	var second := origin + direction * finish
	_emit_visual_quad(
		surface,
		Vector3(first.x, y0, first.y),
		Vector3(second.x, y0, second.y),
		Vector3(second.x, y1, second.y),
		Vector3(first.x, y1, first.y),
		Vector3(normal.x, 0.0, normal.y)
	)


func _append_framed_opening_collision(faces: PackedVector3Array, inner_origin: Vector2, outer_origin: Vector2, direction: Vector2, opening: Dictionary) -> void:
	var outer_start := float(opening["start"])
	var outer_end := float(opening["end"])
	var clear_start := float(opening["clear_start"])
	var clear_end := float(opening["clear_end"])
	var clear_height := float(opening["clear_height"])
	var outer_height := float(opening["height"])
	_append_collision_prism(faces, inner_origin, outer_origin, direction, outer_start, clear_start, 0.0, clear_height)
	_append_collision_prism(faces, inner_origin, outer_origin, direction, clear_end, outer_end, 0.0, clear_height)
	_append_collision_prism(faces, inner_origin, outer_origin, direction, outer_start, outer_end, clear_height, outer_height)


func _append_collision_prism(faces: PackedVector3Array, inner_origin: Vector2, outer_origin: Vector2, direction: Vector2, start: float, finish: float, y0: float, y1: float) -> void:
	if finish - start < POSITION_EPSILON or y1 - y0 < POSITION_EPSILON:
		return
	var inner_start := inner_origin + direction * start
	var inner_end := inner_origin + direction * finish
	var outer_start := outer_origin + direction * start
	var outer_end := outer_origin + direction * finish
	var p000 := Vector3(inner_start.x, y0, inner_start.y)
	var p100 := Vector3(inner_end.x, y0, inner_end.y)
	var p110 := Vector3(inner_end.x, y1, inner_end.y)
	var p010 := Vector3(inner_start.x, y1, inner_start.y)
	var p001 := Vector3(outer_start.x, y0, outer_start.y)
	var p101 := Vector3(outer_end.x, y0, outer_end.y)
	var p111 := Vector3(outer_end.x, y1, outer_end.y)
	var p011 := Vector3(outer_start.x, y1, outer_start.y)
	_append_collision_quad(faces, p000, p100, p110, p010)
	_append_collision_quad(faces, p101, p001, p011, p111)
	_append_collision_quad(faces, p001, p000, p010, p011)
	_append_collision_quad(faces, p100, p101, p111, p110)
	_append_collision_quad(faces, p010, p110, p111, p011)
	_append_collision_quad(faces, p001, p101, p100, p000)


func _emit_wall_rectangle(surface: SurfaceTool, faces: PackedVector3Array, inner_origin: Vector2, outer_origin: Vector2, direction: Vector2, normal: Vector2, start: float, finish: float, y0: float, y1: float) -> void:
	if finish - start < POSITION_EPSILON or y1 - y0 < POSITION_EPSILON:
		return
	var inner_start := inner_origin + direction * start
	var inner_end := inner_origin + direction * finish
	var outer_start := outer_origin + direction * start
	var outer_end := outer_origin + direction * finish
	var front_a := Vector3(inner_start.x, y0, inner_start.y)
	var front_b := Vector3(inner_end.x, y0, inner_end.y)
	var front_c := Vector3(inner_end.x, y1, inner_end.y)
	var front_d := Vector3(inner_start.x, y1, inner_start.y)
	_emit_visual_quad(surface, front_a, front_b, front_c, front_d, Vector3(normal.x, 0.0, normal.y))
	_append_collision_quad(faces, front_a, front_b, front_c, front_d)
	var back_a := Vector3(outer_end.x, y0, outer_end.y)
	var back_b := Vector3(outer_start.x, y0, outer_start.y)
	var back_c := Vector3(outer_start.x, y1, outer_start.y)
	var back_d := Vector3(outer_end.x, y1, outer_end.y)
	# The rear face belongs to collision thickness only. Rendering it makes a
	# second face visible through re-entrant corners even though it is entirely
	# outside the walkable boundary.
	_append_collision_quad(faces, back_a, back_b, back_c, back_d)


func _emit_opening_reveals(surface: SurfaceTool, faces: PackedVector3Array, inner_origin: Vector2, outer_origin: Vector2, direction: Vector2, _normal: Vector2, start: float, finish: float, height: float) -> void:
	var inner_start := inner_origin + direction * start
	var inner_end := inner_origin + direction * finish
	var outer_start := outer_origin + direction * start
	var outer_end := outer_origin + direction * finish
	_emit_depth_quad(surface, faces, inner_start, outer_start, 0.0, height, -direction)
	_emit_depth_quad(surface, faces, outer_end, inner_end, 0.0, height, direction)
	var a := Vector3(inner_start.x, height, inner_start.y)
	var b := Vector3(inner_end.x, height, inner_end.y)
	var c := Vector3(outer_end.x, height, outer_end.y)
	var d := Vector3(outer_start.x, height, outer_start.y)
	_emit_quad(surface, faces, a, b, c, d, Vector3.DOWN)


func _emit_depth_quad(surface: SurfaceTool, faces: PackedVector3Array, first: Vector2, second: Vector2, y0: float, y1: float, horizontal_normal: Vector2) -> void:
	var a := Vector3(first.x, y0, first.y)
	var b := Vector3(second.x, y0, second.y)
	var c := Vector3(second.x, y1, second.y)
	var d := Vector3(first.x, y1, first.y)
	_emit_quad(surface, faces, a, b, c, d, Vector3(horizontal_normal.x, 0.0, horizontal_normal.y))


func _emit_column(surface: SurfaceTool, faces: PackedVector3Array, column: Dictionary, ceiling_y: float) -> void:
	var center: Vector2 = column["center"]
	var half := float(column["size"]) * 0.5
	var points := PackedVector2Array([
		Vector2(center.x - half, center.y - half),
		Vector2(center.x - half, center.y + half),
		Vector2(center.x + half, center.y + half),
		Vector2(center.x + half, center.y - half),
	])
	for point_index in points.size():
		var a2 := points[point_index]
		var b2 := points[(point_index + 1) % points.size()]
		var direction := (b2 - a2).normalized()
		var normal := Vector2(-direction.y, direction.x)
		var a := Vector3(a2.x, 0.0, a2.y)
		var b := Vector3(b2.x, 0.0, b2.y)
		var c := Vector3(b2.x, ceiling_y, b2.y)
		var d := Vector3(a2.x, ceiling_y, a2.y)
		_emit_quad(surface, faces, a, b, c, d, Vector3(normal.x, 0.0, normal.y))


func _build_baseboard_mesh(columns: Array[Dictionary], material: Material, config: Dictionary) -> ArrayMesh:
	var height := float(config["baseboard_height"])
	var depth := float(config["baseboard_depth"])
	var face_runs: Array[Dictionary] = []
	for run: Dictionary in boundary_runs:
		face_runs.push_back(_baseboard_face_run(run["a"], run["b"], run["a"], run["b"], run["normal"], run["openings"]))
	for run: Dictionary in partition_runs:
		var normal: Vector2 = run["normal"]
		var half := float(config["wall_thickness"]) * 0.5
		var a: Vector2 = run["a"]
		var b: Vector2 = run["b"]
		face_runs.push_back(_baseboard_face_run(a + normal * half, b + normal * half, a, b, normal, run["openings"]))
		face_runs.push_back(_baseboard_face_run(b - normal * half, a - normal * half, b, a, -normal, _reverse_openings(run["openings"], a.distance_to(b))))
	for column: Dictionary in columns:
		var center: Vector2 = column["center"]
		var half := float(column["size"]) * 0.5
		var points := PackedVector2Array([
			Vector2(center.x - half, center.y - half),
			Vector2(center.x - half, center.y + half),
			Vector2(center.x + half, center.y + half),
			Vector2(center.x + half, center.y - half),
		])
		for point_index in points.size():
			var a := points[point_index]
			var b := points[(point_index + 1) % points.size()]
			var direction := (b - a).normalized()
			face_runs.push_back(_baseboard_face_run(a, b, a, b, Vector2(-direction.y, direction.x), []))
	var surface := SurfaceTool.new()
	surface.begin(Mesh.PRIMITIVE_TRIANGLES)
	for run_index in face_runs.size():
		var run: Dictionary = face_runs[run_index]
		var length: float = run["face_a"].distance_to(run["face_b"])
		var direction: Vector2 = (run["face_b"] - run["face_a"]).normalized()
		var intervals := _solid_intervals(length, run["openings"])
		for interval: Vector2 in intervals:
			var a: Vector2 = run["face_a"] + direction * interval.x + run["normal"] * depth
			var b: Vector2 = run["face_a"] + direction * interval.y + run["normal"] * depth
			if interval.x <= POSITION_EPSILON:
				a = _mitered_baseboard_endpoint(run_index, true, face_runs, depth)
			if interval.y >= length - POSITION_EPSILON:
				b = _mitered_baseboard_endpoint(run_index, false, face_runs, depth)
			_emit_visual_quad(surface, Vector3(a.x, 0.0, a.y), Vector3(b.x, 0.0, b.y), Vector3(b.x, height, b.y), Vector3(a.x, height, a.y), Vector3(run["normal"].x, 0.0, run["normal"].y))
	var mesh := surface.commit()
	mesh.surface_set_material(0, material)
	return mesh
func _baseboard_face_run(face_a: Vector2, face_b: Vector2, joint_a: Vector2, joint_b: Vector2, normal: Vector2, openings: Array) -> Dictionary:
	return {"face_a": face_a, "face_b": face_b, "joint_a": joint_a, "joint_b": joint_b, "normal": normal.normalized(), "openings": openings}


func _solid_intervals(length: float, openings: Array) -> Array[Vector2]:
	var intervals: Array[Vector2] = []
	var cursor := 0.0
	for opening: Dictionary in openings:
		var start := float(opening["start"])
		if start - cursor > POSITION_EPSILON:
			intervals.push_back(Vector2(cursor, start))
		cursor = float(opening["end"])
	if length - cursor > POSITION_EPSILON:
		intervals.push_back(Vector2(cursor, length))
	return intervals


func _reverse_openings(openings: Array, length: float) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for opening: Dictionary in openings:
		var reversed := opening.duplicate(true)
		reversed["start"] = length - float(opening["end"])
		reversed["end"] = length - float(opening["start"])
		if opening.has("center_distance"):
			reversed["center_distance"] = length - float(opening["center_distance"])
		if opening.has("clear_start"):
			reversed["clear_start"] = length - float(opening["clear_end"])
			reversed["clear_end"] = length - float(opening["clear_start"])
		result.push_back(reversed)
	result.sort_custom(func(first: Dictionary, second: Dictionary) -> bool: return float(first["start"]) < float(second["start"]))
	return result


func _mitered_baseboard_endpoint(run_index: int, at_start: bool, runs: Array[Dictionary], depth: float) -> Vector2:
	var run: Dictionary = runs[run_index]
	var face_endpoint: Vector2 = run["face_a"] if at_start else run["face_b"]
	var joint: Vector2 = run["joint_a"] if at_start else run["joint_b"]
	var normal: Vector2 = run["normal"]
	var projected_a: Vector2 = run["face_a"] + normal * depth
	var projected_b: Vector2 = run["face_b"] + normal * depth
	var best := face_endpoint + normal * depth
	var best_score := -INF
	for other_index in runs.size():
		if other_index == run_index:
			continue
		var other: Dictionary = runs[other_index]
		# Endpoint and T-junction connections use the receiving run's authoritative
		# face. Collinear continuations still yield no line intersection and remain
		# unaffected.
		if not _point_on_segment(joint, other["joint_a"], other["joint_b"]):
			continue
		var other_normal: Vector2 = other["normal"]
		if normal.dot(other_normal) < -0.95:
			continue
		var intersection: Variant = _line_intersection(projected_a, projected_b, other["face_a"] + other_normal * depth, other["face_b"] + other_normal * depth)
		if intersection == null:
			continue
		var point: Vector2 = intersection
		var offset := point - joint
		var expected := normal + other_normal
		if expected.length_squared() <= 0.000001 or offset.dot(expected) < -POSITION_EPSILON:
			continue
		if offset.length() > 0.50:
			continue
		var score := offset.normalized().dot(expected.normalized())
		if score > best_score:
			best_score = score
			best = point
	return best


func _validate_wall_runs() -> void:
	var all_runs: Array[Dictionary] = []
	all_runs.append_array(boundary_runs)
	all_runs.append_array(partition_runs)
	for run_index in all_runs.size():
		var run: Dictionary = all_runs[run_index]
		if run["a"].distance_to(run["b"]) < MIN_SEGMENT_LENGTH:
			errors.push_back("wall run shorter than 0.01 m")
		for other_index in range(run_index + 1, all_runs.size()):
			var other: Dictionary = all_runs[other_index]
			if _same_segment(run["a"], run["b"], other["a"], other["b"]):
				errors.push_back("duplicate wall run")
			elif _collinear_overlap(run["a"], run["b"], other["a"], other["b"]) > POSITION_EPSILON:
				errors.push_back("overlapping collinear wall runs")


func _endpoint_is_free(point: Vector2, runs: Array[Dictionary]) -> bool:
	var connections := 0
	for run: Dictionary in runs:
		if _point_on_segment(point, run["a"], run["b"]):
			connections += 1
	return connections <= 1


func _simplify_loop(source: PackedVector2Array) -> PackedVector2Array:
	var points := _normalized_loop(source)
	var changed := true
	while changed and points.size() >= 3:
		changed = false
		for index in points.size():
			var previous := points[(index - 1 + points.size()) % points.size()]
			var current := points[index]
			var following := points[(index + 1) % points.size()]
			if current.distance_to(previous) <= POSITION_EPSILON or current.distance_to(following) <= POSITION_EPSILON:
				points.remove_at(index)
				changed = true
				break
			var first := (current - previous).normalized()
			var second := (following - current).normalized()
			if absf(first.cross(second)) <= POSITION_EPSILON and first.dot(second) > 0.0:
				points.remove_at(index)
				changed = true
				break
	return points


func _normalized_loop(source: PackedVector2Array) -> PackedVector2Array:
	var result := PackedVector2Array()
	for point: Vector2 in source:
		var snapped_point := Vector2(snappedf(point.x, POSITION_EPSILON), snappedf(point.y, POSITION_EPSILON))
		if result.is_empty() or result[result.size() - 1].distance_to(snapped_point) > POSITION_EPSILON:
			result.push_back(snapped_point)
	if result.size() > 1 and result[0].distance_to(result[result.size() - 1]) <= POSITION_EPSILON:
		result.resize(result.size() - 1)
	if _signed_area(result) < 0.0:
		result.reverse()
	return result


func _signed_area(polygon: PackedVector2Array) -> float:
	var area := 0.0
	for index in polygon.size():
		var current := polygon[index]
		var following := polygon[(index + 1) % polygon.size()]
		area += current.x * following.y - following.x * current.y
	return area * 0.5


func _same_segment(a0: Vector2, b0: Vector2, a1: Vector2, b1: Vector2) -> bool:
	return (a0.distance_to(a1) <= POSITION_EPSILON and b0.distance_to(b1) <= POSITION_EPSILON) or (a0.distance_to(b1) <= POSITION_EPSILON and b0.distance_to(a1) <= POSITION_EPSILON)


func _collinear_overlap(a0: Vector2, b0: Vector2, a1: Vector2, b1: Vector2) -> float:
	var direction := (b0 - a0).normalized()
	if absf(direction.cross((b1 - a1).normalized())) > POSITION_EPSILON:
		return 0.0
	if absf((a1 - a0).cross(direction)) > POSITION_EPSILON:
		return 0.0
	var length := a0.distance_to(b0)
	var second_a := (a1 - a0).dot(direction)
	var second_b := (b1 - a0).dot(direction)
	return maxf(0.0, minf(length, maxf(second_a, second_b)) - maxf(0.0, minf(second_a, second_b)))


func _point_on_segment(point: Vector2, a: Vector2, b: Vector2) -> bool:
	var length := a.distance_to(b)
	if length < MIN_SEGMENT_LENGTH:
		return false
	var direction := (b - a) / length
	if absf((point - a).cross(direction)) > POSITION_EPSILON:
		return false
	var projection := (point - a).dot(direction)
	return projection >= -POSITION_EPSILON and projection <= length + POSITION_EPSILON


func _line_intersection(a: Vector2, b: Vector2, c: Vector2, d: Vector2) -> Variant:
	var first_direction := b - a
	var second_direction := d - c
	var denominator := first_direction.cross(second_direction)
	if absf(denominator) <= 0.000001:
		return null
	return a + first_direction * ((c - a).cross(second_direction) / denominator)


func _duplicate_triangle_count(mesh: ArrayMesh) -> int:
	var seen: Dictionary = {}
	var duplicates := 0
	for surface_index in mesh.get_surface_count():
		var arrays := mesh.surface_get_arrays(surface_index)
		var vertices: PackedVector3Array = arrays[Mesh.ARRAY_VERTEX]
		var indices := PackedInt32Array()
		if arrays[Mesh.ARRAY_INDEX] != null:
			indices = arrays[Mesh.ARRAY_INDEX]
		var count := indices.size() if not indices.is_empty() else vertices.size()
		for offset in range(0, count, 3):
			var points: Array[String] = []
			for corner in 3:
				var vertex_index := indices[offset + corner] if not indices.is_empty() else offset + corner
				points.push_back(_vector_key(vertices[vertex_index]))
			points.sort()
			var key := "%s|%s|%s" % points
			if seen.has(key):
				duplicates += 1
			else:
				seen[key] = true
	return duplicates


func _vector_key(point: Vector3) -> String:
	return "%d,%d,%d" % [roundi(point.x / POSITION_EPSILON), roundi(point.y / POSITION_EPSILON), roundi(point.z / POSITION_EPSILON)]


func _emit_triangle(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, normal: Vector3) -> void:
	_emit_vertex(surface, a, normal, Vector2(a.x, a.z))
	_emit_vertex(surface, b, normal, Vector2(b.x, b.z))
	_emit_vertex(surface, c, normal, Vector2(c.x, c.z))


func _emit_quad(surface: SurfaceTool, faces: PackedVector3Array, a: Vector3, b: Vector3, c: Vector3, d: Vector3, normal: Vector3) -> void:
	_emit_visual_quad(surface, a, b, c, d, normal)
	_append_collision_quad(faces, a, b, c, d)


func _append_collision_quad(faces: PackedVector3Array, a: Vector3, b: Vector3, c: Vector3, d: Vector3) -> void:
	faces.append_array(PackedVector3Array([a, b, c, a, c, d]))


func _emit_visual_quad(surface: SurfaceTool, a: Vector3, b: Vector3, c: Vector3, d: Vector3, normal: Vector3) -> void:
	var width := a.distance_to(b)
	var height := a.distance_to(d)
	_emit_vertex(surface, a, normal, Vector2(0.0, 0.0))
	_emit_vertex(surface, b, normal, Vector2(width, 0.0))
	_emit_vertex(surface, c, normal, Vector2(width, height))
	_emit_vertex(surface, a, normal, Vector2(0.0, 0.0))
	_emit_vertex(surface, c, normal, Vector2(width, height))
	_emit_vertex(surface, d, normal, Vector2(0.0, height))


func _emit_visual_box(surface: SurfaceTool, size: Vector3, center: Vector3) -> void:
	var half := size * 0.5
	var p000 := center + Vector3(-half.x, -half.y, -half.z)
	var p001 := center + Vector3(-half.x, -half.y, half.z)
	var p010 := center + Vector3(-half.x, half.y, -half.z)
	var p011 := center + Vector3(-half.x, half.y, half.z)
	var p100 := center + Vector3(half.x, -half.y, -half.z)
	var p101 := center + Vector3(half.x, -half.y, half.z)
	var p110 := center + Vector3(half.x, half.y, -half.z)
	var p111 := center + Vector3(half.x, half.y, half.z)
	_emit_visual_quad(surface, p001, p101, p111, p011, Vector3.FORWARD)
	_emit_visual_quad(surface, p100, p000, p010, p110, Vector3.BACK)
	_emit_visual_quad(surface, p000, p001, p011, p010, Vector3.LEFT)
	_emit_visual_quad(surface, p101, p100, p110, p111, Vector3.RIGHT)
	_emit_visual_quad(surface, p010, p011, p111, p110, Vector3.UP)
	_emit_visual_quad(surface, p000, p100, p101, p001, Vector3.DOWN)


func _emit_vertex(surface: SurfaceTool, point: Vector3, normal: Vector3, uv: Vector2) -> void:
	surface.set_normal(normal)
	surface.set_uv(uv)
	surface.add_vertex(point)
