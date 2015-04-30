test enumerating
testPreviousInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: (stream previousInNumberOfYears: 3 yearsMeasure) = (Safar, 1442).
	self assert: (stream previousInNumberOfYears: -3 yearsMeasure) = (Safar, 1445)