test interval protocol
testToNegativeBy
	| interval number |
	interval := (MonthOfYear yearNumber: 2004 monthNumber: 12 calendar: calendar) to:
		(MonthOfYear yearNumber: 2004 monthNumber: 01 calendar: calendar) by: -2 monthsMeasure.
	number := 12.
	interval
		do: [ :monthOfYear | 
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = 0