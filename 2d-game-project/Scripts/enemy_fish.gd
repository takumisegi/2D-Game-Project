extends CharacterBody2D

@onready var navigation_agent : NavigationAgent2D = $NavigationAgent2D
@export var target_to_chase : CharacterBody2D 

const SPEED = 70.0
func _ready() -> void:
	navigation_agent.target_position = target_to_chase.global_position
func _physics_process(delta: float) -> void:
	navigation_agent.target_position = target_to_chase.position
	velocity = navigation_agent.get_next_path_position() - position
	velocity *= SPEED
	
	#velocity = global_position.direction_to(navigation_agent.get_next_path_position()) * SPEED
	 


	move_and_slide()
