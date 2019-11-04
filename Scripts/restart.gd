extends TextureButton

func _on_TextureButton_pressed():
	get_tree().change_scene(str("res://Scenes/Level 1.tscn"))
