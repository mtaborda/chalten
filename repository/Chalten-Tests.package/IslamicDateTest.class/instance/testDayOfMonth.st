test accessing
testDayOfMonth

	self assert: (Shawwal first, 1) dayOfMonth = (DayOfMonth monthNumber: 10 dayNumber: 1 calendar: calendar)