extends AnimationTree

var playback : AnimationNodeStateMachinePlayback

func _ready():
	playback = get("parameters/playback")
	playback.start("idle")
	active = true
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right"):
		playback.travel("walk_right")
	elif Input.is_action_just_pressed("ui_left"):
		playback.travel("walk_left")
	elif Input.is_action_just_pressed("ui_up"):
		playback.travel("walk_behind")
	elif Input.is_action_just_pressed("ui_down"):
		playback.travel("walk_front")