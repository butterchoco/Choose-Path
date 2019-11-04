extends TextureButton

func _ready():
	self.pressed = true

func _process(delta):
	if self.pressed:
		globalItems.pressed_items = globalItems.items[self.name]
