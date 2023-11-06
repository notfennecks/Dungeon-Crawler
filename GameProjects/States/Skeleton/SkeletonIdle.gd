extends State
class_name SkeletonIdle

@export var skeleton : CharacterBody2D
var skeletonSprite : AnimatedSprite2D

func Enter():
	skeletonSprite = skeleton.get_node("BodySprite")
	print("Skeleton entering Idle state")
	
func Update(delta: float):
	skeletonSprite.play("Idle")
	
	if skeleton.velocity != Vector2.ZERO:
		Transitioned.emit(self, "SkeletonRun")
		
func Physics_Update(delta):
	pass
	
func Exit():
	pass
	#print("Leaving Idle state")
