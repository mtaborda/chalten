test interval protocol
testToEveryDayBeginningDifferentDay

	| monday expectedDayNumbers interval |

	monday := January first, 2007.
	interval := monday to: (monday nextDay: calendar monday) next everyDay: calendar tuesday.

	self assert: interval first = monday next.
	self assert: interval last = (monday nextDay: calendar monday) next.
	self assert: interval size = 2.
	expectedDayNumbers := #(2 9).
	interval
		inject: 1
		into: [:index :date |
			self assert: date dayNumber = (expectedDayNumbers at: index).
			index + 1]