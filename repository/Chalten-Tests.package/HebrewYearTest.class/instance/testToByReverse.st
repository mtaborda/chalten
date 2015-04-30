test interval protocol
testToByReverse
	| coll number |
	coll := (5767 asHebrewYear to: 5771 asHebrewYear by: twoYears) reverse.
	number := 5771.
	coll
		do: [ :year | 
			self assert: year number = number.
			number := number - 2 ].
	self assert: number = 5765