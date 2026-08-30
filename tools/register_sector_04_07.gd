extends SceneTree

## Diagnostic-only image registration for the controlled Sector04/Sector07 seam.
## The runtime must not depend on this script or its JSON output.

const MASTER_PATH := "res://assets/level_0/maps/level0_master_numbered.png"
const SECTOR04_PATH := "res://assets/level_0/maps/sector_04.png"
const SECTOR07_PATH := "res://assets/level_0/maps/sector_07.png"
const OUTPUT_PATH := "res://docs/levels/level-0-sector-04-07-registration.json"
const OVERLAY_PATH := "res://captures/sector_04_07_connection_overlay.png"
const MASTER_ORIGINAL_SIZE := Vector2(3800.0, 3700.0)
const A141_ORIGINAL_PX := Vector2(720.0, 2780.0)


func _initialize() -> void:
	var master := Image.load_from_file(ProjectSettings.globalize_path(MASTER_PATH))
	var sector04 := Image.load_from_file(ProjectSettings.globalize_path(SECTOR04_PATH))
	var sector07 := Image.load_from_file(ProjectSettings.globalize_path(SECTOR07_PATH))
	if master == null or master.is_empty() or sector04 == null or sector04.is_empty() or sector07 == null or sector07.is_empty():
		push_error("Sector04/07 registration: source image missing")
		quit(1)
		return
	var master_mask := _build_mask(master)
	var registration04 := _fit(
		sector04, master_mask, master.get_size(),
		Vector3(0.40, 0.66, 0.02), Rect2(-60.0, 1380.0, 150.0, 190.0)
	)
	var registration07 := _fit(
		sector07, master_mask, master.get_size(),
		Vector3(0.72, 1.02, 0.02), Rect2(-20.0, 1080.0, 180.0, 260.0)
	)
	var outline04 := _outline_points(sector04, 2)
	var outline07 := _outline_points(sector07, 2)
	var a141_master := Vector2(
		A141_ORIGINAL_PX.x * float(master.get_width()) / MASTER_ORIGINAL_SIZE.x,
		A141_ORIGINAL_PX.y * float(master.get_height()) / MASTER_ORIGINAL_SIZE.y
	)
	var contact := _closest_contact(outline04, registration04, outline07, registration07, a141_master)
	var result := {
		"schema": "level_0_sector_04_07_registration_v1",
		"master_size_px": [master.get_width(), master.get_height()],
		"a141_annotation_master_px": _vector_to_array(a141_master),
		"sector_04": registration04,
		"sector_07": registration07,
		"contact": contact,
	}
	var output := FileAccess.open(OUTPUT_PATH, FileAccess.WRITE)
	if output == null:
		push_error("Sector04/07 registration: cannot write output")
		quit(1)
		return
	output.store_string(JSON.stringify(result, "\t") + "\n")
	output.close()
	var overlay := master.duplicate()
	_draw_registered_outline(overlay, outline04, registration04, Color(0.0, 0.85, 1.0, 1.0))
	_draw_registered_outline(overlay, outline07, registration07, Color(0.1, 1.0, 0.3, 1.0))
	_draw_cross(overlay, Vector2i(a141_master), Color(1.0, 0.85, 0.0, 1.0), 10)
	var contact_master: Array = contact["master_px"]
	_draw_cross(overlay, Vector2i(roundi(float(contact_master[0])), roundi(float(contact_master[1]))), Color(1.0, 0.0, 0.85, 1.0), 12)
	var overlay_error: Error = overlay.save_png(ProjectSettings.globalize_path(OVERLAY_PATH))
	if overlay_error != OK:
		push_error("Sector04/07 registration overlay failed: %s" % error_string(overlay_error))
		quit(1)
		return
	print(
		"SECTOR_04_07_REGISTRATION: s04 scale=%.4f offset=(%.1f,%.1f) score=%.4f s07 scale=%.4f offset=(%.1f,%.1f) score=%.4f contact_master=(%.1f,%.1f) gap=%.2fpx"
		% [registration04.scale, registration04.offset[0], registration04.offset[1], registration04.score, registration07.scale, registration07.offset[0], registration07.offset[1], registration07.score, contact.master_px[0], contact.master_px[1], contact.gap_px]
	)
	quit()


