extends MarginContainer

func _on_main_menu_pressed():
	get_tree().change_scene(str("res://Scenes/Main Menu.tscn"))

func _on_restart_pressed():
	get_tree().change_scene(str("res://Scenes/Level 1.tscn"))