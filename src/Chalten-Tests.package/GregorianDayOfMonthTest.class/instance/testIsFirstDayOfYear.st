test querying
testIsFirstDayOfYear

	self assert: (DayOfMonth monthNumber: 01 dayNumber: 01 calendar: calendar) isFirstDayOfYear.
	self deny: (DayOfMonth monthNumber: 01 dayNumber: 02 calendar: calendar) isFirstDayOfYear