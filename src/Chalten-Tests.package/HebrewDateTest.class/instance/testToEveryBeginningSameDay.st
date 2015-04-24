test interval protocol
testToEveryBeginningSameDay

	| yomSheni expectedDayNumbers interval |

	yomSheni := Nisan seventh, 5767.
	interval := yomSheni
		to: (yomSheni nextDay: calendar yomSheni)
		every: (Array with: calendar yomSheni with: calendar yomRevii with: calendar yomShishi).
	
	self assert: interval first = yomSheni.
	self assert: interval last = (yomSheni nextDay: calendar yomSheni).
	self assert: interval size = 4.
	expectedDayNumbers := #(7 9 11 14).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]