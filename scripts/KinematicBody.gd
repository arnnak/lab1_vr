extends KinematicBody

var speed = 7
var acceleration = 20
var gravity = 9.8
var jump = 5

var mouse_sensitivity = 0.05

var direction = Vector3()
var velocity = Vector3()
var fall = Vector3()

onready var head = $FPSController/ARVRCamera

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED) 
	
func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		head.rotate_x(deg2rad(-event.relative.y * mouse_sensitivity))
		head.rotation.x = clamp(head.rotation.x, deg2rad(-90), deg2rad(90))
		
func _process(delta):
	direction = Vector3()
	if not is_on_floor():
		fall.y -= gravity*delta
	if Input.is_action_just_pressed("Jump"):
		fall.y = jump
	
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Input.is_action_pressed("Up"):
		direction -= transform.basis.z
	elif Input.is_action_pressed("Down"):
		direction += transform.basis.z
	elif Input.is_action_pressed("Left"):
		direction -= transform.basis.x
	elif Input.is_action_pressed("Right"):
		direction += transform.basis.x
	direction = direction.normalized()
	velocity = velocity.linear_interpolate(direction * speed, acceleration * delta)
	velocity = move_and_slide(velocity, Vector3.UP)
	move_and_slide(fall, Vector3.UP)
