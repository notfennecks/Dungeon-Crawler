extends State
class_name SkeletonDeath

@export var skeleton : CharacterBody2D
var skeletonSprite : AnimatedSprite2D

func Enter():
	skeletonSprite = skeleton.get_node("BodySprite")
	skeletonSprite.play("Death")
	print("Skeleton entering Death state")

func Exit():
	pass
	#print("Leaving Death state")

func _on_body_sprite_animation_finished():
	if skeletonSprite.animation == "Death":
		print("You killed a skeleton")
		print("Deleting " + skeleton.name)
		skeleton.queue_free()
