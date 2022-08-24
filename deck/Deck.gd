extends Node2D

var card_scene = preload("res://card/Card.tscn")

onready var board = get_parent()

func _process(_delta):
	if Input.is_action_just_pressed("Click"):
		if (test_hit(get_global_mouse_position()) && GameState.can_take_card()):
			# todo take card
			var card_scene_instance = card_scene.instance().clone()
			# todo init card using data from server
			board.add_child(card_scene_instance)
			card_scene_instance.position = get_global_position() + get_size().size - GameDefaults.card_size
			card_scene_instance.z_index = 100
			GameState.take_card()

func test_hit(mouse_position: Vector2):
	return get_size().has_point(mouse_position)
	
func get_size():
	var top_left = $Deck_1.get_global_position()
	var top_right = $Deck_4.get_global_position()
	var width = top_right.x + GameDefaults.card_size.x - top_left.x
	var height = top_right.y + GameDefaults.card_size.y - top_left.y
	return Rect2(top_left.x, top_left.y, width, height)
