test interval protocol
testToNegativeBy

	| interval number |

	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 30 calendar: calendar)
			to: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			by: twoDays negated.
	number := 30.
	interval do: [:dayOfMonth |
		self assert: dayOfMonth dayNumber = number.
		number := number - 2].
	self assert: number = 0