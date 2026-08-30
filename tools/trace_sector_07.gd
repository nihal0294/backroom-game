extends SceneTree

## Deterministic measurement trace for Sector 07. The generated layout freezes
## the 4 px occupancy grid so runtime geometry never reads the source bitmap.

const SOURCE_PATH := "res://assets/level_0/maps/sector_07.png"
const OUTPUT_PATH := "res://docs/levels/level-0-sector-07-trace.json"
const LAYOUT_PATH := "res://scripts/levels/level_0/sector_07_layout.gd"
const OVERLAY_PATH := "res://captures/sector_07_trace_overlay.png"
const SAMPLE_STEP := 4
const POLYGON_EPSILON_CELLS := 2.50
const METERS_PER_PIXEL := 0.09
const SOURCE_ORIGIN_PX := Vector2(180.0, 143.0)
const USEFUL_BOUNDS_PX := Rect2(180.0, 143.0, 665.0, 764.0)
const HOLE_CENTER_PX := Vector2(421.0, 737.0)
const HOLE_SIZE_PX := 1.20 / METERS_PER_PIXEL
const NARROW_WIDTH_PX := 2.15 / METERS_PER_PIXEL

const CONNECTORS := [
	{"id": "C07-ENTRY-04", "a": Vector2(180, 323), "b": Vector2(220, 340), "width_px": NARROW_WIDTH_PX},
	{"id": "C07-TO-08", "a": Vector2(294, 143), "b": Vector2(320, 286), "width_px": NARROW_WIDTH_PX},
	{"id": "C07-TO-11", "a": Vector2(680, 388), "b": Vector2(680, 420), "width_px": NARROW_WIDTH_PX},
	{"id": "C07-SOUTH-01", "a": Vector2(448, 516), "b": Vector2(390, 735), "width_px": NARROW_WIDTH_PX},
	{"id": "C07-SOUTH-02", "a": Vector2(380, 740), "b": Vector2(300, 840), "width_px": NARROW_WIDTH_PX},
]

const CORRIDOR_AUDIT := [
	{"id": "C07-01", "a": Vector2(180, 323), "b": Vector2(244, 356), "width_m": 2.15, "previous": "Sector04", "next": "R07-01"},
	{"id": "C07-02", "a": Vector2(294, 143), "b": Vector2(320, 286), "width_m": 2.15, "previous": "Terminal08", "next": "R07-02"},
	{"id": "C07-03", "a": Vector2(244, 356), "b": Vector2(316, 344), "width_m": 3.60, "previous": "R07-01", "next": "R07-02"},
	{"id": "C07-04", "a": Vector2(288, 412), "b": Vector2(380, 420), "width_m": 3.60, "previous": "R07-01", "next": "R07-03"},
	{"id": "C07-05", "a": Vector2(424, 324), "b": Vector2(500, 392), "width_m": 3.60, "previous": "R07-02", "next": "R07-04"},
	{"id": "C07-06", "a": Vector2(464, 500), "b": Vector2(560, 488), "width_m": 3.60, "previous": "R07-03", "next": "R07-05"},
	{"id": "C07-07", "a": Vector2(560, 488), "b": Vector2(700, 444), "width_m": 3.60, "previous": "R07-05", "next": "R07-06"},
	{"id": "C07-08", "a": Vector2(680, 420), "b": Vector2(680, 333), "width_m": 2.15, "previous": "R07-06", "next": "Terminal11"},
	{"id": "C07-09", "a": Vector2(700, 444), "b": Vector2(826, 450), "width_m": 3.60, "previous": "R07-06", "next": "Terminal06"},
	{"id": "C07-10", "a": Vector2(300, 548), "b": Vector2(328, 608), "width_m": 2.15, "previous": "R07-03", "next": "R07-07"},
	{"id": "C07-11", "a": Vector2(328, 608), "b": Vector2(436, 672), "width_m": 2.15, "previous": "R07-07", "next": "R07-08"},
	{"id": "C07-12", "a": Vector2(436, 672), "b": Vector2(488, 668), "width_m": 2.15, "previous": "R07-08", "next": "R07-09"},
	{"id": "C07-13", "a": Vector2(488, 668), "b": Vector2(464, 580), "width_m": 2.15, "previous": "R07-09", "next": "R07-07"},
	{"id": "C07-14", "a": Vector2(408, 700), "b": Vector2(388, 744), "width_m": 2.15, "previous": "R07-08", "next": "R07-10"},
	{"id": "C07-15", "a": Vector2(388, 744), "b": Vector2(328, 812), "width_m": 2.15, "previous": "R07-10", "next": "R07-11"},
	{"id": "C07-16", "a": Vector2(312, 800), "b": Vector2(288, 900), "width_m": 2.15, "previous": "R07-11", "next": "R07-12"},
]

