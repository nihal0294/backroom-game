extends Control

const CharacterStatusScript := preload("res://scripts/characters/character_status.gd")
const InventoryRuntimeScript := preload("res://scripts/characters/inventory_runtime.gd")
@export var warning_threshold: float = 35.0
@export var critical_threshold: float = 18.0
@export var stamina_hide_delay: float = 1.2

var _status: CharacterStatusScript
var _inventory: InventoryRuntimeScript
var _quick_slots: Array[PanelContainer] = []
var _stamina_bar: ProgressBar
var _stamina_wrap: Control
var _stamina_hide_timer: float = 0.0
var _warn_sanity: Label
var _warn_hunger: Label
var _warn_thirst: Label


func bind(status: CharacterStatusScript, inventory: InventoryRuntimeScript) -> void:
	_status = status
	_inventory = inventory
	_build()
	_status.stamina_changed.connect(_on_stamina_changed)
	_status.vitals_changed.connect(_refresh_warnings)
	_inventory.quick_slots_changed.connect(_refresh_quick_slots)
	_on_stamina_changed()
	_refresh_warnings()
	_refresh_quick_slots()


func _process(delta: float) -> void:
	if _status == null or _stamina_wrap == null:
		return
	var show_bar := (not _status.is_stamina_full()) or Input.is_action_pressed("sprint")
	if show_bar:
		_stamina_hide_timer = stamina_hide_delay
		_stamina_wrap.modulate.a = 1.0
	elif _stamina_hide_timer > 0.0:
		_stamina_hide_timer -= delta
		_stamina_wrap.modulate.a = clampf(_stamina_hide_timer / 0.35, 0.0, 1.0)
	else:
		_stamina_wrap.modulate.a = 0.0


func _build() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	mouse_filter = Control.MOUSE_FILTER_IGNORE

	var warn_row := HBoxContainer.new()
	warn_row.position = Vector2(24, 20)
	warn_row.add_theme_constant_override("separation", 14)
	warn_row.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_warn_sanity = _warning_label("SANITY")
	_warn_hunger = _warning_label("HUNGER")
	_warn_thirst = _warning_label("THIRST")
	warn_row.add_child(_warn_sanity)
	warn_row.add_child(_warn_hunger)
	warn_row.add_child(_warn_thirst)
	add_child(warn_row)

	var bottom := VBoxContainer.new()
	bottom.set_anchors_preset(Control.PRESET_BOTTOM_WIDE)
	bottom.offset_left = 0
	bottom.offset_right = 0
	bottom.offset_top = -92
	bottom.offset_bottom = -18
	bottom.alignment = BoxContainer.ALIGNMENT_END
	bottom.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(bottom)

	_stamina_wrap = CenterContainer.new()
	_stamina_wrap.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_stamina_bar = ProgressBar.new()
	_stamina_bar.custom_minimum_size = Vector2(220, 8)
	_stamina_bar.show_percentage = false
	_stamina_bar.max_value = 100.0
	_stamina_bar.modulate = Color(0.78, 0.74, 0.58, 0.85)
	_stamina_wrap.add_child(_stamina_bar)
	bottom.add_child(_stamina_wrap)

	var quick_wrap := CenterContainer.new()
	quick_wrap.mouse_filter = Control.MOUSE_FILTER_IGNORE
	var quick_row := HBoxContainer.new()
	quick_row.add_theme_constant_override("separation", 8)
	quick_row.mouse_filter = Control.MOUSE_FILTER_IGNORE
	for i in InventoryRuntimeScript.QUICK_SLOT_COUNT:
		var slot := _make_quick_slot(i + 1)
		_quick_slots.append(slot)
		quick_row.add_child(slot)
	quick_wrap.add_child(quick_row)
	bottom.add_child(quick_wrap)


func _make_quick_slot(number: int) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.custom_minimum_size = Vector2(44, 44)
	panel.mouse_filter = Control.MOUSE_FILTER_IGNORE
	panel.add_theme_stylebox_override("panel", UiStyle.slot_box(false))
	var label := Label.new()
	label.text = str(number)
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.add_theme_color_override("font_color", UiStyle.TEXT_DIM)
	label.add_theme_font_size_override("font_size", 14)
	panel.add_child(label)
	return panel


func _warning_label(text: String) -> Label:
	var label := Label.new()
	label.text = text
	label.visible = false
	label.add_theme_font_size_override("font_size", 12)
	label.add_theme_color_override("font_color", UiStyle.WARN)
	return label


func _on_stamina_changed() -> void:
	if _stamina_bar == null or _status == null:
		return
	_stamina_bar.max_value = _status.max_stamina
	_stamina_bar.value = _status.stamina


func _refresh_warnings() -> void:
	if _status == null:
		return
	_set_warning(_warn_sanity, _status.sanity, _status.max_sanity)
	_set_warning(_warn_hunger, _status.hunger, _status.max_hunger)
	_set_warning(_warn_thirst, _status.thirst, _status.max_thirst)


func _set_warning(label: Label, value: float, maximum: float) -> void:
	var ratio := value / maxf(maximum, 0.001)
	var pct := ratio * 100.0
	label.visible = pct <= warning_threshold
	if pct <= critical_threshold:
		label.add_theme_color_override("font_color", UiStyle.CRITICAL)
	else:
		label.add_theme_color_override("font_color", UiStyle.WARN)


func _refresh_quick_slots() -> void:
	if _inventory == null:
		return
	for i in _quick_slots.size():
		var panel := _quick_slots[i]
		var selected := _inventory.selected_quick_slot == i
		panel.add_theme_stylebox_override("panel", UiStyle.slot_box(selected))
		var label := panel.get_child(0) as Label
		var item := _inventory.get_quick_slot(i)
		if item.is_empty() or str(item.get("content_id", "")).is_empty():
			label.text = str(i + 1)
			label.add_theme_color_override("font_color", UiStyle.TEXT_DIM)
		else:
			label.text = str(item.get("label", i + 1))
			label.add_theme_color_override("font_color", UiStyle.TEXT)
