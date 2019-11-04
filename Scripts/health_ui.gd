extends Node2D

func _process(delta):
	self.get_node("CenterContainer").get_node("TextureRect").rect_scale.x = globalPlayer.playerHealth/100