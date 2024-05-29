extends Node3D

@onready var player = $player

# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(2.0).timeout
	remove_child(player)
	await get_tree().create_timer(2.0).timeout
	add_child(player)

func _process(delta):
	print("Hey there "+str(player.get_child(0).phantom_camera_3d))
