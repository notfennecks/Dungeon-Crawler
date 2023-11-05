extends State
class_name SkeletonRun

@export var skeleton : CharacterBody2D
var skeletonSprite : AnimatedSprite2D

func Enter():
	skeletonSprite = skeleton.get_node("BodySprite")
	#print("Skeleton entering Run state")
	
func Update(delta: float):
	skeletonSprite.play("Run")
	
	if skeleton.velocity == Vector2.ZERO:
		Transitioned.emit(self, "SkeletonIdle")
		
	if skeleton.velocity.x < 0:
		skeletonSprite.flip_h = true
	if skeleton.velocity.x > 0:
		skeletonSprite.flip_h = false
	
func Physics_Update(delta):
	pass
	
func Exit():
	pass
	#print("Leaving Run state")
