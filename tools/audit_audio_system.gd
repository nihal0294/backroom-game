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

	var door := DOOR_SCENE.instantiate()
	root.add_child(door)
	door.call("_apply_state", true, deg_to_rad(95.0))
	await process_frame
	var open_audio := door.get_node("OpenAudio") as AudioStreamPlayer3D
	if open_audio == null or not open_audio.playing:
		failures.append("door state application did not start 3D audio")

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
		print("AUDIO_SYSTEM_AUDIT: PASS buses=5 ambience=2 footsteps=3 flashlight=local door=3D")
		quit(0)
		return

	for failure in failures:
		push_error("AUDIO_SYSTEM_AUDIT: %s" % failure)
	quit(1)
