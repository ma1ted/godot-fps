extends KinematicBody

export var speed = 10

export var sensX = 0.1
export var sensY = 0.1

onready var head = $Head

var direction = Vector3()

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * sensX))
		head.rotate_x(deg2rad(-event.relative.y * sensY))
		head.rotation.x = clamp(head.rotation.x, PI / -2, PI / 2)

func _physics_process(delta):
	if Input.is_action_pressed("move_forward"):
		pass
