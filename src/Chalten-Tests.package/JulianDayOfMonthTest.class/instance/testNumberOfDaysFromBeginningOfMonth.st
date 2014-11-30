test accessing
testNumberOfDaysFromBeginningOfMonth
	self
		assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self
		assert: (DayOfMonth monthNumber: 1 dayNumber: 31 calendar: calendar) numberOfDaysFromBeginningOfMonth = 30 daysMeasure.
	self
		assert: (DayOfMonth monthNumber: 2 dayNumber: 29 calendar: calendar) numberOfDaysFromBeginningOfMonth = 28 daysMeasure