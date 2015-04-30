test enumerating
testPreviousMonthIn

	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5774.
	self assert: (stream previousMonth: Kislev in: 3 yearsMeasure) = (Kislev, 5771).
	self assert: (stream previousMonth: Kislev in: -3 yearsMeasure) = (Kislev, 5774)