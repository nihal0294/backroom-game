extends SceneTree

const REQUIRED_BUSES := [&"Master", &"Ambience", &"SFX", &"UI", &"Music"]
const LEVEL_SCENE := preload("res://scenes/levels/level_0.tscn")
const DOOR_SCENE := preload("res://scenes/props/level_0/push_door.tscn")


func _init() -> void:
	call_deferred("_run")


func _run() -> void:
	var failures: Array[String] = []

	for bus_name in REQUIRED_BUSES:
		if AudioServer.get_bus_index(bus_name) < 0:
			failures.append("missing audio bus: %s" % bus_name)

	var level := LEVEL_SCENE.instantiate()
	root.add_child(level)
	await process_frame
	await process_frame

	var office_ambience := level.get_node("Audio/OfficeAmbience") as AudioStreamPlayer
	var fluorescent_ambience := level.get_node("Audio/FluorescentAmbience") as AudioStreamPlayer
	if office_ambience == null or not office_ambience.playing:
		failures.append("office ambience did not autoplay")
	if fluorescent_ambience == null or not fluorescent_ambience.playing:
		failures.append("fluorescent ambience did not autoplay")
	elif fluorescent_ambience.volume_db > -20.0:
		failures.append("global fluorescent bed masks spatial light hums")

	var real_lights := level.get_node("Sectors").find_children("*", "OmniLight3D", true, false)
	var spatial_hums := level.get_node("Sectors").find_children(
		"FluorescentHum", "AudioStreamPlayer3D", true, false
	)
	if real_lights.is_empty() or spatial_hums.size() != real_lights.size():
		failures.append("spatial light hum count does not match real lights")
	for hum_node in spatial_hums:
		var hum := hum_node as AudioStreamPlayer3D
		if hum == null or not hum.playing or hum.max_distance > 8.0:
			failures.append("invalid spatial fluorescent hum")
			break

	var player_audio := level.get_node("Player/PlayerAudio")
	player_audio.call("play_flashlight_toggle")
	await process_frame
	var flashlight_audio := player_audio.get_node("Flashlight") as AudioStreamPlayer
	if flashlight_audio.stream == null or not flashlight_audio.playing:
		failures.append("flashlight toggle did not start local audio")
	player_audio.call("_play_footstep")
	await process_frame
	var footstep_audio := player_audio.get_node("Footsteps") as AudioStreamPlayer
	if footstep_audio.stream == null or not footstep_audio.playing:
		failures.append("footstep randomizer did not start local audio")
	elif footstep_audio.volume_db > -7.0:
		failures.append("footstep volume is above the tuned maximum")
	player_audio.call("play_jump")
	await process_frame
	var movement_audio := player_audio.get_node("Movement") as AudioStreamPlayer
	if movement_audio.stream == null or not movement_audio.playing:
		failures.append("jump did not start movement audio")
	player_audio.call("_play_landing", 4.2)
	await process_frame
	if movement_audio.stream == null or not movement_audio.playing or movement_audio.pitch_scale >= 1.0:
		failures.append("landing did not start weighted movement audio")

	var door := DOOR_SCENE.instantiate()
	root.add_child(door)
	door.call("_apply_state", true, deg_to_rad(95.0))
	await process_frame
	var open_audio := door.get_node("OpenAudio") as AudioStreamPlayer3D
	if open_audio == null or not open_audio.playing:
		failures.append("door state application did not start 3D audio")
	elif open_audio.stream.get_length() > 3.4:
		failures.append("door opening audio was not shortened to half duration")
	door.call("_finish_animation")
	door.call("_apply_state", false, 0.0)
	await process_frame
	var close_audio := door.get_node("CloseAudio") as AudioStreamPlayer3D
	if close_audio == null or not close_audio.playing or close_audio.stream.get_length() > 1.0:
		failures.append("door closing audio was not shortened to half duration")

	for path in [
		"res://assets/audio/level_0/footsteps/carpet_01.ogg",
		"res://assets/audio/level_0/footsteps/carpet_02.ogg",
		"res://assets/audio/level_0/footsteps/carpet_03.ogg",
	]:
		if not ResourceLoader.exists(path, "AudioStream"):
			failures.append("missing footstep stream: %s" % path)

	door.queue_free()
	level.queue_free()
	await process_frame

	if failures.is_empty():
		print("AUDIO_SYSTEM_AUDIT: PASS buses=5 ambience=2 light_hums=%d footsteps=quiet jump=local landing=weighted flashlight=local door=3D+half" % spatial_hums.size())
		quit(0)
		return

	for failure in failures:
		push_error("AUDIO_SYSTEM_AUDIT: %s" % failure)
	quit(1)
