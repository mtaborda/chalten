test interval protocol
testToEveryBeginningDifferentDay

	| monday expectedDayNumbers interval |

	monday := JulianJanuary second, 2007.
	interval := monday to: (monday nextDay: calendar monday) next every: (Array with: calendar tuesday with: calendar wednesday with: calendar friday).

	self assert: interval first = monday next.
	self assert: interval last = (monday nextDay: calendar monday) next.
	self assert: interval size = 4.
	expectedDayNumbers := #(3 4 6 10).
	interval
		inject: 1
		into: [:index :date |
			self assert: date dayNumber = (expectedDayNumbers at: index).
			index + 1]