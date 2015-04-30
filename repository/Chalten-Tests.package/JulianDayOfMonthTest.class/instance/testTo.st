test interval protocol
testTo

	| interval |

	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			to: (DayOfMonth monthNumber: 1 dayNumber: 10 calendar: calendar).
	self assert: interval from = (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar).
	self assert: interval to = (DayOfMonth monthNumber: 1 dayNumber: 10 calendar: calendar).
	self assert: interval by = oneDay