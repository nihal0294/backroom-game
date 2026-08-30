extends Node

const FLUORESCENT_HUM_STREAM := preload(
	"res://assets/audio/level_0/lights/fluorescent_hum_loop.ogg"
)

@export_range(-24.0, 12.0, 0.5) var spatial_hum_volume_db := 5.0
@export_range(2.0, 16.0, 0.5) var spatial_hum_max_distance := 8.0

## Keeps the imported OGG ambience layers looping without requiring edited
## import metadata and adds one spatial hum to each real Level 0 light. The
## fixtures are MultiMeshes, while the sparse OmniLight3D nodes provide stable
## runtime positions without coupling audio to either sector implementation.


func _ready() -> void:
	for child in get_children():
		var player := child as AudioStreamPlayer
		if player == null:
			continue
		player.finished.connect(_restart_loop.bind(player))
	_build_spatial_light_hums()


func _restart_loop(player: AudioStreamPlayer) -> void:
	if is_instance_valid(player) and player.is_inside_tree():
		player.play()


func _build_spatial_light_hums() -> void:
	var sectors := get_node_or_null("../Sectors")
	if sectors == null:
		return
	var lights := sectors.find_children("*", "OmniLight3D", true, false)
	var stream_length := FLUORESCENT_HUM_STREAM.get_length()
	for light_index in lights.size():
		var light := lights[light_index] as OmniLight3D
		if light == null or light.get_node_or_null("FluorescentHum") != null:
			continue
		var player := AudioStreamPlayer3D.new()
		player.name = "FluorescentHum"
		player.stream = FLUORESCENT_HUM_STREAM
		player.volume_db = spatial_hum_volume_db
		player.pitch_scale = 0.97 + float(light_index % 5) * 0.015
		player.unit_size = 1.35
		player.max_distance = spatial_hum_max_distance
		player.attenuation_filter_cutoff_hz = 6500.0
		player.attenuation_filter_db = -20.0
		player.bus = &"Ambience"
		light.add_child(player)
		player.finished.connect(_restart_spatial_loop.bind(player))
		var start_offset := 0.0
		if stream_length > 0.0:
			start_offset = fmod(float(light_index) * 0.173, stream_length)
		player.play(start_offset)


func _restart_spatial_loop(player: AudioStreamPlayer3D) -> void:
	if is_instance_valid(player) and player.is_inside_tree():
		player.play()
