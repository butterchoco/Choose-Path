extends Area2D

func _on_Coin_body_entered(body):
	if body.get_name() == "Main Player":
		globalPlayer.coins += 1
		queue_free()
