extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var entered = false

#func _on_area_2d_body_entered(body: Node2D) -> void:
	#entered = true
	#print("diamond!")
	#queue_free()
	#get_tree().change_scene_to_file("res://Scene/Win screen.tscn")
	
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	entered = true
	print("You Win!")
	queue_free()
	get_tree().change_scene_to_file("res://Scene/Win screen.tscn")
	
	
