class_name InventoryRuntime
extends Node

signal inventory_changed
signal quick_slots_changed
signal item_use_requested(slot_index: int, item: Dictionary)

const QUICK_SLOT_COUNT := 5

@export var pocket_slot_count: int = 6
@export var backpack_slot_count: int = 12
@export var equipment_slot_count: int = 6

var pockets: Array[Dictionary] = []
var backpack: Array[Dictionary] = []
var equipment: Array[Dictionary] = []
var quick_slots: Array[Dictionary] = []
var selected_quick_slot: int = -1


func _ready() -> void:
	_resize_bag(pockets, pocket_slot_count)
	_resize_bag(backpack, backpack_slot_count)
	_resize_bag(equipment, equipment_slot_count)
	_resize_bag(quick_slots, QUICK_SLOT_COUNT)
	inventory_changed.emit()
	quick_slots_changed.emit()


func try_use_quick_slot(slot_index: int) -> void:
	if slot_index < 0 or slot_index >= QUICK_SLOT_COUNT:
		return
	selected_quick_slot = slot_index
	quick_slots_changed.emit()
	var item := quick_slots[slot_index]
	if item.is_empty() or str(item.get("content_id", "")).is_empty():
		return
	item_use_requested.emit(slot_index, item)


func set_selected_quick_slot(slot_index: int) -> void:
	if slot_index == selected_quick_slot:
		return
	selected_quick_slot = slot_index
	quick_slots_changed.emit()


func get_quick_slot(slot_index: int) -> Dictionary:
	if slot_index < 0 or slot_index >= quick_slots.size():
		return {}
	return quick_slots[slot_index]


func _resize_bag(bag: Array[Dictionary], size: int) -> void:
	bag.clear()
	while bag.size() < size:
		bag.append({})
