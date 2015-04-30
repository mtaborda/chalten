test interval protocol
testToEveryBeginningDifferentDay

	| yaumAlIthnayna expectedDayNumbers interval |

	yaumAlIthnayna := Muharram third, 1428.
	interval := yaumAlIthnayna
		to: (yaumAlIthnayna nextDay: calendar yaumAlIthnayna) next
		every: (Array with: calendar yaumAthThalatha with: calendar yaumAlArbaa with: calendar yaumAlJuma).
	
	self assert: interval first = yaumAlIthnayna next.
	self assert: interval last = (yaumAlIthnayna nextDay: calendar yaumAlIthnayna) next.
	self assert: interval size = 4.
	expectedDayNumbers := #(4 5 7 11).
	interval inject: 1 into: [:index :date |
		self assert: date dayNumber = (expectedDayNumbers at: index).
		index + 1]