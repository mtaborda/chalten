test querying
testIsLastDayOfMonth

	self assert: (DayOfMonth monthNumber: 01 dayNumber: 31 calendar: calendar) isLastDayOfMonth.
	self assert: (DayOfMonth monthNumber: 02 dayNumber: 29 calendar: calendar) isLastDayOfMonth.
	self assert: (DayOfMonth monthNumber: 04 dayNumber: 30 calendar: calendar) isLastDayOfMonth.

	self deny: (DayOfMonth monthNumber: 01 dayNumber: 30 calendar: calendar) isLastDayOfMonth.
	self deny: (DayOfMonth monthNumber: 02 dayNumber: 28 calendar: calendar) isLastDayOfMonth.
	self deny: (DayOfMonth monthNumber: 03 dayNumber: 30 calendar: calendar) isLastDayOfMonth