extends MeshInstance3D

@onready var phantom_camera_3d = %PhantomCamera3D

func _ready():
	request_ready()

func _process(delta):
	var myvar = phantom_camera_3d.get_third_person_rotation_degrees()
