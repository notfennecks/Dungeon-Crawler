extends Node

var all_classes = ["Rogue", "Knight", "Wizard"]
var current_class = all_classes[0]

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Global script working")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
