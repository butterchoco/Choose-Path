extends TextureButton



func _on_cancel_pressed():
	.get_node("/root/Level 1/CanvasLayer/ShopPopup/ConfirmationDialog").hide()
