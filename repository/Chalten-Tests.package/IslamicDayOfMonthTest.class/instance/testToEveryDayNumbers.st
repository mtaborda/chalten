test interval protocol
testToEveryDayNumbers

	| expectedDayNumbers interval |

	interval := Muharram first to: DhuAlHijja thirtieth everyDayNumbers: (Array with: 5 with: 20 with: 30 with: 1).
	self assert: interval first = Muharram first.
	self assert: interval last = Muharram first.
	self assert: interval size = 43.
	expectedDayNumbers := #(1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1).
	interval
		inject: 1
		into: [:index :dayMonth |
			self assert: dayMonth dayNumber = (expectedDayNumbers at: index).
			index + 1]