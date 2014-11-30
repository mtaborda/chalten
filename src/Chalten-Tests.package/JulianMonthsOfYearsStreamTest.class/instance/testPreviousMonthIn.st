test enumerating
testPreviousMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: (stream previousMonth: May in: 3 yearsMeasure) = (JulianMay, 2011).
	self assert: (stream previousMonth: May in: -3 yearsMeasure) = (JulianMay, 2014)