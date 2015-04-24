test interval protocol
testToByReverse
	| coll number |
	coll := (2004 asGregorianYear to: 2011 asGregorianYear by: twoYears) reverse.
	number := 2010.
	coll
		do: [ :year | 
			self assert: year number = number.
			number := number - 2 ].
	self assert: number = 2002