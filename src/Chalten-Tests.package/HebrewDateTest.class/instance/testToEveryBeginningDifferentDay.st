test interval protocol
testToEveryBeginningDifferentDay

	| yomSheni expectedDayNumbers interval |

	yomSheni := Nisan seventh, 5767.
	interval := yomSheni
		to: (yomSheni nextDay: calendar yomSheni) next
		every: (Array with: calendar yomShelishi with: calendar yomRevii with: calendar yomShishi).
	
	self assert: interval first = yomSheni next.
	self assert: interval last = (yomSheni nextDay: calendar yomSheni) next.
	self assert: interval size = 4.
	expectedDayNumbers := #(8 9 11 15).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]