const ROOM_AUDIT := [
	{"id": "R07-01", "polygon": [Vector2(212, 308), Vector2(316, 324), Vector2(300, 400), Vector2(236, 420), Vector2(180, 328)], "openings": ["C07-01", "C07-03", "C07-04"]},
	{"id": "R07-02", "polygon": [Vector2(316, 288), Vector2(424, 276), Vector2(448, 316), Vector2(400, 376), Vector2(316, 344)], "openings": ["C07-02", "C07-03", "C07-05"]},
	{"id": "R07-03", "polygon": [Vector2(272, 404), Vector2(436, 400), Vector2(464, 500), Vector2(432, 532), Vector2(312, 548)], "openings": ["C07-04", "C07-06", "C07-10"]},
	{"id": "R07-04", "polygon": [Vector2(448, 304), Vector2(516, 436), Vector2(496, 460), Vector2(436, 400)], "openings": ["C07-05", "C07-06"]},
	{"id": "R07-05", "polygon": [Vector2(496, 452), Vector2(648, 420), Vector2(656, 460), Vector2(556, 520)], "openings": ["C07-06", "C07-07"]},
	{"id": "R07-06", "polygon": [Vector2(648, 420), Vector2(832, 392), Vector2(844, 508), Vector2(700, 448)], "openings": ["C07-07", "C07-08", "C07-09"]},
	{"id": "R07-07", "polygon": [Vector2(292, 548), Vector2(364, 608), Vector2(436, 672), Vector2(464, 580)], "openings": ["C07-10", "C07-11", "C07-13"]},
	{"id": "R07-08", "polygon": [Vector2(364, 608), Vector2(488, 672), Vector2(436, 696), Vector2(408, 660)], "openings": ["C07-11", "C07-12", "C07-14"]},
	{"id": "R07-09", "polygon": [Vector2(464, 580), Vector2(536, 664), Vector2(488, 700), Vector2(436, 672)], "openings": ["C07-12", "C07-13"]},
	{"id": "R07-10", "polygon": [Vector2(324, 692), Vector2(448, 712), Vector2(408, 780), Vector2(324, 744)], "openings": ["C07-14", "C07-15"]},
	{"id": "R07-11", "polygon": [Vector2(300, 800), Vector2(332, 828), Vector2(300, 864), Vector2(272, 824)], "openings": ["C07-15", "C07-16"]},
	{"id": "R07-12", "polygon": [Vector2(288, 852), Vector2(308, 872), Vector2(296, 900), Vector2(272, 884)], "openings": ["C07-16"]},
]


func _initialize() -> void:
	var source := Image.load_from_file(ProjectSettings.globalize_path(SOURCE_PATH))
	if source == null or source.is_empty() or source.get_size() != Vector2i(1024, 1024):
		push_error("Sector 07 trace: expected a readable 1024 x 1024 source")
		quit(1)
		return
	var grid_size := Vector2i(source.get_width() / SAMPLE_STEP, source.get_height() / SAMPLE_STEP)
	var occupancy := _sample_floor(source, grid_size)
	for connector: Dictionary in CONNECTORS:
		_paint_corridor(occupancy, grid_size, connector.a, connector.b, float(connector.width_px))
	var classification := _classify_enclosed_empty(occupancy, grid_size)
	var pillars: Array[Rect2] = classification.pillars
	var voids: Array[Rect2] = classification.voids
	_fill_rect(occupancy, grid_size, Rect2(HOLE_CENTER_PX - Vector2.ONE * 12.0, Vector2.ONE * 24.0), true)
	var traced_rects := _greedy_rectangles(occupancy, grid_size)
	var ceiling_rects := traced_rects.duplicate()
	var exact_hole := Rect2(HOLE_CENTER_PX - Vector2.ONE * HOLE_SIZE_PX * 0.5, Vector2.ONE * HOLE_SIZE_PX)
	var floor_rects := _subtract_rect_from_all(traced_rects, exact_hole)
	var boundaries := _contour_runs(occupancy, grid_size)
	boundaries.append_array(_rect_boundary_runs(exact_hole))
	var partitions := _trace_partitions(source)
	var trace := _make_trace(source, floor_rects, ceiling_rects, boundaries, pillars, voids, partitions, exact_hole)
	if not _write_json(trace) or not _write_layout(floor_rects, ceiling_rects, boundaries, pillars, partitions):
		quit(1)
		return
	if not _write_overlay(source, boundaries, pillars, voids, partitions, exact_hole):
		quit(1)
		return
	print("SECTOR_07_TRACE: sample=%d epsilon=%.2f scale=%.2f origin=(%.0f,%.0f) floor_rects=%d ceiling_rects=%d boundaries=%d pillars=%d voids=%d partitions=%d corridors=%d rooms=%d bounds=59.85x68.76m" % [SAMPLE_STEP, POLYGON_EPSILON_CELLS, METERS_PER_PIXEL, SOURCE_ORIGIN_PX.x, SOURCE_ORIGIN_PX.y, floor_rects.size(), ceiling_rects.size(), boundaries.size(), pillars.size(), voids.size(), partitions.size(), CORRIDOR_AUDIT.size(), ROOM_AUDIT.size()])
	quit()


