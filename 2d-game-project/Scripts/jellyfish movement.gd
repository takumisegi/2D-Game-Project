extends CharacterBody2D

@export var speed = 2000.0  
@export var move_range = 100.0  

var direction = 1  
var start_y  
var min_y  
var max_y 

func _ready():
	start_y = position.y
	min_y = start_y - move_range / 2
	max_y = start_y + move_range / 2

func _physics_process(delta):
	if position.y >= max_y:
		direction = -1
	elif position.y <= min_y:
		direction = 1

	
	velocity.y = direction * speed * delta
	move_and_slide()
	
