extends Control

const CharacterStatusScript := preload("res://scripts/characters/character_status.gd")
const InventoryRuntimeScript := preload("res://scripts/characters/inventory_runtime.gd")
var _status: CharacterStatusScript
var _inventory: InventoryRuntimeScript
var _sanity_bar: ProgressBar
var _stamina_bar: ProgressBar
var _hunger_bar: ProgressBar
var _thirst_bar: ProgressBar
var _condition_list: VBoxContainer
var _limb_list: VBoxContainer
var _level_label: Label
var _time_label: Label
var _familiarity_bar: ProgressBar
var _close_button: Button


func bind(status: CharacterStatusScript, inventory: InventoryRuntimeScript) -> void:
	_status = status
	_inventory = inventory
	_build()
	_status.vitals_changed.connect(_refresh_vitals)
	_status.stamina_changed.connect(_refresh_vitals)
	_status.conditions_changed.connect(_refresh_conditions)
	_status.limbs_changed.connect(_refresh_limbs)
	_status.adaptation_changed.connect(_refresh_adaptation)
	_inventory.inventory_changed.connect(_refresh_bags)
	_inventory.quick_slots_changed.connect(_refresh_bags)
	_refresh_all()


func focus_ui() -> void:
	if _close_button and _close_button.is_inside_tree():
		_close_button.grab_focus()


func _refresh_all() -> void:
	_refresh_vitals()
	_refresh_conditions()
	_refresh_limbs()
	_refresh_adaptation()
	_refresh_bags()


func _build() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	mouse_filter = Control.MOUSE_FILTER_STOP

	var dim := ColorRect.new()
	dim.color = Color(0.02, 0.02, 0.02, 0.62)
	dim.set_anchors_preset(Control.PRESET_FULL_RECT)
	dim.mouse_filter = Control.MOUSE_FILTER_STOP
	add_child(dim)

	var margin := MarginContainer.new()
	margin.set_anchors_preset(Control.PRESET_FULL_RECT)
	margin.add_theme_constant_override("margin_left", 48)
	margin.add_theme_constant_override("margin_right", 48)
	margin.add_theme_constant_override("margin_top", 36)
	margin.add_theme_constant_override("margin_bottom", 36)
	add_child(margin)

	var root_panel := PanelContainer.new()
	root_panel.add_theme_stylebox_override("panel", UiStyle.panel_box())
	margin.add_child(root_panel)

	var inner := MarginContainer.new()
	inner.add_theme_constant_override("margin_left", 16)
	inner.add_theme_constant_override("margin_right", 16)
	inner.add_theme_constant_override("margin_top", 12)
	inner.add_theme_constant_override("margin_bottom", 16)
	root_panel.add_child(inner)

	var columns := HBoxContainer.new()
	columns.add_theme_constant_override("separation", 16)
	inner.add_child(columns)

	var left := _column("EQUIPMENT")
	left.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	left.size_flags_stretch_ratio = 0.9
	left.add_child(UiStyle.body("Configurable slots. Canonical equipment is not defined yet.", true))
	left.add_child(_slot_grid("equipment", _inventory.equipment_slot_count, 2))
	var body := PanelContainer.new()
	body.custom_minimum_size = Vector2(0, 120)
	body.add_theme_stylebox_override("panel", UiStyle.slot_box(false))
	var body_label := UiStyle.body("Body representation\n(placeholder)", true)
	body_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	body.add_child(body_label)
	left.add_child(body)
	columns.add_child(left)

	var center := _column("POCKETS / BACKPACK")
	center.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	center.size_flags_stretch_ratio = 1.4
	center.add_child(UiStyle.heading("POCKETS"))
	center.add_child(_slot_grid("pockets", _inventory.pocket_slot_count, 3))
	center.add_child(UiStyle.heading("BACKPACK"))
	center.add_child(_slot_grid("backpack", _inventory.backpack_slot_count, 4))
	center.add_child(UiStyle.heading("QUICK USE"))
	center.add_child(_slot_grid("quick", InventoryRuntimeScript.QUICK_SLOT_COUNT, 5))
	columns.add_child(center)

	var right := _column("STATUS")
	right.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	right.size_flags_stretch_ratio = 1.1
	var tabs := TabContainer.new()
	tabs.size_flags_vertical = Control.SIZE_EXPAND_FILL
	tabs.add_theme_color_override("font_selected_color", UiStyle.ACCENT)
	tabs.add_theme_color_override("font_unselected_color", UiStyle.TEXT_DIM)
	tabs.add_child(_build_vitals_tab())
	tabs.add_child(_build_condition_tab())
	tabs.add_child(_build_adaptation_tab())
	right.add_child(tabs)
	_close_button = Button.new()
	_close_button.text = "CLOSE  TAB / ESC"
	_close_button.focus_mode = Control.FOCUS_ALL
	_close_button.pressed.connect(func() -> void: get_parent().call("set_inventory_open", false))
	right.add_child(_close_button)
	columns.add_child(right)


func _column(title: String) -> VBoxContainer:
	var box := VBoxContainer.new()
	box.add_theme_constant_override("separation", 8)
	box.add_child(UiStyle.heading(title))
	return box


func _slot_grid(kind: String, count: int, columns: int) -> GridContainer:
	var grid := GridContainer.new()
	grid.columns = columns
	grid.add_theme_constant_override("h_separation", 6)
	grid.add_theme_constant_override("v_separation", 6)
	grid.name = "Grid_%s" % kind
	for i in count:
		var slot := PanelContainer.new()
		slot.custom_minimum_size = Vector2(56, 48)
		slot.focus_mode = Control.FOCUS_ALL
		slot.add_theme_stylebox_override("panel", UiStyle.slot_box(false))
		var label := Label.new()
		if kind == "quick":
			label.text = str(i + 1)
		else:
			label.text = "—"
		label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
		label.add_theme_color_override("font_color", UiStyle.TEXT_DIM)
		label.add_theme_font_size_override("font_size", 12)
		slot.add_child(label)
		grid.add_child(slot)
	return grid


