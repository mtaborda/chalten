test interval protocol
testToByDo
	| number |
	number := 1.
	((MonthOfYear muharramOf: 2004 asIslamicYear) to: (MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) by: twoMonths)
		do: [ :month | 
			self assert: month monthNumber = number.
			number := number + 2 ].
	self assert: number = 13