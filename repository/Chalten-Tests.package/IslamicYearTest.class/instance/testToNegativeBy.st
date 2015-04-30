test interval protocol
testToNegativeBy
	| interval number |
	interval := 2011 asIslamicYear to: 2004 asIslamicYear by: twoYears negated.
	number := 2011.
	interval
		do: [ :aYear | 
			self assert: aYear number = number.
			number := number - 2 ].
	self assert: number = 2003