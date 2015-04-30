test interval protocol
testToReverse

	| interval |

	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			to: (DayOfMonth monthNumber: 1 dayNumber: 2 calendar: calendar)
			by: oneDay.
	self assert: interval reverse first = interval to.
	self assert: interval reverse last = interval from.
	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			to: (DayOfMonth monthNumber: 1 dayNumber: 2 calendar: calendar)
			by: oneDay negated.
	self assert: interval reverse first = interval to.
	self assert: interval reverse last = interval from