func _sample_floor(source: Image, grid_size: Vector2i) -> PackedByteArray:
	var occupancy := PackedByteArray()
	occupancy.resize(grid_size.x * grid_size.y)
	for cell_y in grid_size.y:
		for cell_x in grid_size.x:
			var cell_center := (Vector2(cell_x, cell_y) + Vector2.ONE * 0.5) * SAMPLE_STEP
			if not USEFUL_BOUNDS_PX.has_point(cell_center):
				continue
			var hits := 0
			for offset_y in SAMPLE_STEP:
				for offset_x in SAMPLE_STEP:
					if _is_sector_floor(source.get_pixel(cell_x * SAMPLE_STEP + offset_x, cell_y * SAMPLE_STEP + offset_y)):
						hits += 1
			occupancy[cell_y * grid_size.x + cell_x] = 1 if hits >= 8 else 0
	return occupancy


func _is_sector_floor(color: Color) -> bool:
	return color.r > 0.62 and color.g > 0.48 and color.b > 0.30 and color.r > color.g + 0.05 and color.g > color.b + 0.035


func _paint_corridor(occupancy: PackedByteArray, size: Vector2i, a_px: Vector2, b_px: Vector2, width_px: float) -> void:
	var minimum := (a_px.min(b_px) - Vector2.ONE * width_px).floor() / SAMPLE_STEP
	var maximum := (a_px.max(b_px) + Vector2.ONE * width_px).ceil() / SAMPLE_STEP
	for y in range(maxi(0, int(minimum.y)), mini(size.y, int(maximum.y) + 1)):
		for x in range(maxi(0, int(minimum.x)), mini(size.x, int(maximum.x) + 1)):
			var center := (Vector2(x, y) + Vector2.ONE * 0.5) * SAMPLE_STEP
			if USEFUL_BOUNDS_PX.has_point(center) and _distance_to_segment(center, a_px, b_px) <= width_px * 0.5:
				occupancy[y * size.x + x] = 1


func _distance_to_segment(point: Vector2, a: Vector2, b: Vector2) -> float:
	var delta := b - a
	if delta.length_squared() <= 0.0001:
		return point.distance_to(a)
	var t := clampf((point - a).dot(delta) / delta.length_squared(), 0.0, 1.0)
	return point.distance_to(a + delta * t)


func _classify_enclosed_empty(occupancy: PackedByteArray, size: Vector2i) -> Dictionary:
	var visited := PackedByteArray()
	visited.resize(occupancy.size())
	var pillars: Array[Rect2] = []
	var voids: Array[Rect2] = []
	for y in size.y:
		for x in size.x:
			var start_index := y * size.x + x
			if occupancy[start_index] == 1 or visited[start_index] == 1:
				continue
			var queue: Array[Vector2i] = [Vector2i(x, y)]
			visited[start_index] = 1
			var cells: Array[Vector2i] = []
			var touches_edge := false
			while not queue.is_empty():
				var cell: Vector2i = queue.pop_back()
				cells.push_back(cell)
				touches_edge = touches_edge or cell.x == 0 or cell.y == 0 or cell.x == size.x - 1 or cell.y == size.y - 1
				for neighbor: Vector2i in [cell + Vector2i.LEFT, cell + Vector2i.RIGHT, cell + Vector2i.UP, cell + Vector2i.DOWN]:
					if neighbor.x < 0 or neighbor.y < 0 or neighbor.x >= size.x or neighbor.y >= size.y:
						continue
					var neighbor_index: int = neighbor.y * size.x + neighbor.x
					if occupancy[neighbor_index] == 0 and visited[neighbor_index] == 0:
						visited[neighbor_index] = 1
						queue.push_back(neighbor)
			if touches_edge:
				continue
			var bounds := _cell_bounds(cells)
			var center_px := bounds.get_center()
			if center_px.distance_to(HOLE_CENTER_PX) < 24.0:
				continue
			if cells.size() <= 100 and bounds.size.x <= 48.0 and bounds.size.y <= 48.0:
				pillars.push_back(bounds)
				for cell: Vector2i in cells:
					occupancy[cell.y * size.x + cell.x] = 1
			else:
				voids.push_back(bounds)
	return {"pillars": pillars, "voids": voids}


