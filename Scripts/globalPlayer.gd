extends Node

var playerHealth = 100.0
var playerItems = []
var coins = 0

func _process(delta):
	if playerHealth <= 0:
		get_tree().change_scene(str("res://Scenes/Game Over.tscn"))