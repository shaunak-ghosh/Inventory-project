extends CanvasLayer

func _ready():
	$Inventory.visible = false

func _input(event):
	if event.is_action_pressed("inventory"):
		$Inventory.visible = !$Inventory.visible
		
