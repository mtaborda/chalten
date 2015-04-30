test interval protocol
testToByDo
	| number |
	number := 5767.
	(5767 asHebrewYear to: 5770 asHebrewYear by: twoYears)
		do: [ :year | 
			self assert: year number = number.
			number := number + 2 ].
	self assert: number = 5771