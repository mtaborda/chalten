test interval protocol
testToNegativeBy
	| interval number |
	interval := 5771 asHebrewYear to: 5767 asHebrewYear by: twoYears negated.
	number := 5771.
	interval
		do: [ :year | 
			self assert: year number = number.
			number := number - 2 ].
	self assert: number = 5765