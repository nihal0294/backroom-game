extends CanvasLayer

@onready var _hud: Control = $HUD
@onready var _inventory_view: Control = $Inventory


const CharacterStatusScript := preload("res://scripts/characters/character_status.gd")
const InventoryRuntimeScript := preload("res://scripts/characters/inventory_runtime.gd")


func _ready() -> void:
	var player := get_parent()
	var status: CharacterStatusScript = player.get_node("CharacterStatus")
	var inventory: InventoryRuntimeScript = player.get_node("InventoryRuntime")
	_hud.call("bind", status, inventory)
	_inventory_view.call("bind", status, inventory)
	set_inventory_open(false)


func is_inventory_open() -> bool:
	return _inventory_view.visible


func set_inventory_open(open: bool) -> void:
	_inventory_view.visible = open
	_hud.visible = not open
	if open:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		_inventory_view.call("focus_ui")
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func toggle_inventory() -> void:
	set_inventory_open(not is_inventory_open())