func _cell_bounds(cells: Array[Vector2i]) -> Rect2:
	var minimum := Vector2(cells[0]) * SAMPLE_STEP
	var maximum := minimum + Vector2.ONE * SAMPLE_STEP
	for cell: Vector2i in cells:
		minimum = minimum.min(Vector2(cell) * SAMPLE_STEP)
		maximum = maximum.max((Vector2(cell) + Vector2.ONE) * SAMPLE_STEP)
	return Rect2(minimum, maximum - minimum)


func _fill_rect(occupancy: PackedByteArray, size: Vector2i, rect_px: Rect2, value: bool) -> void:
	var first := Vector2i((rect_px.position / SAMPLE_STEP).floor())
	var last := Vector2i((rect_px.end / SAMPLE_STEP).ceil())
	for y in range(maxi(0, first.y), mini(size.y, last.y)):
		for x in range(maxi(0, first.x), mini(size.x, last.x)):
			occupancy[y * size.x + x] = 1 if value else 0


func _greedy_rectangles(occupancy: PackedByteArray, size: Vector2i) -> Array[Rect2]:
	var used := PackedByteArray()
	used.resize(occupancy.size())
	var result: Array[Rect2] = []
	for y in size.y:
		for x in size.x:
			var index := y * size.x + x
			if occupancy[index] == 0 or used[index] == 1:
				continue
			var width := 1
			while x + width < size.x and occupancy[y * size.x + x + width] == 1 and used[y * size.x + x + width] == 0:
				width += 1
			var height := 1
			var growing := true
			while growing and y + height < size.y:
				for grow_x in range(x, x + width):
					var grow_index := (y + height) * size.x + grow_x
					if occupancy[grow_index] == 0 or used[grow_index] == 1:
						growing = false
						break
				if growing:
					height += 1
			for mark_y in range(y, y + height):
				for mark_x in range(x, x + width):
					used[mark_y * size.x + mark_x] = 1
			result.push_back(Rect2(Vector2(x, y) * SAMPLE_STEP, Vector2(width, height) * SAMPLE_STEP))
	return result


func _subtract_rect_from_all(rects: Array[Rect2], cut: Rect2) -> Array[Rect2]:
	var result: Array[Rect2] = []
	for rect: Rect2 in rects:
		var overlap := rect.intersection(cut)
		if overlap.size.x <= 0.0 or overlap.size.y <= 0.0:
			result.push_back(rect)
			continue
		if overlap.position.y > rect.position.y:
			result.push_back(Rect2(rect.position, Vector2(rect.size.x, overlap.position.y - rect.position.y)))
		if overlap.end.y < rect.end.y:
			result.push_back(Rect2(Vector2(rect.position.x, overlap.end.y), Vector2(rect.size.x, rect.end.y - overlap.end.y)))
		if overlap.position.x > rect.position.x:
			result.push_back(Rect2(Vector2(rect.position.x, overlap.position.y), Vector2(overlap.position.x - rect.position.x, overlap.size.y)))
		if overlap.end.x < rect.end.x:
			result.push_back(Rect2(Vector2(overlap.end.x, overlap.position.y), Vector2(rect.end.x - overlap.end.x, overlap.size.y)))
	return result


func _boundary_runs(occupancy: PackedByteArray, size: Vector2i) -> Array[Dictionary]:
	var raw: Array[Dictionary] = []
	for y in size.y:
		for x in size.x:
			if occupancy[y * size.x + x] == 0:
				continue
			var x0 := float(x * SAMPLE_STEP)
			var x1 := float((x + 1) * SAMPLE_STEP)
			var y0 := float(y * SAMPLE_STEP)
			var y1 := float((y + 1) * SAMPLE_STEP)
			if y == 0 or occupancy[(y - 1) * size.x + x] == 0:
				raw.push_back({"a": Vector2(x0, y0), "b": Vector2(x1, y0), "normal": Vector2.UP})
			if y == size.y - 1 or occupancy[(y + 1) * size.x + x] == 0:
				raw.push_back({"a": Vector2(x1, y1), "b": Vector2(x0, y1), "normal": Vector2.DOWN})
			if x == 0 or occupancy[y * size.x + x - 1] == 0:
				raw.push_back({"a": Vector2(x0, y1), "b": Vector2(x0, y0), "normal": Vector2.LEFT})
			if x == size.x - 1 or occupancy[y * size.x + x + 1] == 0:
				raw.push_back({"a": Vector2(x1, y0), "b": Vector2(x1, y1), "normal": Vector2.RIGHT})
	return _merge_collinear_runs(raw)


