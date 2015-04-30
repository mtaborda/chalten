test interval protocol
testToEveryDayNumbers

	| expectedDayNumbers interval |

	interval :=
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar)
			to: (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar)
			everyDayNumbers: (Array with: 5 with: 20 with: 31 with: 1).
	self
		assert: interval first = (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar).
	self assert:
		interval last = (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar).
	self assert: interval size = 43.
	expectedDayNumbers := #(1 5 20 31 1 5 20 1 5 20 31 1 5 20 1 5 20 31 1 5 20 1 5 20 31 1 5 20 31 1
	5 20 1 5 20 31 1 5 20 1 5 20 31).
	interval
		inject: 1
		into: [:index :dayMonth |
			self assert: dayMonth dayNumber = (expectedDayNumbers at: index).
			index + 1]