extends Area2D


func _on_GateFinish_body_entered(body):
	if body.get_name() == "Main Player":
		get_tree().change_scene(str("res://Scenes/Win.tscn"))