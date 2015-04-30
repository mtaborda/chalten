test accessing
testDayOfMonth

	self assert: (Tevet first, 1) dayOfMonth = (DayOfMonth monthNumber: 10 dayNumber: 1 calendar: calendar)