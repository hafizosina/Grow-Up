extends "res://script/tank.gd"

func control(delta):
	$Turret.look_at(get_global_mouse_position())
	var rot_dir = 0
	if Input.is_action_pressed("ui_right"):
		rot_dir += 1
	if Input.is_action_pressed("ui_left"):
		rot_dir -= 1
	rotation += rotationSpeed*rot_dir*delta
	
	velocity = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(speed,0).rotated(rotation)
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2(-speed/2,0).rotated(rotation)
