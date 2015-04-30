test interval protocol
testToEveryDayBeginningSameDay

	| monday expectedDayNumbers interval |

	monday := JulianJanuary second, 2007.
	interval := monday to: (monday nextDay: calendar monday) everyDay: calendar monday.

	self assert: interval first = monday.
	self assert: interval last = (monday nextDay: calendar monday).
	self assert: interval size = 2.
	expectedDayNumbers := #(2 9).
	interval
		inject: 1
		into: [:index :date |
			self assert: date dayNumber = (expectedDayNumbers at: index).
			index + 1]