test enumerating
testPreviousMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: (stream previousMonth: May in: 3 yearsMeasure) = (May, 2011).
	self assert: (stream previousMonth: May in: -3 yearsMeasure) = (May, 2014)