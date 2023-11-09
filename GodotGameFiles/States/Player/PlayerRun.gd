extends State
class_name PlayerRun

@export var player : CharacterBody2D
var playerSprite : AnimatedSprite2D

func Enter():
	playerSprite = player.get_node("BodySprite")
	#print("Player entering Run state")
	
func Update(delta: float):
	playerSprite.play("Run")
	
	if player.velocity == Vector2.ZERO:
		Transitioned.emit(self, "Idle")
		
	if player.velocity.x < 0:
		playerSprite.flip_h = true
	if player.velocity.x > 0:
		playerSprite.flip_h = false
	
func Physics_Update(delta):
	pass
	
func Exit():
	pass
	#print("Leaving Run state")

