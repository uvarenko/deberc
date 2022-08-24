extends Node

class HandCard:
	var cardSuit
	var cardNumber
	
	func _init(cardSuit, cardNumber):
		self.cardSuit = cardSuit
		self.cardNumber = cardNumber
		
signal hand_changed

var hand = {
	1 : null,
	2 : null,
	3 : null,
	4 : null,
	5 : null,
	6 : null,
}

func can_take_card():
	return true
	#return hand.values().has(null)

func take_card():
	emit_signal("hand_changed")
	pass
