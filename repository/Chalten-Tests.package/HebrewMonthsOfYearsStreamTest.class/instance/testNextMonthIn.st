test enumerating
testNextMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5774.
	self assert: (stream nextMonth: Kislev in: 3 yearsMeasure) = (Kislev, 5777).
	self assert: (stream nextMonth: Kislev in: -3 yearsMeasure) = (Kislev, 5774)