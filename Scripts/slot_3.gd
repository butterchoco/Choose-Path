extends TextureRect

func _process(delta):
	if globalPlayer.playerItems.size() >= 3:
		self.texture = load(globalPlayer.playerItems[2]["icon"])
	else:
		self.texture = null