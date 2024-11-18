extends Node2D

func _ready() -> void:
	Global.load_game_settings()
	go_to_scene("res://main_scene/main_scene.tscn")

func go_to_scene(new_scene: String):
	get_tree().change_scene_to_file(new_scene)
