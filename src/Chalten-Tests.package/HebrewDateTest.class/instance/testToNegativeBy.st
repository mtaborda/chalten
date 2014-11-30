test interval protocol
testToNegativeBy

	| interval number |

	interval := Nisan thirtieth, 5767 to: Nisan first, 5767 by: self twoDays negated.
	number := 30.
	interval do: [:date |
		self assert: date dayNumber = number.
		number := number - 2].
	self assert: number = 0