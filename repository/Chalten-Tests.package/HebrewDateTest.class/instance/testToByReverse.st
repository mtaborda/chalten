test interval protocol
testToByReverse

	| coll number |

	coll := (Nisan first, 5767 to: Nisan thirtieth, 5767 by: self twoDays) reverse.
	number := 29.
	coll do: [:date |
		self assert: date dayNumber = number.
		number := number - 2].
	self assert: number = -1