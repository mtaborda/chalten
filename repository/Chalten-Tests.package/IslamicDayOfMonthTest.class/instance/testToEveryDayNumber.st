test interval protocol
testToEveryDayNumber

	| expectedMonths interval |

	interval := Muharram first to: DhuAlHijja twentyninth everyDayNumber: 30.
	self assert: interval first = Muharram thirtieth.
	self assert: interval last = DhuAlQada thirtieth.
	self assert: interval size = 6.
	expectedMonths := calendar months select: [:month | month lastDayNumber = 30].
	interval
		inject: 1
		into: [:index :dayMonth |
			self assert: dayMonth month = (expectedMonths at: index).
			self assert: dayMonth dayNumber = 30.
			index + 1]