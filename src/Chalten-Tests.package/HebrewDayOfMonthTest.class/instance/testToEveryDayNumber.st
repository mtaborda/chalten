test interval protocol
testToEveryDayNumber

	| expectedMonths interval |

	interval := Nisan first to: Adar twentyninth everyDayNumber: 30.
	self assert: interval first = Nisan thirtieth.
	self assert: interval last = Shevat thirtieth.
	self assert: interval size = 7.
	expectedMonths := calendar months select: [:month | month lastDayNumber = 30].
	interval
		inject: 1
		into: [:index :dayMonth |
			self assert: dayMonth month = (expectedMonths at: index).
			self assert: dayMonth dayNumber = 30.
			index + 1]