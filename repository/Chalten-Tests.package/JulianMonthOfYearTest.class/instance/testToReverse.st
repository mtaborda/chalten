test interval protocol
testToReverse
	| coll number |
	coll := ((MonthOfYear yearNumber: 2004 monthNumber: 01 calendar: calendar) to:
		(MonthOfYear yearNumber: 2004 monthNumber: 12 calendar: calendar) by: 2 monthsMeasure) reverse.
	number := 11.
	coll
		do: [ :monthOfYear | 
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = -1