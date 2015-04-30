test enumerating
testNextMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: (stream nextMonth: May in: 3 yearsMeasure) = (May, 2017).
	self assert: (stream nextMonth: May in: -3 yearsMeasure) = (May, 2014)