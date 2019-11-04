extends Area2D

var is_entered = false

func _ready():
	connect("body_entered", self, "body_entered")
	connect("body_exited", self, "body_exited")
	$Sprite.frame = 0
	$Timer.start(1)

func _process(delta):
	if is_entered:
		if $Sprite.frame > 6:
			globalPlayer.playerHealth -= 1
			if globalPlayer.playerHealth < 0:
				globalPlayer.playerHealth = 0
	
func _on_Timer_timeout():
	$Timer.stop()
	if $Sprite.frame == 0:
		$animator.play("spike_up")
	else:
		$animator.play("spike_down")

func _on_animator_animation_finished(anim_name):
	$Timer.start(1)

func body_entered(body):
	if body.get_name() == "Main Player":
		is_entered = true
	
func body_exited(body):
	if body.get_name() == "Main Player":
		is_entered = false