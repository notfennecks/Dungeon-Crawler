extends PlayerBase

#var current_class = Global.current_class

@export_enum("Rogue", "Knight", "Wizard") var player_class: String

var knight_spriteframes = preload("res://SpriteFrames/Knight.tres")
var rogue_spriteframes = preload("res://SpriteFrames/Rogue.tres")
var wizard_spriteframes = preload("res://SpriteFrames/Wizard.tres")

func _ready():
	#print(current_class)
	#Change sprite frames based on the current class
	match player_class:
		"Knight":
			$BodySprite.sprite_frames = knight_spriteframes
		"Rogue":
			$BodySprite.sprite_frames = rogue_spriteframes
		"Wizard":
			$BodySprite.sprite_frames = wizard_spriteframes
			
	