func _contour_runs(occupancy: PackedByteArray, size: Vector2i) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for polygon: PackedVector2Array in _grid_boundary_loops(occupancy, size):
		if polygon.size() < 3:
			continue
		for index in polygon.size():
			var a_cells := polygon[index]
			var b_cells := polygon[(index + 1) % polygon.size()]
			if a_cells.distance_to(b_cells) <= 0.01:
				continue
			var direction := (b_cells - a_cells).normalized()
			result.push_back({"a": a_cells * SAMPLE_STEP, "b": b_cells * SAMPLE_STEP, "normal": Vector2(-direction.y, direction.x)})
	return result


func _grid_boundary_loops(occupancy: PackedByteArray, size: Vector2i) -> Array[PackedVector2Array]:
	var edges: Array[Dictionary] = []
	for y in size.y:
		for x in size.x:
			if occupancy[y * size.x + x] == 0:
				continue
			if y == 0 or occupancy[(y - 1) * size.x + x] == 0:
				edges.push_back({"a": Vector2(x, y), "b": Vector2(x + 1, y)})
			if x == size.x - 1 or occupancy[y * size.x + x + 1] == 0:
				edges.push_back({"a": Vector2(x + 1, y), "b": Vector2(x + 1, y + 1)})
			if y == size.y - 1 or occupancy[(y + 1) * size.x + x] == 0:
				edges.push_back({"a": Vector2(x + 1, y + 1), "b": Vector2(x, y + 1)})
			if x == 0 or occupancy[y * size.x + x - 1] == 0:
				edges.push_back({"a": Vector2(x, y + 1), "b": Vector2(x, y)})
	var starts: Dictionary = {}
	for edge_index in edges.size():
		var key := _point_key(edges[edge_index]["a"])
		if not starts.has(key):
			starts[key] = []
		starts[key].push_back(edge_index)
	var used := PackedByteArray()
	used.resize(edges.size())
	var loops: Array[PackedVector2Array] = []
	for first_index in edges.size():
		if used[first_index] == 1:
			continue
		var loop := PackedVector2Array()
		var current_index := first_index
		var first_point: Vector2 = edges[first_index]["a"]
		while current_index >= 0 and used[current_index] == 0:
			used[current_index] = 1
			var edge: Dictionary = edges[current_index]
			loop.push_back(edge["a"])
			var finish: Vector2 = edge["b"]
			if finish == first_point:
				break
			current_index = -1
			for candidate_index: int in starts.get(_point_key(finish), []):
				if used[candidate_index] == 0:
					current_index = candidate_index
					break
		if loop.size() >= 3:
			loops.push_back(_simplify_closed_loop(loop, POLYGON_EPSILON_CELLS))
	return loops


func _simplify_closed_loop(points: PackedVector2Array, epsilon: float) -> PackedVector2Array:
	if points.size() <= 4:
		return points
	var split := floori(float(points.size()) / 2.0)
	var first_half := PackedVector2Array()
	for index in range(0, split + 1):
		first_half.push_back(points[index])
	var second_half := PackedVector2Array()
	for index in range(split, points.size()):
		second_half.push_back(points[index])
	second_half.push_back(points[0])
	var first_simple := _simplify_open_line(first_half, epsilon)
	var second_simple := _simplify_open_line(second_half, epsilon)
	var result := PackedVector2Array(first_simple)
	for index in range(1, second_simple.size() - 1):
		result.push_back(second_simple[index])
	return result


func _simplify_open_line(points: PackedVector2Array, epsilon: float) -> PackedVector2Array:
	if points.size() <= 2:
		return points
	var maximum_distance := 0.0
	var split_index := 0
	for index in range(1, points.size() - 1):
		var distance := _distance_to_segment(points[index], points[0], points[points.size() - 1])
		if distance > maximum_distance:
			maximum_distance = distance
			split_index = index
	if maximum_distance <= epsilon:
		return PackedVector2Array([points[0], points[points.size() - 1]])
	var left := _simplify_open_line(points.slice(0, split_index + 1), epsilon)
	var right := _simplify_open_line(points.slice(split_index), epsilon)
	left.resize(left.size() - 1)
	left.append_array(right)
	return left


func _point_key(point: Vector2) -> String:
	return "%d:%d" % [roundi(point.x), roundi(point.y)]


