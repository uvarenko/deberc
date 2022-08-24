extends Node

enum CardNumber {
	None = -1,
	Seven = 0,
	Eight = 1,
	Nine = 2,
	Ten = 3,
	Jack = 4,
	Queen = 5,
	King = 6,
	Ace = 7
}

enum CardSuit {
	Back = -1,
	Heart = 0,
	Spades = 10,
	Clubs = 20,
	Dimonds = 30,
}

var card_size = Vector2(42, 60)

var cards_offset_mapping = {
	CardSuit.Heart + CardNumber.Seven : Vector2(4, 208),
	CardSuit.Heart + CardNumber.Eight : Vector2(196, 140),
	CardSuit.Heart + CardNumber.Nine : Vector2(148, 140),
	CardSuit.Heart + CardNumber.Ten : Vector2(100, 140),
	CardSuit.Heart + CardNumber.Jack : Vector2(4, 140),
	CardSuit.Heart + CardNumber.Queen : Vector2(148, 72),
	CardSuit.Heart + CardNumber.King : Vector2(196, 72),
	CardSuit.Heart + CardNumber.Ace : Vector2(52, 140),
	
	CardSuit.Spades + CardNumber.Seven : Vector2(100, 72),
	CardSuit.Spades + CardNumber.Eight : Vector2(52, 72),
	CardSuit.Spades + CardNumber.Nine : Vector2(4, 72),
	CardSuit.Spades + CardNumber.Ten : Vector2(196, 4),
	CardSuit.Spades + CardNumber.Jack : Vector2(100, 4),
	CardSuit.Spades + CardNumber.Queen : Vector2(4, 4),
	CardSuit.Spades + CardNumber.King : Vector2(52, 4),
	CardSuit.Spades + CardNumber.Ace : Vector2(148, 4),
	
	CardSuit.Clubs + CardNumber.Seven : Vector2(100, 208),
	CardSuit.Clubs + CardNumber.Eight : Vector2(148, 208),
	CardSuit.Clubs + CardNumber.Nine : Vector2(196, 208),
	CardSuit.Clubs + CardNumber.Ten : Vector2(4, 276),
	CardSuit.Clubs + CardNumber.Jack : Vector2(100, 276),
	CardSuit.Clubs + CardNumber.Queen : Vector2(196, 276),
	CardSuit.Clubs + CardNumber.King : Vector2(148, 276),
	CardSuit.Clubs + CardNumber.Ace : Vector2(52, 276),
	
	CardSuit.Dimonds + CardNumber.Seven : Vector2(4, 344),
	CardSuit.Dimonds + CardNumber.Eight : Vector2(52, 344),
	CardSuit.Dimonds + CardNumber.Nine : Vector2(100, 344),
	CardSuit.Dimonds + CardNumber.Ten : Vector2(148, 344),
	CardSuit.Dimonds + CardNumber.Jack : Vector2(4, 412),
	CardSuit.Dimonds + CardNumber.Queen : Vector2(100, 412),
	CardSuit.Dimonds + CardNumber.King : Vector2(52, 412),
	CardSuit.Dimonds + CardNumber.Ace : Vector2(196, 344),
	
	CardSuit.Back + CardNumber.None : Vector2(52, 208),
}
