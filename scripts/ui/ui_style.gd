class_name UiStyle
extends RefCounted

const TEXT := Color(0.86, 0.84, 0.78, 1.0)
const TEXT_DIM := Color(0.52, 0.5, 0.45, 1.0)
const ACCENT := Color(0.72, 0.68, 0.5, 1.0)
const PANEL := Color(0.07, 0.07, 0.065, 0.94)
const SLOT := Color(0.1, 0.1, 0.09, 0.9)
const BORDER := Color(0.58, 0.54, 0.44, 0.5)
const WARN := Color(0.78, 0.62, 0.38, 1.0)
const CRITICAL := Color(0.72, 0.32, 0.28, 1.0)


static func panel_box(bg: Color = PANEL) -> StyleBoxFlat:
	var box := StyleBoxFlat.new()
	box.bg_color = bg
	box.border_color = BORDER
	box.set_border_width_all(1)
	box.set_content_margin_all(10)
	box.set_corner_radius_all(2)
	return box


static func slot_box(selected: bool = false) -> StyleBoxFlat:
	var box := StyleBoxFlat.new()
	box.bg_color = SLOT
	box.border_color = ACCENT if selected else BORDER
	box.set_border_width_all(2 if selected else 1)
	box.set_content_margin_all(6)
	box.set_corner_radius_all(2)
	return box


static func heading(text: String) -> Label:
	var label := Label.new()
	label.text = text
	label.add_theme_color_override("font_color", ACCENT)
	label.add_theme_font_size_override("font_size", 14)
	return label


static func body(text: String, dim: bool = false) -> Label:
	var label := Label.new()
	label.text = text
	label.add_theme_color_override("font_color", TEXT_DIM if dim else TEXT)
	label.add_theme_font_size_override("font_size", 13)
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	return label
