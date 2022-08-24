extends Sprite

# todo remove initializers
var cardSuit = GameDefaults.CardSuit.Clubs
var cardNumber = GameDefaults.CardNumber.King

func initialize(cardSuit, cardNumber):
	self.cardSuit = cardSuit
	self.cardNumber = cardNumber
	
func clone():
	var clone = self.duplicate()
	clone.texture = self.texture.duplicate()
	return clone

func _ready():
	var region_offset = GameDefaults.cards_offset_mapping[cardSuit + cardNumber]
	var region_size = GameDefaults.card_size
	texture.region = Rect2(region_offset, region_size)
