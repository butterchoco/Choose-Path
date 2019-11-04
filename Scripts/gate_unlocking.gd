extends StaticBody2D

func _ready():
	$gate_unlocking.connect("body_entered", self, "body_entered")

func body_entered(body):
	if body.name == "Main Player":
		if globalPlayer.playerItems.size() > 0:
			for item in globalPlayer.playerItems:
				if item["name"] == "Key":
					$Sprite.texture = load("res://Assets/dungeon_full/tiles/wall/door_anim_opening_f13.png")
					self.get_node("col_gate").queue_free()
					globalPlayer.playerItems.remove(globalPlayer.playerItems.find(item))