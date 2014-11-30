test interval protocol
testToByReverse
	| coll number |
	coll := (2004 asJulianYear to: 2011 asJulianYear by: twoYears) reverse.
	number := 2010.
	coll
		do: [ :year | 
			self assert: year number = number.
			number := number - 2 ].
	self assert: number = 2002