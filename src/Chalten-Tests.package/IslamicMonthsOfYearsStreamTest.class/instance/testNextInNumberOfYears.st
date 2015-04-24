test enumerating
testNextInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: (stream nextInNumberOfYears: 3 yearsMeasure) = (Safar, 1448).
	self assert: (stream nextInNumberOfYears: -3 yearsMeasure) = (Safar, 1445)