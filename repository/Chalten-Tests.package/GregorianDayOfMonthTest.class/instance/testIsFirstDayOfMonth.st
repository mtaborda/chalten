test querying
testIsFirstDayOfMonth

	self assert: (DayOfMonth monthNumber: 01 dayNumber: 01 calendar: calendar) isFirstDayOfMonth.
	self deny: (DayOfMonth monthNumber: 01 dayNumber: 02 calendar: calendar) isFirstDayOfMonth