test interval protocol
testToEveryDayBeginningSameDay

	| yomSheni expectedDayNumbers interval |

	yomSheni := Nisan seventh, 5767.
	interval := yomSheni to: (yomSheni nextDay: calendar yomSheni) everyDay: calendar yomSheni.

	self assert: interval first = yomSheni.
	self assert: interval last = (yomSheni nextDay: calendar yomSheni).
	self assert: interval size = 2.
	expectedDayNumbers := #(7 14).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]