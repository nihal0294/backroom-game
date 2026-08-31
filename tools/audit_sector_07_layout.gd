extends SceneTree

const Layout = preload("res://scripts/levels/level_0/sector_07_layout.gd")


func _initialize() -> void:
	var root_transform := Transform3D(Basis(Vector3.UP, deg_to_rad(150.0)), Vector3(-6.0,0.0,29.26))
	for key: String in Layout.terminals():
		var terminal: Dictionary = Layout.terminals()[key]
		var floor_y := float(terminal.get("floor_y", 0.0))
		var world := root_transform * Vector3(terminal.point.x, floor_y, terminal.point.y)
		print("SECTOR07_TERMINAL_AUDIT: id=%s local=(%.3f,%.3f,%.3f) world=(%.3f,%.3f,%.3f) width=%.2f kind=%s" % [
			key, terminal.point.x, floor_y, terminal.point.y,
			world.x, world.y, world.z, terminal.width, terminal.kind,
		])
	for room: Dictionary in Layout.rooms():
		var source_center: Vector2 = room.center - Layout.PLAN_OFFSET
		print("SECTOR07_ROOM_AUDIT: id=%s name=%s center=(%.2f,%.2f) max_size=(%.2f,%.2f) openings=%s" % [
			room.id, room.name, source_center.x, source_center.y,
			room.size_m.x, room.size_m.y, _room_openings(String(room.id)),
		])
	for corridor: Dictionary in Layout.corridors():
		var source_line := PackedVector2Array()
		for point: Vector2 in corridor.centerline:
			source_line.push_back(point - Layout.PLAN_OFFSET)
		var segments := PackedStringArray()
		var total_length := 0.0
		for index in source_line.size() - 1:
			var a := source_line[index]
			var b := source_line[index + 1]
			var length := a.distance_to(b)
			var bearing := rad_to_deg(atan2(b.y - a.y, b.x - a.x))
			total_length += length
			segments.push_back("(%.2f,%.2f)->(%.2f,%.2f) L=%.2f B=%.1f" % [a.x,a.y,b.x,b.y,length,bearing])
		print("SECTOR07_CORRIDOR_AUDIT: id=%s name=%s width=%.2f total_length=%.2f segments=%s" % [
			corridor.id, corridor.name, corridor.width, total_length, " | ".join(segments),
		])
	quit()


func _room_openings(room_id: String) -> String:
	var mapping := {
		"S07-R01":"C01,06", "S07-R02":"C02,11", "S07-R03":"C03,core",
		"S07-R04":"core", "S07-R05":"core", "S07-R06":"C04,core",
		"S07-R07":"04,core", "S07-R08":"core", "S07-R09":"04,core",
		"S07-R10":"core,C05", "S07-R11":"C05,C06,C07", "S07-R12":"C07",
		"S07-R13":"C06,C08,R14", "S07-R14":"R13,C08", "S07-R15":"R13",
		"S07-R16":"C08,R17", "S07-R17":"R16",
	}
	return String(mapping.get(room_id, "manual"))
