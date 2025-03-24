extends CharacterBody2D

var speed = 100  # Movement speed
var min_y = 200  # Upper boundary
var max_y = 400  # Lower boundary
var direction = 1  # 1 for moving down, -1 for moving up

func _physics_process(delta):
	# Change direction when reaching boundaries
	if position.y >= max_y:
		direction = -1
	elif position.y <= min_y:
		direction = 1

	# Apply movement
	velocity.y = direction * speed
	move_and_slide()
