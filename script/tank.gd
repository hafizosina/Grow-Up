extends KinematicBody2D

signal health_change
signal dead

export (PackedScene) var Bullet
export (int) var speed
export (float) var rotationSpeed
export (float) var gunCoolDown
export (int) var health

var velocity = Vector2()
var canShoot = true
var alive = true

func _ready():
	$ReloadTime.wait_time = gunCoolDown
	
func control(delta):
	pass
	
func _physics_process(delta):
	if not alive:
		return
	control(delta)
	move_and_slide(velocity)
