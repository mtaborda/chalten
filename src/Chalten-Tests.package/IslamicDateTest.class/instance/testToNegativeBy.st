test interval protocol
testToNegativeBy

	| interval number |

	interval := Muharram thirtieth, 1428 to: Muharram first, 1428 by: self twoDays negated.
	number := 30.
	interval do: [:date |
		self assert: date dayNumber = number.
		number := number - 2].
	self assert: number = 0