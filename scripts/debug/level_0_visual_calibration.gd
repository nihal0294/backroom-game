extends Node3D

const CAPTURE_PATH := "res://captures/level_0_visual_calibration.png"

@onready var camera: Camera3D = $Camera3D


func _ready() -> void:
	camera.look_at(Vector3(0.0, 1.45, -1.0), Vector3.UP)
	if OS.get_environment("LEVEL0_CALIBRATION_CAPTURE") != "1":
		return
	await get_tree().process_frame
	await get_tree().process_frame
	await RenderingServer.frame_post_draw
	var image := get_viewport().get_texture().get_image()
	var error := image.save_png(CAPTURE_PATH)
	print("LEVEL0_CALIBRATION_CAPTURE path=%s error=%d" % [CAPTURE_PATH, error])
	get_tree().quit(0 if error == OK else 1)
