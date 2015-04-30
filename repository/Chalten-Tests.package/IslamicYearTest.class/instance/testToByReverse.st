test interval protocol
testToByReverse
	| coll number |
	coll := (2004 asIslamicYear to: 2011 asIslamicYear by: twoYears) reverse.
	number := 2010.
	coll
		do: [ :aYear | 
			self assert: aYear number = number.
			number := number - 2 ].
	self assert: number = 2002