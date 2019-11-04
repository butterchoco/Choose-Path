extends TextureButton

func _on_buy_pressed():
	if globalPlayer.coins > globalItems.pressed_items["price"] and globalPlayer.playerItems.size() < 3:
		globalPlayer.playerItems.append(globalItems.pressed_items)
		globalPlayer.coins -= globalItems.pressed_items["price"]
	else:
		get_node("../../../ErrorContainer/error").visible = true