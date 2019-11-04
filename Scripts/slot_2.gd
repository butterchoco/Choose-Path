extends TextureRect

func _process(delta):
	if globalPlayer.playerItems.size() >= 2:
		self.texture = load(globalPlayer.playerItems[1]["icon"])
	else:
		self.texture = null