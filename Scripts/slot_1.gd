extends TextureRect

func _process(delta):
	if globalPlayer.playerItems.size() >= 1:
		self.texture = load(globalPlayer.playerItems[0]["icon"])
	else:
		self.texture = null