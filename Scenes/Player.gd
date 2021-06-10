extends KinematicBody2D

var velocity : Vector2 = Vector2()


func _process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 35
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -35
	else:
		velocity.x = 0
	
	move_and_slide(velocity)

func _on_Area2D_body_entered(body):
	if not body.get_node_or_null("AnimationPlayer"):
		return
	
	body.get_node("AnimationPlayer").play("right")
