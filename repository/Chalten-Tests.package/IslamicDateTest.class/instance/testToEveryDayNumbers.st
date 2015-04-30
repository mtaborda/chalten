test interval protocol
testToEveryDayNumbers

	| expectedDayNumbers interval |

	interval := Muharram first, 1428 to: DhuAlHijja thirtieth, 1428 everyDayNumbers: (Array with: 5 with: 20 with: 30 with: 1).

	self assert: interval first = (Muharram first, 1428).
	self assert: interval last = (DhuAlHijja thirtieth, 1428).
	self assert: interval size = 43.
	expectedDayNumbers :=  #(1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 30).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]