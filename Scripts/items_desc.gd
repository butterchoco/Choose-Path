extends Label

func _process(delta):
	if globalItems.pressed_items != null:
		self.text = globalItems.pressed_items["name"] + ": " + str(globalItems.pressed_items["price"])