func _fit(local: Image, master_mask: PackedByteArray, master_size: Vector2i, scale_range: Vector3, offset_range: Rect2) -> Dictionary:
	var occupied := _occupied_points(local, 12)
	var outline := _outline_points(local, 6)
	var best := {"scale": 0.0, "offset": [0.0, 0.0], "score": -INF}
	var scale := scale_range.x
	while scale <= scale_range.y + 0.0001:
		var offset_y := offset_range.position.y
		while offset_y <= offset_range.end.y + 0.001:
			var offset_x := offset_range.position.x
			while offset_x <= offset_range.end.x + 0.001:
				var score := _registration_score(occupied, outline, scale, Vector2(offset_x, offset_y), master_mask, master_size)
				if score > float(best["score"]):
					best = {"scale": scale, "offset": [offset_x, offset_y], "score": score}
				offset_x += 6.0
			offset_y += 6.0
		scale += scale_range.z
	var coarse_scale := float(best["scale"])
	var coarse_offset := Vector2(best["offset"][0], best["offset"][1])
	var refined := best
	scale = coarse_scale - 0.025
	while scale <= coarse_scale + 0.0251:
		var offset_y := coarse_offset.y - 7.0
		while offset_y <= coarse_offset.y + 7.001:
			var offset_x := coarse_offset.x - 7.0
			while offset_x <= coarse_offset.x + 7.001:
				var score := _registration_score(occupied, outline, scale, Vector2(offset_x, offset_y), master_mask, master_size)
				if score > float(refined["score"]):
					refined = {"scale": scale, "offset": [offset_x, offset_y], "score": score}
				offset_x += 1.0
			offset_y += 1.0
		scale += 0.0025
	refined["scale"] = snappedf(float(refined["scale"]), 0.0001)
	refined["offset"] = [snappedf(float(refined["offset"][0]), 0.1), snappedf(float(refined["offset"][1]), 0.1)]
	refined["score"] = snappedf(float(refined["score"]), 0.0001)
	return refined


func _registration_score(occupied: PackedVector2Array, outline: PackedVector2Array, scale: float, offset: Vector2, master_mask: PackedByteArray, master_size: Vector2i) -> float:
	var occupied_hits := 0
	for local_point: Vector2 in occupied:
		var master_point := Vector2i(local_point * scale + offset)
		if _mask_at(master_mask, master_size, master_point):
			occupied_hits += 1
	var boundary_hits := 0
	for local_point: Vector2 in outline:
		var master_point := Vector2i(local_point * scale + offset)
		if _near_boundary(master_mask, master_size, master_point, 3):
			boundary_hits += 1
	var occupied_ratio := float(occupied_hits) / maxf(float(occupied.size()), 1.0)
	var boundary_ratio := float(boundary_hits) / maxf(float(outline.size()), 1.0)
	return occupied_ratio * 0.55 + boundary_ratio * 0.45


func _closest_contact(outline04: PackedVector2Array, registration04: Dictionary, outline07: PackedVector2Array, registration07: Dictionary, annotation: Vector2) -> Dictionary:
	var best_distance := INF
	var best04 := Vector2.ZERO
	var best07 := Vector2.ZERO
	var best04_local := Vector2.ZERO
	var best07_local := Vector2.ZERO
	for local04: Vector2 in outline04:
		var master04 := _registered_point(local04, registration04)
		if master04.distance_to(annotation) > 220.0:
			continue
		for local07: Vector2 in outline07:
			var master07 := _registered_point(local07, registration07)
			if master07.distance_to(annotation) > 220.0:
				continue
			var distance := master04.distance_to(master07)
			if distance < best_distance:
				best_distance = distance
				best04 = master04
				best07 = master07
				best04_local = local04
				best07_local = local07
	var midpoint := (best04 + best07) * 0.5
	return {
		"master_px": _vector_to_array(midpoint),
		"sector_04_px": _vector_to_array(best04_local),
		"sector_07_px": _vector_to_array(best07_local),
		"sector_04_master_px": _vector_to_array(best04),
		"sector_07_master_px": _vector_to_array(best07),
		"gap_px": snappedf(best_distance, 0.01),
		"distance_from_a141_annotation_px": snappedf(midpoint.distance_to(annotation), 0.01),
	}


