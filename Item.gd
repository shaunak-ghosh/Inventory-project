extends Node2D

var item_name
var item_quantity

func _ready():
	var rand_val = randi() % 3
	if rand_val == 0:
		item_name = "Sword"
	elif rand_val == 1:
		item_name = "Axe"
	else:
		item_name = "Coin"
	
	$TextureRect.texture = load("res://assets/" + item_name + ".png")
	var stack_size = int(JsonData.item_data[item_name]["StackSize"])
	item_quantity = randi() % stack_size + 1
	
	if stack_size == 1:
		$Label.visible = false
	else:
		$Label.text = String(item_quantity)
		
func add_item_quantity(amount_to_add):
	item_quantity += amount_to_add
	$Label.text = String(item_quantity)
	
func decrease_item_quantity(aamount_to_remove):
	item_quantity -= aamount_to_remove
	$Label.text = String(item_quantity)
