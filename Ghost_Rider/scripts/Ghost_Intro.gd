extends KinematicBody2D

var linear_vel = Vector2.ZERO #Como obtengo la posicion del nodo¿?
var SPEED = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var target_vel = Input.get_action_strength("down") -	Input.get_action_strength("up")
	linear_vel.y = lerp(linear_vel.y, target_vel * SPEED, 0.5)
	linear_vel = move_and_slide(linear_vel)
