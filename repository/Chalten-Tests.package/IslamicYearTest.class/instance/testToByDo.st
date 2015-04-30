test interval protocol
testToByDo
	| number |
	number := 2004.
	(2004 asIslamicYear to: 2010 asIslamicYear by: twoYears)
		do: [ :aYear | 
			self assert: aYear number = number.
			number := number + 2 ].
	self assert: number = 2012