extends Node2D


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scene/main scene.tscn")
	
	
func _on_tutorial_button_pressed() -> void:
	get_tree(). change_scene_to_file("res://Scene/Tutorial.tscn")