func _merge_collinear_runs(raw: Array[Dictionary]) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	var pending := raw.duplicate(true)
	while not pending.is_empty():
		var run: Dictionary = pending.pop_back()
		var changed := true
		while changed:
			changed = false
			for index in pending.size():
				var other: Dictionary = pending[index]
				if Vector2(run.normal).dot(Vector2(other.normal)) < 0.9999:
					continue
				if Vector2(run.b).distance_to(Vector2(other.a)) <= 0.01:
					run.b = other.b
					pending.remove_at(index)
					changed = true
					break
				if Vector2(other.b).distance_to(Vector2(run.a)) <= 0.01:
					run.a = other.a
					pending.remove_at(index)
					changed = true
					break
		result.push_back(run)
	return result


func _rect_boundary_runs(rect: Rect2) -> Array[Dictionary]:
	return [
		{"a": rect.position, "b": Vector2(rect.position.x, rect.end.y), "normal": Vector2.LEFT},
		{"a": Vector2(rect.position.x, rect.end.y), "b": rect.end, "normal": Vector2.DOWN},
		{"a": rect.end, "b": Vector2(rect.end.x, rect.position.y), "normal": Vector2.RIGHT},
		{"a": Vector2(rect.end.x, rect.position.y), "b": rect.position, "normal": Vector2.UP},
	]


func _trace_partitions(source: Image) -> Array[Dictionary]:
	var mask := PackedByteArray()
	mask.resize(source.get_width() * source.get_height())
	for y in range(143, 907):
		for x in range(180, 845):
			mask[y * source.get_width() + x] = 1 if _is_partition_pixel(source.get_pixel(x, y)) else 0
	var visited := PackedByteArray()
	visited.resize(mask.size())
	var result: Array[Dictionary] = []
	for y in range(143, 907):
		for x in range(180, 845):
			var start := y * source.get_width() + x
			if mask[start] == 0 or visited[start] == 1:
				continue
			var queue: Array[Vector2i] = [Vector2i(x, y)]
			visited[start] = 1
			var points := PackedVector2Array()
			while not queue.is_empty():
				var point: Vector2i = queue.pop_back()
				points.push_back(Vector2(point))
				for oy in range(-1, 2):
					for ox in range(-1, 2):
						var neighbor := point + Vector2i(ox, oy)
						if neighbor.x < 180 or neighbor.y < 143 or neighbor.x > 844 or neighbor.y > 906:
							continue
						var neighbor_index := neighbor.y * source.get_width() + neighbor.x
						if mask[neighbor_index] == 1 and visited[neighbor_index] == 0:
							visited[neighbor_index] = 1
							queue.push_back(neighbor)
			if points.size() < 8:
				continue
			var segment := _principal_segment(points)
			if Vector2(segment.a).distance_to(Vector2(segment.b)) < 18.0 or float(segment.width) > 8.0:
				continue
			segment.id = "P07-%02d" % (result.size() + 1)
			result.push_back(segment)
	return result


func _is_partition_pixel(color: Color) -> bool:
	var target := Color8(154, 143, 114)
	var distance := Vector3(color.r - target.r, color.g - target.g, color.b - target.b).length()
	return distance < 0.16 and color.r - color.g < 0.12 and color.g - color.b > 0.045


func _principal_segment(points: PackedVector2Array) -> Dictionary:
	var center := Vector2.ZERO
	for point in points:
		center += point
	center /= points.size()
	var xx := 0.0
	var yy := 0.0
	var xy := 0.0
	for point in points:
		var delta := point - center
		xx += delta.x * delta.x
		yy += delta.y * delta.y
		xy += delta.x * delta.y
	var angle := 0.5 * atan2(2.0 * xy, xx - yy)
	var direction := Vector2(cos(angle), sin(angle)).normalized()
	var side := Vector2(-direction.y, direction.x)
	var minimum := INF
	var maximum := -INF
	var min_side := INF
	var max_side := -INF
	for point in points:
		var delta := point - center
		minimum = minf(minimum, delta.dot(direction))
		maximum = maxf(maximum, delta.dot(direction))
		min_side = minf(min_side, delta.dot(side))
		max_side = maxf(max_side, delta.dot(side))
	return {"a": (center + direction * minimum).round(), "b": (center + direction * maximum).round(), "width": max_side - min_side + 1.0}


