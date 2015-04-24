test interval protocol
testToEveryDayBeginningDifferentDay

	| yaumAlIthnayna expectedDayNumbers interval |

	yaumAlIthnayna := Muharram third, 1428.
	interval := yaumAlIthnayna to: (yaumAlIthnayna nextDay: calendar yaumAlIthnayna) next everyDay: calendar yaumAthThalatha.

	self assert: interval first = yaumAlIthnayna next.
	self assert: interval last = (yaumAlIthnayna nextDay: calendar yaumAlIthnayna) next.
	self assert: interval size = 2.
	expectedDayNumbers := #(4 11).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]