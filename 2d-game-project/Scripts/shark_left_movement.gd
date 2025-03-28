extends CharacterBody2D

const Speed = 100

var direction = 1

@onready var ray_cast_right = $"RayCast right"
@onready var ray_cast_left = $"RayCast left"
@onready var shack_sprite = $"DeepSeaPanic-assets-shark-v01"

func _process(delta):
	if ray_cast_left.is_colliding():
		direction = 1
		shack_sprite.flip_h = true
	if ray_cast_right.is_colliding():
		direction = -1
		shack_sprite.flip_h = false
		
	position.x += direction * Speed * delta
		
	move_and_slide()
	
	var entered = false
	queue_free()
	get_tree().change_scene_to_file