func _make_trace(source: Image, floor_rects: Array[Rect2], ceiling_rects: Array[Rect2], boundaries: Array[Dictionary], pillars: Array[Rect2], voids: Array[Rect2], partitions: Array[Dictionary], exact_hole: Rect2) -> Dictionary:
	var corridors: Array[Dictionary] = []
	for source_corridor: Dictionary in CORRIDOR_AUDIT:
		var corridor := source_corridor.duplicate(true)
		corridor["a_px"] = _vector_array(corridor["a"])
		corridor["b_px"] = _vector_array(corridor["b"])
		corridor.erase("a")
		corridor.erase("b")
		var a_m := _to_local(Vector2(source_corridor.a))
		var b_m := _to_local(Vector2(source_corridor.b))
		corridor["a_m"] = _vector_array(a_m)
		corridor["b_m"] = _vector_array(b_m)
		corridor["length_m"] = snappedf(a_m.distance_to(b_m), 0.001)
		corridor["bearing_deg"] = snappedf(rad_to_deg((b_m - a_m).angle()), 0.1)
		corridors.push_back(corridor)
	var rooms: Array[Dictionary] = []
	for source_room: Dictionary in ROOM_AUDIT:
		var room := {"id": source_room.id, "openings": source_room.openings, "polygon_px": [], "polygon_m": []}
		var minimum := Vector2(INF, INF)
		var maximum := Vector2(-INF, -INF)
		for point: Vector2 in source_room.polygon:
			room.polygon_px.push_back(_vector_array(point))
			var local := _to_local(point)
			room.polygon_m.push_back(_vector_array(local))
			minimum = minimum.min(local)
			maximum = maximum.max(local)
		room["max_width_m"] = snappedf(maximum.x - minimum.x, 0.001)
		room["max_depth_m"] = snappedf(maximum.y - minimum.y, 0.001)
		rooms.push_back(room)
	return {
		"schema": "level_0_sector_07_trace_v2",
		"source": SOURCE_PATH,
		"source_size_px": [source.get_width(), source.get_height()],
		"sample_step_px": SAMPLE_STEP,
		"polygon_epsilon_cells": POLYGON_EPSILON_CELLS,
		"meters_per_pixel": METERS_PER_PIXEL,
		"source_origin_px": _vector_array(SOURCE_ORIGIN_PX),
		"useful_bounds_px": [180, 143, 844, 906],
		"expected_bounds_m": [0.0, 0.0, 59.85, 68.76],
		"floor_rectangles_px": _rect_arrays(floor_rects),
		"ceiling_rectangles_px": _rect_arrays(ceiling_rects),
		"boundary_runs_px": _run_arrays(boundaries),
		"pillar_bounds_px": _rect_arrays(pillars),
		"large_void_bounds_px": _rect_arrays(voids),
		"partition_runs_px": _partition_arrays(partitions),
		"square_hole_px": _rect_array(exact_hole),
		"corridors": corridors,
		"rooms": rooms,
	}


func _write_json(trace: Dictionary) -> bool:
	var output := FileAccess.open(OUTPUT_PATH, FileAccess.WRITE)
	if output == null:
		push_error("Sector 07 trace: cannot write %s" % OUTPUT_PATH)
		return false
	output.store_string(JSON.stringify(trace, "\t") + "\n")
	output.close()
	return true


func _write_layout(floor_rects: Array[Rect2], ceiling_rects: Array[Rect2], boundaries: Array[Dictionary], pillars: Array[Rect2], partitions: Array[Dictionary]) -> bool:
	var output := FileAccess.open(LAYOUT_PATH, FileAccess.WRITE)
	if output == null:
		push_error("Sector 07 trace: cannot write %s" % LAYOUT_PATH)
		return false
	var text := "extends RefCounted\n\n## Generated by res://tools/trace_sector_07.gd. Do not hand-edit.\n"
	text += "const SOURCE_ORIGIN_PX := Vector2(180.0, 143.0)\nconst METERS_PER_PIXEL := 0.09\n\n"
	text += _gd_rect_function("floor_rects_px", floor_rects)
	text += _gd_rect_function("ceiling_rects_px", ceiling_rects)
	text += _gd_run_function("boundary_runs_px", boundaries)
	text += _gd_rect_function("pillar_rects_px", pillars)
	text += _gd_partition_function("partition_runs_px", partitions)
	output.store_string(text)
	output.close()
	return true


func _gd_rect_function(function_name: String, rects: Array[Rect2]) -> String:
	var text := "\nstatic func %s() -> Array[Rect2]:\n\treturn [\n" % function_name
	for rect in rects:
		text += "\t\tRect2(%.3f, %.3f, %.3f, %.3f),\n" % [rect.position.x, rect.position.y, rect.size.x, rect.size.y]
	return text + "\t]\n"


func _gd_run_function(function_name: String, runs: Array[Dictionary]) -> String:
	var text := "\nstatic func %s() -> Array[Dictionary]:\n\treturn [\n" % function_name
	for run in runs:
		text += "\t\t{\"a\": Vector2(%.3f, %.3f), \"b\": Vector2(%.3f, %.3f), \"normal\": Vector2(%.1f, %.1f)},\n" % [run.a.x, run.a.y, run.b.x, run.b.y, run.normal.x, run.normal.y]
	return text + "\t]\n"


