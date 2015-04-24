test enumerating
testNextMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: (stream nextMonth: Ramadan in: 3 yearsMeasure) = (Ramadan, 1448).
	self assert: (stream nextMonth: Ramadan in: -3 yearsMeasure) = (Ramadan, 1445)