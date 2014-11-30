test interval protocol
testToBy

	| interval |

	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			to: (DayOfMonth monthNumber: 1 dayNumber: 10 calendar: calendar)
			by: twoDays.
	self assert: interval from = (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar).
	self assert: interval to = (DayOfMonth monthNumber: 1 dayNumber: 10 calendar: calendar).
	self assert: interval by = twoDays