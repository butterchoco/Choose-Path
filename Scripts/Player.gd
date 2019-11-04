extends KinematicBody2D

const SPEED = 30*2
var direction
var velocity = Vector2()
	
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		direction = "right"
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		direction = "left"
	else:
		velocity.x = 0
		
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	else:
		velocity.y = 0
	move_and_slide(velocity)

func _process(delta):
	if velocity.x != 0 or velocity.y != 0:
		$AnimatedSprite.play("walk")
		if direction == "right":
			$AnimatedSprite.flip_h = false
		else:
			$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")