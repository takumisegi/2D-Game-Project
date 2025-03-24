extends CharacterBody2D

const Speed = 50

var direction = 1

@onready var ray_cast_right = $"RayCast right"
@onready var ray_cast_left = $"RayCast left"
@onready var Boss_sprite = $"DeepSeaPanic-level02-15"

func _process(delta):
	if ray_cast_left.is_colliding():
		direction = 1
		Boss_sprite.flip_h = false
	if ray_cast_right.is_colliding():
		direction = -1
		Boss_sprite.flip_h = true
		
	position.x += direction * Speed * delta
		
		
	move_and_slide()
