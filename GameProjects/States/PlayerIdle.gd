extends State
class_name PlayerIdle

@export var player : CharacterBody2D
var playerSprite : AnimatedSprite2D

func Enter():
	playerSprite = player.get_node("BodySprite")
	#print("Player entering Idle state")
	
func Update(delta: float):
	playerSprite.play("Idle")
	
	if player.velocity != Vector2.ZERO:
		Transitioned.emit(self, "Run")
	
func Physics_Update(delta):
	pass
	
func Exit():
	pass
	#print("Leaving Idle state")

