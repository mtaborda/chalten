test interval protocol
testToEveryBeginningSameDay

	| yaumAlIthnayna expectedDayNumbers interval |

	yaumAlIthnayna := Muharram third, 1428.
	interval := yaumAlIthnayna
		to: (yaumAlIthnayna nextDay: calendar yaumAlIthnayna)
		every: (Array with: calendar yaumAlIthnayna with: calendar yaumAlArbaa with: calendar yaumAlJuma).
	
	self assert: interval first = yaumAlIthnayna.
	self assert: interval last = (yaumAlIthnayna nextDay: calendar yaumAlIthnayna).
	self assert: interval size = 4.
	expectedDayNumbers := #(3 5 7 10).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]