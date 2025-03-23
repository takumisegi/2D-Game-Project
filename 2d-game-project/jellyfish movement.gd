extends CharacterBody2D

@onready var ray_up = $RayCast2D_Up
@onready var ray_down = $RayCast2D_Down
@onready var jellyfish_sprite = $Icon

var speed = 100
var direction = 1  # 1 for moving down, -1 for moving up

func _process(delta):
	# If ray detects a collision, change direction
	if direction == 1 and ray_down.is_colliding():
		direction = -1
		
	elif direction == -1 and ray_up.is_colliding():
		direction = 1

	# Move up and down
	velocity.y = direction * speed
	move_and_slide()
