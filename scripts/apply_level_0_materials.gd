extends Node3D

const ATLAS := preload("res://resources/materials/level_0_atlas.tres")
const WALL := preload("res://resources/materials/level_0_wall.tres")
const FLOOR := preload("res://resources/materials/level_0_floor.tres")
const CEILING := preload("res://resources/materials/level_0_ceiling.tres")
const TUBE := preload("res://resources/materials/level_0_light_tube.tres")


func _ready() -> void:
	for mesh_instance in find_children("*", "MeshInstance3D", true, false):
		var mi := mesh_instance as MeshInstance3D
		if mi.mesh == null:
			continue
		if mi.material_override is ShaderMaterial:
			continue
		if mi.get_active_material(0) is ShaderMaterial:
			continue
		if mi.mesh.get_surface_count() >= 2:
			mi.set_surface_override_material(0, ATLAS)
			mi.set_surface_override_material(1, TUBE)
			continue
		mi.material_override = _material_for(mi)


func _material_for(mesh_instance: MeshInstance3D) -> Material:
	var node: Node = mesh_instance
	while node != null and node != self:
		var node_name := String(node.name)
		if (
			node_name.begins_with("Wall")
			or node_name.begins_with("Doorway")
			or node_name.begins_with("Corner")
		):
			return WALL
		if node_name.begins_with("Floor"):
			return FLOOR
		if node_name.begins_with("Ceiling") or node_name.begins_with("Tile"):
			return CEILING
		node = node.get_parent()
	return ATLAS
