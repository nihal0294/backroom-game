class_name CharacterStatus
extends Node

signal vitals_changed
signal stamina_changed
signal conditions_changed
signal limbs_changed
signal adaptation_changed

const LIMB_IDS: PackedStringArray = [
	"head",
	"torso",
	"left_arm",
	"right_arm",
	"left_leg",
	"right_leg",
]

@export var character_id: String = "local-prototype"
@export var current_level_id: String = "level:0"

@export_range(0.0, 100.0, 0.1) var max_sanity: float = 100.0
@export_range(0.0, 100.0, 0.1) var max_stamina: float = 100.0
@export_range(0.0, 100.0, 0.1) var max_hunger: float = 100.0
@export_range(0.0, 100.0, 0.1) var max_thirst: float = 100.0

@export var stamina_drain_per_second: float = 18.0
@export var stamina_regen_per_second: float = 12.0
@export var stamina_regen_delay: float = 0.8

@export var familiarity_per_second: float = 0.015
@export var max_familiarity: float = 100.0

var sanity: float = 100.0
var stamina: float = 100.0
var hunger: float = 100.0
var thirst: float = 100.0

var conditions: Array[Dictionary] = []
var limbs: Dictionary = {}

var time_in_current_level: float = 0.0
var familiarity: float = 0.0

var _adapt_emit_accum: float = 0.0


func _ready() -> void:
	sanity = max_sanity
	stamina = max_stamina
	hunger = max_hunger
	thirst = max_thirst
	_reset_limbs_intact()
	vitals_changed.emit()
	stamina_changed.emit()
	conditions_changed.emit()
	limbs_changed.emit()
	adaptation_changed.emit()


func _process(delta: float) -> void:
	add_time_in_level(delta)


func set_sanity(value: float) -> void:
	var next := clampf(value, 0.0, max_sanity)
	if is_equal_approx(next, sanity):
		return
	sanity = next
	vitals_changed.emit()


func set_hunger(value: float) -> void:
	var next := clampf(value, 0.0, max_hunger)
	if is_equal_approx(next, hunger):
		return
	hunger = next
	vitals_changed.emit()


func set_thirst(value: float) -> void:
	var next := clampf(value, 0.0, max_thirst)
	if is_equal_approx(next, thirst):
		return
	thirst = next
	vitals_changed.emit()


func consume_stamina(amount: float) -> float:
	if amount <= 0.0:
		return stamina
	stamina = clampf(stamina - amount, 0.0, max_stamina)
	stamina_changed.emit()
	return stamina


func regenerate_stamina(amount: float) -> float:
	if amount <= 0.0 or stamina >= max_stamina:
		return stamina
	stamina = clampf(stamina + amount, 0.0, max_stamina)
	stamina_changed.emit()
	return stamina


func has_stamina() -> bool:
	return stamina > 0.0


func is_stamina_full() -> bool:
	return stamina >= max_stamina - 0.01


func add_condition(condition_id: String, label: String) -> void:
	if condition_id.is_empty():
		return
	for entry in conditions:
		if str(entry.get("id", "")) == condition_id:
			return
	conditions.append({"id": condition_id, "label": label})
	conditions_changed.emit()


func clear_conditions() -> void:
	if conditions.is_empty():
		return
	conditions.clear()
	conditions_changed.emit()


func set_limb_state(limb_id: String, state: String) -> void:
	if not LIMB_IDS.has(limb_id):
		return
	if limbs.get(limb_id, "") == state:
		return
	limbs[limb_id] = state
	limbs_changed.emit()


func are_limbs_intact() -> bool:
	for limb_id in LIMB_IDS:
		if str(limbs.get(limb_id, "intact")) != "intact":
			return false
	return true


func add_time_in_level(delta: float) -> void:
	if delta <= 0.0:
		return
	time_in_current_level += delta
	familiarity = clampf(familiarity + familiarity_per_second * delta, 0.0, max_familiarity)
	_adapt_emit_accum += delta
	if _adapt_emit_accum >= 0.25:
		_adapt_emit_accum = 0.0
		adaptation_changed.emit()


func _reset_limbs_intact() -> void:
	limbs.clear()
	for limb_id in LIMB_IDS:
		limbs[limb_id] = "intact"
