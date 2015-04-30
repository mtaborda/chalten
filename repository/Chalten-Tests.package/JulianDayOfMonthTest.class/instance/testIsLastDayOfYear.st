test querying
testIsLastDayOfYear

	self assert: (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar) isLastDayOfYear.
	self deny: (DayOfMonth monthNumber: 12 dayNumber: 30 calendar: calendar) isLastDayOfYear.
	self deny: (DayOfMonth monthNumber: 11 dayNumber: 30 calendar: calendar) isLastDayOfYear