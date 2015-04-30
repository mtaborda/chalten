test enumerating
testPreviousMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: (stream previousMonth: Ramadan in: 3 yearsMeasure) = (Ramadan, 1442).
	self assert: (stream previousMonth: Ramadan in: -3 yearsMeasure) = (Ramadan, 1445)