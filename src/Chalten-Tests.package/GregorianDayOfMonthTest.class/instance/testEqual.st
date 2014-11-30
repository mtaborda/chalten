test comparing
testEqual

	self assert:
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) =
			(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar).
	self deny:
		(DayOfMonth monthNumber: 1 dayNumber: 2 calendar: calendar) =
			(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)