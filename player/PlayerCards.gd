extends Node2D

# imports
var card_scene = preload("res://card/Card.tscn")

func _ready():
	GameState.connect("hand_changed", self, "_invalidate_hand")

func get_size():
	var top_left = $Card_1.get_global_position()
	var top_right = $Card_6.get_global_position()
	var width = top_right.x + GameDefaults.card_size.x - top_left.x
	var height = GameDefaults.card_size.y
	return Vector2(width, height)

func add_card(cardSuit, cardNumber):
	for card_id in GameState.hand.keys():
		if GameState.hand[card_id] == null:
			GameState.hand[card_id] = GameState.HandCard.new(cardSuit, cardNumber)
			break
	#GameState.take_card()
#	_invalidate_hand()

func _invalidate_hand():
	for card_id in GameState.hand.keys():
		if GameState.hand[card_id] != null:
			var card = card_scene.instance().clone()
			card.initialize(GameState.hand[card_id].cardSuit, GameState.hand[card_id].cardNumber)
			_place_card(card_id, card)

	for child in get_child_count():
		var a = get_child(child)
		print(a)

func _place_card(card_id, card):
	add_child(card)
	if card_id == 1:
		card.position = $Card_1.position
	elif card_id == 2:
		card.position = $Card_2.position
	elif card_id == 3:
		card.position = $Card_3.position
	elif card_id == 4:
		card.position = $Card_4.position
	elif card_id == 5:
		card.position = $Card_5.position
	elif card_id == 6:
		card.position = $Card_6.position
