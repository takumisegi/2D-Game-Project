extends Node2D


# Called when the node enters the scene tree for the first time.


func _on_try_again_button_pressed() -> void:
	get_tree(). change_scene_to_file("res://Scene/main scene.tscn")
