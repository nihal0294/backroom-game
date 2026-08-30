extends SceneTree

const LEVEL_SCENE := preload("res://scenes/levels/level_0.tscn")


func _initialize() -> void:
	call_deferred("_run")


func _run() -> void:
	var level := LEVEL_SCENE.instantiate()
	root.add_child(level)
	await process_frame
	await physics_frame
	var meshes := level.find_children("*", "MeshInstance3D", true, false)
	var multimeshes := level.find_children("*", "MultiMeshInstance3D", true, false)
	var unique_array_meshes: Dictionary = {}
	for mesh_instance: MeshInstance3D in meshes:
		if mesh_instance.mesh is ArrayMesh:
			unique_array_meshes[mesh_instance.mesh.get_instance_id()] = true
	for multimesh_instance: MultiMeshInstance3D in multimeshes:
		if multimesh_instance.multimesh != null and multimesh_instance.multimesh.mesh is ArrayMesh:
			unique_array_meshes[multimesh_instance.multimesh.mesh.get_instance_id()] = true
	var lights := level.find_children("*", "Light3D", true, false)
	var shadow_lights := 0
	for light: Light3D in lights:
		if light.shadow_enabled:
			shadow_lights += 1
	print(
		"LEVEL0_RUNTIME_PERFORMANCE: nodes=%d MeshInstance3D=%d ArrayMesh=%d StaticBody3D=%d CollisionShape3D=%d MultiMeshInstance3D=%d Light3D=%d shadow_lights=%d"
		% [
			level.find_children("*", "Node", true, false).size() + 1,
			meshes.size(),
			unique_array_meshes.size(),
			level.find_children("*", "StaticBody3D", true, false).size(),
			level.find_children("*", "CollisionShape3D", true, false).size(),
			multimeshes.size(),
			lights.size(),
			shadow_lights,
		]
	)
	quit()