func _build_vitals_tab() -> Control:
	var box := VBoxContainer.new()
	box.name = "VITALS"
	box.add_theme_constant_override("separation", 10)
	_sanity_bar = _stat_bar(box, "SANITY")
	_stamina_bar = _stat_bar(box, "STAMINA")
	_hunger_bar = _stat_bar(box, "HUNGER")
	_thirst_bar = _stat_bar(box, "THIRST")
	return box


func _build_condition_tab() -> Control:
	var box := VBoxContainer.new()
	box.name = "CONDITION"
	box.add_theme_constant_override("separation", 10)
	box.add_child(UiStyle.heading("DISEASES / CONDITIONS"))
	_condition_list = VBoxContainer.new()
	box.add_child(_condition_list)
	box.add_child(UiStyle.heading("SKELETAL INTEGRITY"))
	_limb_list = VBoxContainer.new()
	box.add_child(_limb_list)
	return box


func _build_adaptation_tab() -> Control:
	var box := VBoxContainer.new()
	box.name = "ADAPTATION"
	box.add_theme_constant_override("separation", 10)
	_level_label = UiStyle.body("Level: —")
	_time_label = UiStyle.body("Time in level: —")
	box.add_child(_level_label)
	box.add_child(_time_label)
	box.add_child(UiStyle.body("Familiarity", true))
	_familiarity_bar = ProgressBar.new()
	_familiarity_bar.show_percentage = false
	_familiarity_bar.custom_minimum_size = Vector2(0, 14)
	box.add_child(_familiarity_bar)
	box.add_child(UiStyle.body("No bonuses granted yet.", true))
	return box


func _stat_bar(parent: Control, title: String) -> ProgressBar:
	parent.add_child(UiStyle.body(title))
	var bar := ProgressBar.new()
	bar.max_value = 100.0
	bar.show_percentage = false
	bar.custom_minimum_size = Vector2(0, 16)
	parent.add_child(bar)
	return bar


func _refresh_vitals() -> void:
	if _status == null:
		return
	_set_bar(_sanity_bar, _status.sanity, _status.max_sanity)
	_set_bar(_stamina_bar, _status.stamina, _status.max_stamina)
	_set_bar(_hunger_bar, _status.hunger, _status.max_hunger)
	_set_bar(_thirst_bar, _status.thirst, _status.max_thirst)


func _set_bar(bar: ProgressBar, value: float, maximum: float) -> void:
	if bar == null:
		return
	bar.max_value = maximum
	bar.value = value


func _refresh_conditions() -> void:
	if _condition_list == null or _status == null:
		return
	for child in _condition_list.get_children():
		child.queue_free()
	if _status.conditions.is_empty():
		_condition_list.add_child(UiStyle.body("No known conditions", true))
		return
	for entry in _status.conditions:
		_condition_list.add_child(UiStyle.body(str(entry.get("label", entry.get("id", "?")))))


func _refresh_limbs() -> void:
	if _limb_list == null or _status == null:
		return
	for child in _limb_list.get_children():
		child.queue_free()
	var names := {
		"head": "Head",
		"torso": "Torso",
		"left_arm": "Left arm",
		"right_arm": "Right arm",
		"left_leg": "Left leg",
		"right_leg": "Right leg",
	}
	if _status.are_limbs_intact():
		_limb_list.add_child(UiStyle.body("Intact", true))
		return
	for limb_id in CharacterStatusScript.LIMB_IDS:
		var state := str(_status.limbs.get(limb_id, "intact"))
		var line := "%s — %s" % [names.get(limb_id, limb_id), state.capitalize()]
		_limb_list.add_child(UiStyle.body(line, state == "intact"))


func _refresh_adaptation() -> void:
	if _status == null or _level_label == null:
		return
	_level_label.text = "Level: %s" % _status.current_level_id
	var minutes := int(_status.time_in_current_level / 60.0)
	var seconds := int(_status.time_in_current_level) % 60
	_time_label.text = "Time in level: %02d:%02d" % [minutes, seconds]
	_familiarity_bar.max_value = _status.max_familiarity
	_familiarity_bar.value = _status.familiarity


func _refresh_bags() -> void:
	if _inventory == null:
		return
	_fill_grid("Grid_quick", _inventory.quick_slots, true)
	_fill_grid("Grid_pockets", _inventory.pockets, false)
	_fill_grid("Grid_backpack", _inventory.backpack, false)
	_fill_grid("Grid_equipment", _inventory.equipment, false)


func _fill_grid(node_name: String, bag: Array[Dictionary], numbered: bool) -> void:
	var grid := find_child(node_name, true, false) as GridContainer
	if grid == null:
		return
	for i in mini(grid.get_child_count(), bag.size()):
		var panel := grid.get_child(i) as PanelContainer
		var label := panel.get_child(0) as Label
		var item := bag[i]
		var selected := numbered and _inventory.selected_quick_slot == i
		panel.add_theme_stylebox_override("panel", UiStyle.slot_box(selected))
		if item.is_empty() or str(item.get("content_id", "")).is_empty():
			label.text = str(i + 1) if numbered else "—"
			label.add_theme_color_override("font_color", UiStyle.TEXT_DIM)
		else:
			label.text = str(item.get("label", item.get("content_id", "?")))
			label.add_theme_color_override("font_color", UiStyle.TEXT)
