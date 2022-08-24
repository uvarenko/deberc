extends Node2D

var card_scene = preload("res://card/Card.tscn")

onready var background = $Background
onready var player_cards = $PlayerCards
onready var deck = $Deck
onready var player_1_card = player_cards.get_node("Card_1")
onready var player_2_card = player_cards.get_node("Card_2")
onready var player_3_card = player_cards.get_node("Card_3")
onready var player_4_card = player_cards.get_node("Card_4")
onready var player_5_card = player_cards.get_node("Card_5")
onready var player_6_card = player_cards.get_node("Card_6")

func _ready():
	# place hand
	var player_cards_size = player_cards.get_size()
	var board_size = get_viewport_rect().size
	var offset_left = (board_size.x - player_cards_size.x) / 2
	var offset_top = board_size.y - player_cards_size.y - 20
	player_cards.position = Vector2(offset_left, offset_top)
	# place deck
	var deck_size = deck.get_size().size
	var deck_offset_top = (board_size.y - deck_size.y) / 2
	deck.position = Vector2(20, deck_offset_top)
	
	# todo remove test data
	player_cards.add_card(GameDefaults.CardSuit.Dimonds, GameDefaults.CardNumber.Jack)
	player_cards.add_card(GameDefaults.CardSuit.Spades, GameDefaults.CardNumber.King)
	player_cards.add_card(GameDefaults.CardSuit.Heart, GameDefaults.CardNumber.Seven)
	player_cards.add_card(GameDefaults.CardSuit.Clubs, GameDefaults.CardNumber.Jack)
	player_cards.add_card(GameDefaults.CardSuit.Dimonds, GameDefaults.CardNumber.Eight)
	player_cards.add_card(GameDefaults.CardSuit.Dimonds, GameDefaults.CardNumber.Ace)
	pass