func _build_mask(image: Image) -> PackedByteArray:
	var result := PackedByteArray()
	result.resize(image.get_width() * image.get_height())
	for y in image.get_height():
		for x in image.get_width():
			result[y * image.get_width() + x] = 1 if _is_floor(image.get_pixel(x, y)) else 0
	return result


func _occupied_points(image: Image, step: int) -> PackedVector2Array:
	var result := PackedVector2Array()
	for y in range(0, image.get_height(), step):
		for x in range(0, image.get_width(), step):
			if _is_floor(image.get_pixel(x, y)):
				result.push_back(Vector2(x, y))
	return result


func _outline_points(image: Image, step: int) -> PackedVector2Array:
	var result := PackedVector2Array()
	for y in range(1, image.get_height() - 1, step):
		for x in range(1, image.get_width() - 1, step):
			if not _is_floor(image.get_pixel(x, y)):
				continue
			if (
				not _is_floor(image.get_pixel(x - 1, y))
				or not _is_floor(image.get_pixel(x + 1, y))
				or not _is_floor(image.get_pixel(x, y - 1))
				or not _is_floor(image.get_pixel(x, y + 1))
			):
				result.push_back(Vector2(x, y))
	return result


func _is_floor(color: Color) -> bool:
	return color.r > 0.58 and color.g > 0.43 and color.b > 0.24 and color.g - color.b > 0.025


func _mask_at(mask: PackedByteArray, size: Vector2i, point: Vector2i) -> bool:
	if point.x < 0 or point.y < 0 or point.x >= size.x or point.y >= size.y:
		return false
	return mask[point.y * size.x + point.x] == 1


func _near_boundary(mask: PackedByteArray, size: Vector2i, point: Vector2i, radius: int) -> bool:
	if not _mask_at(mask, size, point):
		return false
	for offset_y in range(-radius, radius + 1):
		for offset_x in range(-radius, radius + 1):
			if not _mask_at(mask, size, point + Vector2i(offset_x, offset_y)):
				return true
	return false


func _registered_point(local_point: Vector2, registration: Dictionary) -> Vector2:
	return local_point * float(registration["scale"]) + Vector2(registration["offset"][0], registration["offset"][1])


func _draw_registered_outline(image: Image, points: PackedVector2Array, registration: Dictionary, color: Color) -> void:
	for point: Vector2 in points:
		_draw_square(image, Vector2i(_registered_point(point, registration)), color, 1)


func _draw_cross(image: Image, center: Vector2i, color: Color, radius: int) -> void:
	for offset in range(-radius, radius + 1):
		_draw_square(image, center + Vector2i(offset, 0), color, 1)
		_draw_square(image, center + Vector2i(0, offset), color, 1)


func _draw_square(image: Image, center: Vector2i, color: Color, radius: int) -> void:
	for offset_y in range(-radius, radius + 1):
		for offset_x in range(-radius, radius + 1):
			var point := center + Vector2i(offset_x, offset_y)
			if Rect2i(Vector2i.ZERO, image.get_size()).has_point(point):
				image.set_pixelv(point, color)


func _vector_to_array(vector: Vector2) -> Array[float]:
	return [snappedf(vector.x, 0.01), snappedf(vector.y, 0.01)]
