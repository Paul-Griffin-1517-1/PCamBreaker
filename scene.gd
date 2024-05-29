extends Node3D

@onready var playeer = $playeer

# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(2.0).timeout
	remove_child(playeer)
	await get_tree().create_timer(2.0).timeout
	add_child(playeer)

func _process(delta):
	print("Hey there "+str(playeer.get_child(0).phantom_camera_3d))
