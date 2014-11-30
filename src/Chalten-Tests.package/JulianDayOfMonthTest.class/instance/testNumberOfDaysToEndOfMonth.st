test accessing
testNumberOfDaysToEndOfMonth
	self assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) numberOfDaysToEndOfMonth = 30 daysMeasure.
	self assert: (DayOfMonth monthNumber: 1 dayNumber: 31 calendar: calendar) numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: (DayOfMonth monthNumber: 2 dayNumber: 28 calendar: calendar) numberOfDaysToEndOfMonth = 1 dayMeasure