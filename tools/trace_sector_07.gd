extends SceneTree

## Measurement-only trace for the numbered-map Sector 07 source image.
## Runtime geometry must be authored explicitly and must not load this output.

const SOURCE_PATH := "res://assets/level_0/maps/sector_07.png"
const OUTPUT_PATH := "res://docs/levels/level-0-sector-07-trace.json"
const OVERLAY_PATH := "res://captures/sector_07_trace_overlay.png"
const SAMPLE_STEP := 4
const POLYGON_EPSILON_CELLS := 2.50
const NARROW_PASSAGE_TARGET_M := 2.15


func _initialize() -> void:
	var source := Image.load_from_file(ProjectSettings.globalize_path(SOURCE_PATH))
	if source == null or source.is_empty():
		push_error("Sector 07 trace: cannot load %s" % SOURCE_PATH)
		quit(1)
		return
	var sampled_size := Vector2i(
		ceili(float(source.get_width()) / float(SAMPLE_STEP)),
		ceili(float(source.get_height()) / float(SAMPLE_STEP))
	)
	var mask := Image.create(sampled_size.x, sampled_size.y, false, Image.FORMAT_RGBA8)
	var occupancy := PackedByteArray()
	occupancy.resize(sampled_size.x * sampled_size.y)
	for cell_y in sampled_size.y:
		for cell_x in sampled_size.x:
			var occupied_samples := 0
			var tested_samples := 0
			for offset_y in SAMPLE_STEP:
				for offset_x in SAMPLE_STEP:
					var source_x := cell_x * SAMPLE_STEP + offset_x
					var source_y := cell_y * SAMPLE_STEP + offset_y
					if source_x >= source.get_width() or source_y >= source.get_height():
						continue
					tested_samples += 1
					if _is_sector_floor(source.get_pixel(source_x, source_y)):
						occupied_samples += 1
			var occupied := occupied_samples * 2 >= maxi(tested_samples, 1)
			var index := cell_y * sampled_size.x + cell_x
			occupancy[index] = 1 if occupied else 0
			mask.set_pixel(cell_x, cell_y, Color.WHITE if occupied else Color.TRANSPARENT)

	var bitmap := BitMap.new()
	bitmap.create_from_image_alpha(mask, 0.5)
	var polygons := bitmap.opaque_to_polygons(Rect2i(Vector2i.ZERO, sampled_size), POLYGON_EPSILON_CELLS)
	if polygons.is_empty():
		push_error("Sector 07 trace: no floor polygon found")
		quit(1)
		return
	var polygon_cells: PackedVector2Array = polygons[0]
	var largest_area := absf(_signed_area(polygon_cells))
	for candidate: PackedVector2Array in polygons:
		var candidate_area := absf(_signed_area(candidate))
		if candidate_area > largest_area:
			polygon_cells = candidate
			largest_area = candidate_area

	var distance_field := _distance_field(occupancy, sampled_size)
	var ridge_widths_px := _ridge_widths(distance_field, occupancy, sampled_size)
	if ridge_widths_px.is_empty():
		push_error("Sector 07 trace: no passage-width samples found")
		quit(1)
		return
	ridge_widths_px.sort()
	var narrow_width_px := _percentile(ridge_widths_px, 0.10)
	var typical_width_px := _percentile(ridge_widths_px, 0.50)
	var meters_per_pixel := NARROW_PASSAGE_TARGET_M / narrow_width_px

	var polygon_px := PackedVector2Array()
	var polygon_m := PackedVector2Array()
	for point_cells: Vector2 in polygon_cells:
		var point_px := point_cells * float(SAMPLE_STEP)
		polygon_px.push_back(point_px)
		polygon_m.push_back(point_px * meters_per_pixel)
	if _signed_area(polygon_m) < 0.0:
		polygon_px.reverse()
		polygon_m.reverse()
	var bounds_px := _bounds(polygon_px)
	var bounds_m := _bounds(polygon_m)
	var component_traces: Array[Dictionary] = []
	var all_minimum := bounds_px.position
	var all_maximum := bounds_px.end
	for component_cells: PackedVector2Array in polygons:
		var component_area_cells := absf(_signed_area(component_cells))
		if component_area_cells < 4.0:
			continue
		var component_px := PackedVector2Array()
		for point_cells: Vector2 in component_cells:
			component_px.push_back(point_cells * float(SAMPLE_STEP))
		var component_bounds := _bounds(component_px)
		all_minimum = all_minimum.min(component_bounds.position)
		all_maximum = all_maximum.max(component_bounds.end)
		component_traces.push_back({
			"area_cells": snappedf(component_area_cells, 0.01),
			"bounds_px": [component_bounds.position.x, component_bounds.position.y, component_bounds.end.x, component_bounds.end.y],
			"polygon_px": _vectors_to_arrays(component_px),
		})
	var authored_rect_candidates := _greedy_rectangles(source, 12)
	var trace := {
		"schema": "level_0_sector_07_trace_v1",
		"source": SOURCE_PATH,
		"source_size_px": [source.get_width(), source.get_height()],
		"sample_step_px": SAMPLE_STEP,
		"polygon_epsilon_cells": POLYGON_EPSILON_CELLS,
		"meters_per_pixel": snappedf(meters_per_pixel, 0.000001),
		"scale_basis": {
			"narrow_passage_width_px": snappedf(narrow_width_px, 0.001),
			"narrow_passage_target_m": NARROW_PASSAGE_TARGET_M,
			"typical_passage_width_px": snappedf(typical_width_px, 0.001),
			"typical_passage_result_m": snappedf(typical_width_px * meters_per_pixel, 0.001),
		},
		"bounds_px": [bounds_px.position.x, bounds_px.position.y, bounds_px.end.x, bounds_px.end.y],
		"bounds_m": [bounds_m.position.x, bounds_m.position.y, bounds_m.end.x, bounds_m.end.y],
		"all_component_bounds_px": [all_minimum.x, all_minimum.y, all_maximum.x, all_maximum.y],
		"all_component_bounds_m": [all_minimum.x * meters_per_pixel, all_minimum.y * meters_per_pixel, all_maximum.x * meters_per_pixel, all_maximum.y * meters_per_pixel],
		"components": component_traces,
		"authored_rect_candidates": authored_rect_candidates,
		"polygon_px": _vectors_to_arrays(polygon_px),
		"polygon_m": _vectors_to_arrays(polygon_m),
		"ridge_width_percentiles_px": {
			"p10": snappedf(_percentile(ridge_widths_px, 0.10), 0.001),
			"p25": snappedf(_percentile(ridge_widths_px, 0.25), 0.001),
			"p50": snappedf(_percentile(ridge_widths_px, 0.50), 0.001),
			"p75": snappedf(_percentile(ridge_widths_px, 0.75), 0.001),
			"p90": snappedf(_percentile(ridge_widths_px, 0.90), 0.001),
		},
	}
	var output_file := FileAccess.open(OUTPUT_PATH, FileAccess.WRITE)
	if output_file == null:
		push_error("Sector 07 trace: cannot write %s" % OUTPUT_PATH)
		quit(1)
		return
	output_file.store_string(JSON.stringify(trace, "\t") + "\n")
	output_file.close()

	var overlay := source.duplicate()
	for point_index in polygon_px.size():
		var next_index := (point_index + 1) % polygon_px.size()
		_draw_line(overlay, Vector2i(polygon_px[point_index]), Vector2i(polygon_px[next_index]), Color(0.0, 1.0, 0.85, 1.0), 2)
	for component: Dictionary in component_traces:
		var component_points := PackedVector2Array()
		for point_array: Array in component["polygon_px"]:
			component_points.push_back(Vector2(point_array[0], point_array[1]))
		for point_index in component_points.size():
			var next_index := (point_index + 1) % component_points.size()
			_draw_line(overlay, Vector2i(component_points[point_index]), Vector2i(component_points[next_index]), Color(1.0, 0.15, 0.75, 1.0), 1)
	var overlay_error: Error = overlay.save_png(ProjectSettings.globalize_path(OVERLAY_PATH))
	if overlay_error != OK:
		push_error("Sector 07 trace: overlay save failed: %s" % error_string(overlay_error))
		quit(1)
		return
	print(
		"SECTOR_07_TRACE: points=%d components=%d mpp=%.6f narrow=%.2fpx typical=%.2fm main_bounds=%.2fx%.2fm all_bounds=%.2fx%.2fm"
		% [polygon_m.size(), component_traces.size(), meters_per_pixel, narrow_width_px, typical_width_px * meters_per_pixel, bounds_m.size.x, bounds_m.size.y, (all_maximum.x - all_minimum.x) * meters_per_pixel, (all_maximum.y - all_minimum.y) * meters_per_pixel]
	)
	quit()


