test interval protocol
testToByDo
	| number |
	number := 2004.
	(2004 asGregorianYear to: 2010 asGregorianYear by: twoYears)
		do: [ :year | 
			self assert: year number = number.
			number := number + 2 ].
	self assert: number = 2012