func _gd_partition_function(function_name: String, runs: Array[Dictionary]) -> String:
	var text := "\nstatic func %s() -> Array[Dictionary]:\n\treturn [\n" % function_name
	for run in runs:
		text += "\t\t{\"id\": \"%s\", \"a\": Vector2(%.3f, %.3f), \"b\": Vector2(%.3f, %.3f)},\n" % [run.id, run.a.x, run.a.y, run.b.x, run.b.y]
	return text + "\t]\n"


func _write_overlay(source: Image, boundaries: Array[Dictionary], pillars: Array[Rect2], voids: Array[Rect2], partitions: Array[Dictionary], hole: Rect2) -> bool:
	var overlay := source.duplicate()
	for run in boundaries:
		_draw_line(overlay, Vector2i(run.a), Vector2i(run.b), Color(0.0, 1.0, 0.85, 1.0), 1)
	for partition in partitions:
		_draw_line(overlay, Vector2i(partition.a), Vector2i(partition.b), Color(0.2, 0.55, 1.0, 1.0), 2)
	for pillar in pillars:
		_draw_rect(overlay, pillar, Color(1.0, 0.2, 0.85, 1.0), 1)
	for void_rect in voids:
		_draw_rect(overlay, void_rect, Color(1.0, 0.55, 0.0, 1.0), 1)
	_draw_rect(overlay, hole, Color(1.0, 0.0, 0.0, 1.0), 2)
	for corridor in CORRIDOR_AUDIT:
		_draw_line(overlay, Vector2i(corridor.a), Vector2i(corridor.b), Color(0.55, 0.2, 1.0, 1.0), 1)
	var error: Error = overlay.save_png(ProjectSettings.globalize_path(OVERLAY_PATH))
	if error != OK:
		push_error("Sector 07 trace overlay failed: %s" % error_string(error))
		return false
	return true


func _to_local(point_px: Vector2) -> Vector2:
	return (point_px - SOURCE_ORIGIN_PX) * METERS_PER_PIXEL


func _rect_arrays(rects: Array[Rect2]) -> Array:
	var result := []
	for rect in rects:
		result.push_back(_rect_array(rect))
	return result


func _rect_array(rect: Rect2) -> Array[float]:
	return [snappedf(rect.position.x, 0.001), snappedf(rect.position.y, 0.001), snappedf(rect.end.x, 0.001), snappedf(rect.end.y, 0.001)]


func _run_arrays(runs: Array[Dictionary]) -> Array:
	var result := []
	for run in runs:
		result.push_back({"a": _vector_array(run.a), "b": _vector_array(run.b), "normal": _vector_array(run.normal)})
	return result


func _partition_arrays(runs: Array[Dictionary]) -> Array:
	var result := []
	for run in runs:
		result.push_back({"id": run.id, "a": _vector_array(run.a), "b": _vector_array(run.b), "width_px": snappedf(float(run.width), 0.001)})
	return result


func _vector_array(vector: Vector2) -> Array[float]:
	return [snappedf(vector.x, 0.001), snappedf(vector.y, 0.001)]


func _draw_rect(image: Image, rect: Rect2, color: Color, thickness: int) -> void:
	_draw_line(image, Vector2i(rect.position), Vector2i(rect.end.x, rect.position.y), color, thickness)
	_draw_line(image, Vector2i(rect.end.x, rect.position.y), Vector2i(rect.end), color, thickness)
	_draw_line(image, Vector2i(rect.end), Vector2i(rect.position.x, rect.end.y), color, thickness)
	_draw_line(image, Vector2i(rect.position.x, rect.end.y), Vector2i(rect.position), color, thickness)


func _draw_line(image: Image, start: Vector2i, finish: Vector2i, color: Color, thickness: int) -> void:
	var delta_x := absi(finish.x - start.x)
	var step_x := 1 if start.x < finish.x else -1
	var delta_y := -absi(finish.y - start.y)
	var step_y := 1 if start.y < finish.y else -1
	var line_error := delta_x + delta_y
	var current := start
	while true:
		for offset_y in range(-thickness, thickness + 1):
			for offset_x in range(-thickness, thickness + 1):
				var pixel := current + Vector2i(offset_x, offset_y)
				if Rect2i(Vector2i.ZERO, image.get_size()).has_point(pixel):
					image.set_pixelv(pixel, color)
		if current == finish:
			break
		var doubled_error := 2 * line_error
		if doubled_error >= delta_y:
			line_error += delta_y
			current.x += step_x
		if doubled_error <= delta_x:
			line_error += delta_x
			current.y += step_y
