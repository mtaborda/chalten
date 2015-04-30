test interval protocol
testToEveryDayNumbers

	| expectedDayNumbers interval |

	interval := JulianJanuary first, 2007 to: JulianDecember thirtyfirst, 2007 everyDayNumbers: (Array with: 5 with: 20 with: 31 with: 1).
	self assert: interval first = (JulianJanuary first, 2007).
	self assert: interval last = (JulianDecember thirtyfirst, 2007).
	self assert: interval size = 43.
	expectedDayNumbers := #(1 5 20 31 1 5 20 1 5 20 31 1 5 20 1 5 20 31 1 5 20 1 5 20 31 1 5 20 31 1 5 20 1 5 20 31 1 5 20 1 5 20 31).
	interval
		inject: 1
		into: [:index :date |
			self assert: date dayNumber = (expectedDayNumbers at: index).
			index + 1]