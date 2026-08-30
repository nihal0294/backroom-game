extends SceneTree

## Read-only development audit for the material-merged Backrooms VR source.
## It reports connected geometry islands without modifying or extracting assets.

const SOURCE_SCENE := "res://assets/backrooms_vr/scene.gltf"
const EXTRACTED_LEAF := "res://resources/meshes/level_0/vr_kit/exit_door_leaf.res"
const TARGET_MATERIALS := {
	"Exit_Door": true,
	"Exit_Traslucent": true,
	"Wood": true,
}
const POSITION_QUANTIZATION := 0.0005


func _initialize() -> void:
	call_deferred("_run")


func _run() -> void:
	var packed := load(SOURCE_SCENE) as PackedScene
	if packed == null:
		push_error("BACKROOMS_VR_DOOR_AUDIT: FAIL source scene could not be loaded")
		quit(1)
		return
	var source := packed.instantiate()
	root.add_child(source)
	await process_frame
	var relevant_meshes: Array[MeshInstance3D] = []
	_collect_relevant_meshes(source, relevant_meshes)
	print("BACKROOMS_VR_DOOR_AUDIT: source=%s relevant_meshes=%d source_units=meters source_up=Y_after_Godot_import" % [SOURCE_SCENE, relevant_meshes.size()])
	for mesh_instance: MeshInstance3D in relevant_meshes:
		_audit_mesh_instance(mesh_instance)
	var leaf := load(EXTRACTED_LEAF) as ArrayMesh
	if leaf != null:
		var leaf_bounds := leaf.get_aabb()
		print("BACKROOMS_VR_DOOR_AUDIT: extracted_leaf bounds=%s size=%s surfaces=%d" % [_vec(leaf_bounds.position), _vec(leaf_bounds.size), leaf.get_surface_count()])
	else:
		print("BACKROOMS_VR_DOOR_AUDIT: extracted_leaf=UNKNOWN (resource unavailable)")
	quit()


func _collect_relevant_meshes(node: Node, output: Array[MeshInstance3D]) -> void:
	if node is MeshInstance3D:
		var mesh_instance := node as MeshInstance3D
		if mesh_instance.mesh != null:
			for surface_index in mesh_instance.mesh.get_surface_count():
				var material := mesh_instance.mesh.surface_get_material(surface_index)
				if material != null and TARGET_MATERIALS.has(material.resource_name):
					output.push_back(mesh_instance)
					break
	for child: Node in node.get_children():
		_collect_relevant_meshes(child, output)


func _audit_mesh_instance(mesh_instance: MeshInstance3D) -> void:
	var mesh := mesh_instance.mesh
	for surface_index in mesh.get_surface_count():
		var material := mesh.surface_get_material(surface_index)
		if material == null or not TARGET_MATERIALS.has(material.resource_name):
			continue
		var arrays := mesh.surface_get_arrays(surface_index)
		var vertices: PackedVector3Array = arrays[Mesh.ARRAY_VERTEX]
		var indices := PackedInt32Array()
		if arrays[Mesh.ARRAY_INDEX] != null:
			indices = arrays[Mesh.ARRAY_INDEX]
		var parent := PackedInt32Array()
		parent.resize(vertices.size())
		for vertex_index in vertices.size():
			parent[vertex_index] = vertex_index
		var shared_positions: Dictionary = {}
		for vertex_index in vertices.size():
			var key := _position_key(vertices[vertex_index])
			if shared_positions.has(key):
				_union(parent, vertex_index, int(shared_positions[key]))
			else:
				shared_positions[key] = vertex_index
		var index_count := indices.size() if not indices.is_empty() else vertices.size()
		for offset in range(0, index_count, 3):
			var first := indices[offset] if not indices.is_empty() else offset
			var second := indices[offset + 1] if not indices.is_empty() else offset + 1
			var third := indices[offset + 2] if not indices.is_empty() else offset + 2
			_union(parent, first, second)
			_union(parent, second, third)
		var components: Dictionary = {}
		for vertex_index in vertices.size():
			var component_root := _find(parent, vertex_index)
			if not components.has(component_root):
				components[component_root] = []
			components[component_root].push_back(vertex_index)
		var reports: Array[Dictionary] = []
		for component_vertices: Array in components.values():
			if component_vertices.size() < 4:
				continue
			var first_point := mesh_instance.global_transform * vertices[int(component_vertices[0])]
			var minimum := first_point
			var maximum := first_point
			for value: Variant in component_vertices:
				var point := mesh_instance.global_transform * vertices[int(value)]
				minimum = minimum.min(point)
				maximum = maximum.max(point)
			reports.push_back({"minimum": minimum, "maximum": maximum, "vertices": component_vertices.size()})
		reports.sort_custom(func(first: Dictionary, second: Dictionary) -> bool:
			var first_size: Vector3 = first["maximum"] - first["minimum"]
			var second_size: Vector3 = second["maximum"] - second["minimum"]
			return first_size.x * first_size.y * first_size.z > second_size.x * second_size.y * second_size.z
		)
		print("BACKROOMS_VR_DOOR_AUDIT: mesh=%s material=%s vertices=%d triangles=%d islands=%d" % [mesh_instance.name, material.resource_name, vertices.size(), index_count / 3, reports.size()])
		for report_index in mini(reports.size(), 80):
			var report: Dictionary = reports[report_index]
			var minimum: Vector3 = report["minimum"]
			var maximum: Vector3 = report["maximum"]
			print("BACKROOMS_VR_DOOR_ISLAND: material=%s index=%d vertices=%d min=%s max=%s size=%s center=%s" % [material.resource_name, report_index, report["vertices"], _vec(minimum), _vec(maximum), _vec(maximum - minimum), _vec((minimum + maximum) * 0.5)])


func _find(parent: PackedInt32Array, index: int) -> int:
	var current := index
	while parent[current] != current:
		parent[current] = parent[parent[current]]
		current = parent[current]
	return current


func _union(parent: PackedInt32Array, first: int, second: int) -> void:
	var first_root := _find(parent, first)
	var second_root := _find(parent, second)
	if first_root != second_root:
		parent[second_root] = first_root


func _position_key(point: Vector3) -> String:
	return "%d,%d,%d" % [roundi(point.x / POSITION_QUANTIZATION), roundi(point.y / POSITION_QUANTIZATION), roundi(point.z / POSITION_QUANTIZATION)]


func _vec(value: Vector3) -> String:
	return "(%.4f,%.4f,%.4f)" % [value.x, value.y, value.z]
