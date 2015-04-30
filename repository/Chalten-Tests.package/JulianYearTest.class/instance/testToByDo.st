test interval protocol
testToByDo
	| number |
	number := 2004.
	(2004 asJulianYear to: 2010 asJulianYear by: twoYears)
		do: [ :year | 
			self assert: year number = number.
			number := number + 2 ].
	self assert: number = 2012