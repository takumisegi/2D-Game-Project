extends CharacterBody2D

#@export var speed = 300

#func get_input():
	#var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#velocity = input_direction * speed

#func _physics_process(delta):
	#get_input()
	#move_and_slide()
	

const SPEED = 150.0
const SWIM_FORCE = -50.0  # Controls how strong the "jump" is
const GRAVITY = 2.0  # Controls how fast the diver sinks

func _physics_process(delta: float): #-> void:
	velocity.y += GRAVITY #sinking simulation
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	else:
		velocity.x = 0 #stop horizontal movement when key is not pressed
		
	if Input.is_action_pressed("swim_up"):
		velocity.y = SWIM_FORCE #Swim Upward (infinite Jump)

	move_and_slide()
	
func die():
	print("game over!")
	get_tree().change_scene_to_file("res://Scene/Lose screen.tscn")
	
func _on_hazarddetector_body_entered(body):
	if body.is_in_group("hazards"):
		die()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("hazards"):
		print("lose")
		get_tree().change_scene_to_file("res://Scene/Lose screen.tscn")
