test interval protocol
testToNegativeBy

	| interval number |

	interval := Muharram thirtieth to: Muharram first by: twoDays negated.
	number := 30.
	interval do: [:dayOfMonth |
		self assert: dayOfMonth dayNumber = number.
		number := number - 2].
	self assert: number = 0