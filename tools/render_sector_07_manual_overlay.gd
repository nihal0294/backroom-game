extends SceneTree

const Layout = preload("res://scripts/levels/level_0/sector_07_layout.gd")
const SOURCE_TEXTURE = preload("res://assets/level_0/maps/sector_07.png")
const OUTPUT_PATH := "res://captures/sector_07_manual_overlay.png"
const VIEW_SIZE := Vector2i(1024, 1024)


func _initialize() -> void:
	await _render_overlay()


func _render_overlay() -> void:
	var viewport := SubViewport.new()
	viewport.size = VIEW_SIZE
	viewport.render_target_update_mode = SubViewport.UPDATE_ALWAYS
	viewport.transparent_bg = false
	root.add_child(viewport)

	var canvas := Node2D.new()
	viewport.add_child(canvas)
	var background := Sprite2D.new()
	background.texture = SOURCE_TEXTURE
	background.position = Vector2(512, 512)
	canvas.add_child(background)

	for room: Dictionary in Layout.rooms():
		_add_polygon(canvas, room.polygon, Color(0.08, 0.72, 1.0, 0.30), Color(0.2, 0.9, 1.0), 3.0)
		_add_label(canvas, _to_pixel(room.center), String(room.id).trim_prefix("S07-"), Color.WHITE)
	for corridor: Dictionary in Layout.corridors():
		_add_polygon(canvas, corridor.polygon, Color(0.15, 1.0, 0.35, 0.28), Color(0.2, 1.0, 0.45), 3.0)
		_add_label(canvas, _to_pixel(_polyline_midpoint(corridor.centerline)), String(corridor.id).trim_prefix("S07-"), Color.WHITE)
	for junction: Dictionary in Layout.junctions():
		_add_polygon(canvas, junction.polygon, Color(1.0, 0.65, 0.05, 0.35), Color(1.0, 0.8, 0.1), 3.0)
		_add_label(canvas, _to_pixel(junction.center), String(junction.id).trim_prefix("S07-"), Color.WHITE)
	for data: Dictionary in Layout.voids():
		_add_polygon(canvas, data.polygon, Color(0.75, 0.05, 0.08, 0.28), Color(1.0, 0.15, 0.18), 3.0)
		_add_label(canvas, _to_pixel(_polygon_center(data.polygon)), String(data.id).trim_prefix("S07-"), Color(1.0, 0.85, 0.85))
	for data: Dictionary in Layout.columns():
		_add_marker(canvas, _to_pixel(data.center), Color(1.0, 0.45, 0.05), 5.0)
		_add_label(canvas, _to_pixel(data.center) + Vector2(4, -13), String(data.id).trim_prefix("S07-"), Color(1.0, 0.8, 0.55), 10)
	for data: Dictionary in Layout.props():
		_add_marker(canvas, _to_pixel(data.center), Color(1.0, 0.05, 0.75), 6.0)
		_add_label(canvas, _to_pixel(data.center) + Vector2(4, 5), String(data.id).trim_prefix("S07-").trim_suffix("-Placeholder"), Color(1.0, 0.7, 0.9), 10)
	for key: String in Layout.terminals():
		var terminal: Dictionary = Layout.terminals()[key]
		var overlay_point: Vector2 = terminal.point + Layout.PLAN_OFFSET if key == "04" else terminal.point
		_add_marker(canvas, _to_pixel(overlay_point), Color(1.0, 0.1, 0.1), 9.0)
		_add_label(canvas, _to_pixel(overlay_point) + Vector2(8, -24), "TERM-" + key, Color.WHITE, 16)
	for opening: Dictionary in _openings():
		_add_marker(canvas, _to_pixel(opening.point), Color(0.1, 1.0, 1.0), 7.0)
		_add_label(canvas, _to_pixel(opening.point) + Vector2(6, 7), opening.id, Color(0.75, 1.0, 1.0), 11)

	await process_frame
	await RenderingServer.frame_post_draw
	var error := viewport.get_texture().get_image().save_png(OUTPUT_PATH)
	print("SECTOR07_MANUAL_OVERLAY: path=%s error=%s rooms=17 corridors=8 junctions=1" % [OUTPUT_PATH, error_string(error)])
	quit(0 if error == OK else 1)


func _add_polygon(parent: Node2D, local_points: PackedVector2Array, fill: Color, stroke: Color, width: float) -> void:
	var pixel_points := PackedVector2Array()
	for point: Vector2 in local_points:
		pixel_points.push_back(_to_pixel(point))
	var polygon := Polygon2D.new()
	polygon.polygon = pixel_points
	polygon.color = fill
	parent.add_child(polygon)
	var line := Line2D.new()
	line.points = pixel_points
	line.closed = true
	line.width = width
	line.default_color = stroke
	parent.add_child(line)


func _add_marker(parent: Node2D, point: Vector2, color: Color, radius: float) -> void:
	var marker := Polygon2D.new()
	var points := PackedVector2Array()
	for index in 12:
		points.push_back(point + Vector2.RIGHT.rotated(TAU * float(index) / 12.0) * radius)
	marker.polygon = points
	marker.color = color
	parent.add_child(marker)


func _add_label(parent: Node2D, point: Vector2, value: String, color: Color, size: int = 14) -> void:
	var label := Label.new()
	label.text = value
	label.position = point - Vector2(18, 10)
	label.add_theme_font_size_override("font_size", size)
	label.add_theme_color_override("font_color", color)
	label.add_theme_color_override("font_outline_color", Color.BLACK)
	label.add_theme_constant_override("outline_size", 4)
	parent.add_child(label)


func _to_pixel(point: Vector2) -> Vector2:
	var source_point := point - Layout.PLAN_OFFSET
	return Vector2(180.0 + source_point.x * 10.0, 323.0 - source_point.y * 10.0)


func _polygon_center(points: PackedVector2Array) -> Vector2:
	var total := Vector2.ZERO
	for point: Vector2 in points:
		total += point
	return total / float(points.size())


func _polyline_midpoint(points: PackedVector2Array) -> Vector2:
	var length := 0.0
	for index in points.size() - 1:
		length += points[index].distance_to(points[index + 1])
	var target := length * 0.5
	var travelled := 0.0
	for index in points.size() - 1:
		var segment := points[index].distance_to(points[index + 1])
		if travelled + segment >= target:
			return points[index].lerp(points[index + 1], (target - travelled) / segment)
		travelled += segment
	return points[-1]


func _openings() -> Array[Dictionary]:
	return [
		{"id": "OPEN-04", "point": Vector2.ZERO + Layout.PLAN_OFFSET},
		{"id": "OPEN-R01-C01", "point": Vector2(56.8, -10.7) + Layout.PLAN_OFFSET},
		{"id": "OPEN-J01-C02", "point": Vector2(50.0, -8.2) + Layout.PLAN_OFFSET},
		{"id": "OPEN-R06-C04", "point": Vector2(14.8, 2.3) + Layout.PLAN_OFFSET},
		{"id": "OPEN-R11-C05", "point": Vector2(12.0, -22.5) + Layout.PLAN_OFFSET},
		{"id": "OPEN-C07-R13", "point": Vector2(25.6, -36.5) + Layout.PLAN_OFFSET},
		{"id": "OPEN-R13-R14", "point": Vector2(20.5, -42.0) + Layout.PLAN_OFFSET},
		{"id": "OPEN-R14-C08", "point": Vector2(18.6, -47.0) + Layout.PLAN_OFFSET},
	]
