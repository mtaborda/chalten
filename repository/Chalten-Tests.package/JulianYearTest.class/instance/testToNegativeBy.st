test interval protocol
testToNegativeBy
	| interval number |
	interval := 2011 asJulianYear to: 2004 asJulianYear by: twoYears negated.
	number := 2011.
	interval
		do: [ :year | 
			self assert: year number = number.
			number := number - 2 ].
	self assert: number = 2003