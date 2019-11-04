extends StaticBody2D

func _ready():
	$shopSystem.connect("body_entered", self, "body_entered")
	$shopSystem.connect("body_exited", self, "body_exited")
	self.get_parent().get_node("CanvasLayer").get_node("ShopPopup").get_node("ConfirmationDialog").hide()

func body_entered(body):
	if body.name == "Main Player":
		self.get_parent().get_node("CanvasLayer").get_node("ShopPopup").get_node("ConfirmationDialog").show()

func body_exited(body):
	if body.name == "Main Player":
		self.get_parent().get_node("CanvasLayer").get_node("ShopPopup").get_node("ConfirmationDialog").hide()