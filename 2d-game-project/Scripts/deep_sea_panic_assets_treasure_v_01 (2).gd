extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var entered = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	entered = true
	print("diamond!")
	queue_free()
	get_tree().change_scene_to_file("res://Scene/second_level(deep_sea).tscn")
	

func _on_area_2d_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	entered = false
	
	
