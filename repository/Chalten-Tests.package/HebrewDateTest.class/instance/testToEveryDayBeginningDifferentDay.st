test interval protocol
testToEveryDayBeginningDifferentDay

	| yomSheni expectedDayNumbers interval |

	yomSheni := Nisan seventh, 5767.
	interval := yomSheni to: (yomSheni nextDay: calendar yomSheni) next everyDay: calendar yomShelishi.

	self assert: interval first = yomSheni next.
	self assert: interval last = (yomSheni nextDay: calendar yomSheni) next.
	self assert: interval size = 2.
	expectedDayNumbers := #(8 15).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]