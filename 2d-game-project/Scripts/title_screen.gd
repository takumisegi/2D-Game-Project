extends Control


## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass



func _on_start_Button_pressed():
	get_tree().change_scene_to_file("res://Scene/main scene.tscn")
	pass # Replace with function body.


func _on_tutorial_Button_pressed():
	get_tree().change_scene_to_file("res://Scene/Tutorial.tscn")
	pass # Replace with function body.
