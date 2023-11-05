extends State
class_name PlayerDeath

@export var player : CharacterBody2D
var playerSprite : AnimatedSprite2D

func Enter():
	playerSprite = player.get_node("BodySprite")
	playerSprite.play("Death")
	#print("Player entering Death state")

func Exit():
	pass
	#print("Leaving Death state")

func _on_body_sprite_animation_finished():
	if playerSprite.animation == "Death":
		print("You are dead")
		print("Deleting " + player.name)
		player.queue_free()
		#Deletes player camera as well. Find fix for this