func _is_sector_floor(color: Color) -> bool:
	return (
		color.r > 0.62
		and color.g > 0.48
		and color.b > 0.30
		and color.r > color.g + 0.05
		and color.g > color.b + 0.035
	)


func _distance_field(occupancy: PackedByteArray, size: Vector2i) -> PackedFloat32Array:
	var result := PackedFloat32Array()
	result.resize(size.x * size.y)
	for index in result.size():
		result[index] = 1000000.0 if occupancy[index] == 1 else 0.0
	var diagonal := sqrt(2.0)
	for y in size.y:
		for x in size.x:
			var index := y * size.x + x
			if occupancy[index] == 0:
				continue
			if x > 0:
				result[index] = minf(result[index], result[index - 1] + 1.0)
			if y > 0:
				result[index] = minf(result[index], result[index - size.x] + 1.0)
				if x > 0:
					result[index] = minf(result[index], result[index - size.x - 1] + diagonal)
				if x + 1 < size.x:
					result[index] = minf(result[index], result[index - size.x + 1] + diagonal)
	for y in range(size.y - 1, -1, -1):
		for x in range(size.x - 1, -1, -1):
			var index := y * size.x + x
			if occupancy[index] == 0:
				continue
			if x + 1 < size.x:
				result[index] = minf(result[index], result[index + 1] + 1.0)
			if y + 1 < size.y:
				result[index] = minf(result[index], result[index + size.x] + 1.0)
				if x > 0:
					result[index] = minf(result[index], result[index + size.x - 1] + diagonal)
				if x + 1 < size.x:
					result[index] = minf(result[index], result[index + size.x + 1] + diagonal)
	return result


