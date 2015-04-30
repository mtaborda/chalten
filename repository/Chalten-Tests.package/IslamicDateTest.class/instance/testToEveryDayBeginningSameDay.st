test interval protocol
testToEveryDayBeginningSameDay

	| yaumAlIthnayna expectedDayNumbers interval |

	yaumAlIthnayna := Muharram third, 1428.
	interval := yaumAlIthnayna to: (yaumAlIthnayna nextDay: calendar yaumAlIthnayna) everyDay: calendar yaumAlIthnayna.

	self assert: interval first = yaumAlIthnayna.
	self assert: interval last = (yaumAlIthnayna nextDay: calendar yaumAlIthnayna).
	self assert: interval size = 2.
	expectedDayNumbers := #(3 10).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]