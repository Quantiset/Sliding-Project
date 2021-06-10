extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	print("hi")
	if anim_name == "right":
		position = position + Vector2(32, 0)
		$Sprite.offset = Vector2()
		$CollisionShape2D.position = Vector2()