func _ridge_widths(distance_field: PackedFloat32Array, occupancy: PackedByteArray, size: Vector2i) -> PackedFloat32Array:
	var widths := PackedFloat32Array()
	for y in range(1, size.y - 1):
		for x in range(1, size.x - 1):
			var index := y * size.x + x
			if occupancy[index] == 0 or distance_field[index] < 2.5:
				continue
			var is_ridge := true
			for offset_y in range(-1, 2):
				for offset_x in range(-1, 2):
					if offset_x == 0 and offset_y == 0:
						continue
					var neighbor := (y + offset_y) * size.x + x + offset_x
					if distance_field[neighbor] > distance_field[index] + 0.001:
						is_ridge = false
						break
				if not is_ridge:
					break
			if is_ridge:
				widths.push_back(distance_field[index] * 2.0 * float(SAMPLE_STEP))
	return widths


func _percentile(values: PackedFloat32Array, percentile: float) -> float:
	var sorted_values := values.duplicate()
	sorted_values.sort()
	var index := clampi(roundi(percentile * float(sorted_values.size() - 1)), 0, sorted_values.size() - 1)
	return sorted_values[index]


func _signed_area(polygon: PackedVector2Array) -> float:
	var area := 0.0
	for index in polygon.size():
		var next_index := (index + 1) % polygon.size()
		area += polygon[index].x * polygon[next_index].y - polygon[next_index].x * polygon[index].y
	return area * 0.5


