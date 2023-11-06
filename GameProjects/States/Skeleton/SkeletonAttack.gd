extends State
class_name SkeletonAttack

@export var skeleton : CharacterBody2D
var skeletonSprite : AnimatedSprite2D

func Enter():
	skeletonSprite = skeleton.get_node("BodySprite")
	print("Skeleton entering Attack state")
	attack()
	
func attack():
	skeletonSprite.play("Attack")
	
func Update(delta):
	pass
	
func Physics_Update(delta):
	pass

func Exit():
	pass
	#print("Leaving Attack state")

func _on_body_sprite_animation_finished():
	if skeletonSprite.animation == "Attack":
		print("Skeleton Attacked")
		attack()

func skeleton_ready_to_chase():
	Transitioned.emit(self, "SkeletonRun")
