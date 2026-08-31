extends SceneTree

const Layout = preload("res://scripts/levels/level_0/sector_07_layout.gd")
const ANCHOR := Vector3(-6.0, 0.0, 29.26)
const SAMPLE_STEP := 0.25
const YAW_DEGREES := 150.0


func _initialize() -> void:
	var selected := Transform3D(Basis(Vector3.UP, deg_to_rad(YAW_DEGREES)), ANCHOR)
	var overlap_count := _count_overlaps(selected)
	print("SECTOR07_REGISTRATION: anchor=%s yaw=%.1f plan_offset=%s overlap_samples=%d sample_step=%.2f" % [
		ANCHOR, YAW_DEGREES, Layout.PLAN_OFFSET, overlap_count, SAMPLE_STEP,
	])
	for room: Dictionary in Layout.rooms():
		var room_count := _count_polygon_overlaps(selected, room.polygon)
		if room_count > 0:
			print("SECTOR07_REGISTRATION_OVERLAP: id=%s samples=%d" % [room.id, room_count])
	for corridor: Dictionary in Layout.corridors():
		var corridor_count := _count_polygon_overlaps(selected, corridor.polygon)
		if corridor_count > 0:
			print("SECTOR07_REGISTRATION_OVERLAP: id=%s samples=%d" % [corridor.id, corridor_count])
	quit(0 if overlap_count == 0 else 1)


func _count_overlaps(transform: Transform3D) -> int:
	var count := 0
	for shape: PackedVector2Array in Layout.walkable_shapes():
		count += _count_polygon_overlaps(transform, shape)
	return count


func _count_polygon_overlaps(
	transform: Transform3D,
	shape: PackedVector2Array
) -> int:
	var count := 0
	var bounds := _bounds(shape)
	var x := bounds.position.x
	while x <= bounds.end.x:
		var z := bounds.position.y
		while z <= bounds.end.y:
			var local_point := Vector2(x, z)
			if Geometry2D.is_point_in_polygon(local_point, shape):
				var world3 := transform * Vector3(x, 0.0, z)
				var world := Vector2(world3.x, world3.z)
				if not _authorized_seam(world) and _inside_sector04(world):
					count += 1
			z += SAMPLE_STEP
		x += SAMPLE_STEP
	return count


func _authorized_seam(point: Vector2) -> bool:
	return Rect2(-6.20, 29.26 - 1.30, 0.40, 2.60).has_point(point)


func _inside_sector04(point: Vector2) -> bool:
	for polygon: PackedVector2Array in _sector04_footprints():
		if Geometry2D.is_point_in_polygon(point, polygon):
			return true
	return false


func _bounds(points: PackedVector2Array) -> Rect2:
	var minimum := points[0]
	var maximum := points[0]
	for point: Vector2 in points:
		minimum = minimum.min(point)
		maximum = maximum.max(point)
	return Rect2(minimum, maximum - minimum)


func _rect_polygon(min_x: float, min_z: float, max_x: float, max_z: float) -> PackedVector2Array:
	return PackedVector2Array([Vector2(min_x, min_z), Vector2(max_x, min_z), Vector2(max_x, max_z), Vector2(min_x, max_z)])


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
