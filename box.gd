extends RigidBody2D

var thrust = Vector2(0 ,50)
var torque = 2000

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
	#if Input.is_action_just_pressed("ui_accept"):
		#apply_impulse(Vector2(0 ,-30) ,Vector2(5000 ,0 ))
		pass

#func _input(event):
#	if event.is_action_pressed("mouse_click"):
#		var dir = global_position.direction_to(get_global_mouse_position()).normalized()
#		apply_impulse(Vector2() ,dir * 800)
#		pass
		
func _integrate_forces(state):
	
	if Input.is_action_pressed("ui_down"):
		# to add an increasing spead when pressing
		apply_central_impulse( thrust.rotated(get_rotation()) )
	else:
		apply_central_impulse(Vector2())
		#apply torque
		var t =  int(Input.is_action_pressed("ui_right"))
		apply_torque_impulse(t * torque)
		pass

	
