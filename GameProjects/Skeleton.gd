extends CharacterBody2D

@export_enum("Base", "Mage", "Rogue", "Warrior") var skeleton_type: String

@export var speed = 30
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D
var player_chase = false
var player = null

func _ready():
	print("Skeleton type: " + skeleton_type)
	
func _process(delta):
	pass

func _physics_process(delta):
	if player_chase:
		skeleton_movement(delta)
		
func skeleton_movement(delta):
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func make_path():
	nav_agent.target_position = player.global_position
	
func _on_nav_path_update_timeout():
	if player_chase:
		make_path()
	
func _on_base_detection_area_body_entered(body):
	if body.name == "Player":
		player = body
		player_chase = true
		
func _on_base_detection_area_body_exited(body):
	velocity = Vector2.ZERO
	player= null
	player_chase = false



