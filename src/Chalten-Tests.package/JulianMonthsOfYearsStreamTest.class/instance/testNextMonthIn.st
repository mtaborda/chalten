test enumerating
testNextMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: (stream nextMonth: May in: 3 yearsMeasure) = (JulianMay, 2017).
	self assert: (stream nextMonth: May in: -3 yearsMeasure) = (JulianMay, 2014)