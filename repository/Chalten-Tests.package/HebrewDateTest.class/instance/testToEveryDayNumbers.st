test interval protocol
testToEveryDayNumbers

	| expectedDayNumbers interval |

	interval := Tishri first, 5767 to: Elul twentyninth, 5767 everyDayNumbers: (Array with: 5 with: 20 with: 30 with: 1).

	self assert: interval first = (Tishri first, 5767).
	self assert: interval last = (Elul twentieth, 5767).
	self assert: interval size = 43.
	expectedDayNumbers :=  #(1 5 20 30 1 5 20 30 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20 1 5 20 30 1 5 20).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]