func _bounds(points: PackedVector2Array) -> Rect2:
	var minimum := points[0]
	var maximum := points[0]
	for point: Vector2 in points:
		minimum = minimum.min(point)
		maximum = maximum.max(point)
	return Rect2(minimum, maximum - minimum)


func _vectors_to_arrays(points: PackedVector2Array) -> Array:
	var result: Array = []
	for point: Vector2 in points:
		result.push_back([snappedf(point.x, 0.001), snappedf(point.y, 0.001)])
	return result


func _greedy_rectangles(source: Image, cell_size: int) -> Array[Dictionary]:
	var grid_size := Vector2i(
		ceili(float(source.get_width()) / float(cell_size)),
		ceili(float(source.get_height()) / float(cell_size))
	)
	var occupied := PackedByteArray()
	occupied.resize(grid_size.x * grid_size.y)
	for cell_y in grid_size.y:
		for cell_x in grid_size.x:
			var hits := 0
			var samples := 0
			for y in range(cell_y * cell_size, mini((cell_y + 1) * cell_size, source.get_height()), 3):
				for x in range(cell_x * cell_size, mini((cell_x + 1) * cell_size, source.get_width()), 3):
					samples += 1
					if _is_sector_floor(source.get_pixel(x, y)):
						hits += 1
			occupied[cell_y * grid_size.x + cell_x] = 1 if hits * 2 >= maxi(samples, 1) else 0
	var used := PackedByteArray()
	used.resize(occupied.size())
	var result: Array[Dictionary] = []
	for cell_y in grid_size.y:
		for cell_x in grid_size.x:
			var index := cell_y * grid_size.x + cell_x
			if occupied[index] == 0 or used[index] == 1:
				continue
			var width := 1
			while cell_x + width < grid_size.x:
				var next_index := cell_y * grid_size.x + cell_x + width
				if occupied[next_index] == 0 or used[next_index] == 1:
					break
				width += 1
			var height := 1
			var can_grow := true
			while can_grow and cell_y + height < grid_size.y:
				for grow_x in range(cell_x, cell_x + width):
					var grow_index := (cell_y + height) * grid_size.x + grow_x
					if occupied[grow_index] == 0 or used[grow_index] == 1:
						can_grow = false
						break
				if can_grow:
					height += 1
			for mark_y in range(cell_y, cell_y + height):
				for mark_x in range(cell_x, cell_x + width):
					used[mark_y * grid_size.x + mark_x] = 1
			result.push_back({
				"id": "S07-P%03d" % (result.size() + 1),
				"bounds_px": [cell_x * cell_size, cell_y * cell_size, mini((cell_x + width) * cell_size, source.get_width()), mini((cell_y + height) * cell_size, source.get_height())],
			})
	return result


func _draw_line(image: Image, start: Vector2i, end: Vector2i, color: Color, thickness: int) -> void:
	var delta_x := absi(end.x - start.x)
	var step_x := 1 if start.x < end.x else -1
	var delta_y := -absi(end.y - start.y)
	var step_y := 1 if start.y < end.y else -1
	var error := delta_x + delta_y
	var current := start
	while true:
		for offset_y in range(-thickness, thickness + 1):
			for offset_x in range(-thickness, thickness + 1):
				var pixel := current + Vector2i(offset_x, offset_y)
				if Rect2i(Vector2i.ZERO, image.get_size()).has_point(pixel):
					image.set_pixelv(pixel, color)
		if current == end:
			break
		var doubled_error := 2 * error
		if doubled_error >= delta_y:
			error += delta_y
			current.x += step_x
		if doubled_error <= delta_x:
			error += delta_x
			current.y += step_y
