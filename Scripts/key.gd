extends Area2D


func _on_key_body_entered(body):
	if body.get_name() == "Main Player" and globalPlayer.items.size() < 3:
		globalPlayer.items["key"] = globalItems.items["key"]
		queue_free()