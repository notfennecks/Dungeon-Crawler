extends CharacterBody2D

@export var speed = 400

var input = Vector2.ZERO

func _physics_process(delta):
	player_movement(delta)
	
func player_movement(delta):
	input = get_input()
	
	velocity = input * speed * delta * 20
	velocity = velocity.limit_length(speed)
	
	move_and_slide()

func get_input():
	input.x = int(Input.is_action_pressed("Right")) - int(Input.is_action_pressed("Left"))
	input.y = int(Input.is_action_pressed("Down")) - int(Input.is_action_pressed("Up"))
	return input.normalized()
	
