extends KinematicBody2D

var velocity : Vector2 = Vector2()

var can_push = true

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 35
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -35
	else:
		velocity.x = 0
	
	move_and_slide(velocity)

func _on_Area2D_body_entered(body):
	print(body.get_name())
	
	if not body.get_node_or_null("AnimationPlayer") or not can_push:
		return
	
	body.get_node("AnimationPlayer").play("right")
	
	can_push = false
	$Timer.start(0.6)


func _on_Timer_timeout(): #timer is to make sure you can't push multiple times
	can_push = true
