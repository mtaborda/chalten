test interval protocol
testToEveryDayNumber

	| expectedMonths interval |

	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			to: (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar)
			everyDayNumber: 31.
	self assert: interval first = (DayOfMonth monthNumber: 1 dayNumber: 31 calendar: calendar).
	self assert: interval last = (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar).
	self assert: interval size = 7.
	expectedMonths := calendar months select: [:month | month lastDayNumber = 31].
	interval
		inject: 1
		into: [:index :dayMonth |
			self assert: dayMonth month = (expectedMonths at: index).
			self assert: dayMonth dayNumber = 31.
			index + 1]