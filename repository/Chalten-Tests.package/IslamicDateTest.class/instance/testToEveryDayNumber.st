test interval protocol
testToEveryDayNumber
	| expectedMonths interval |
	interval := Muharram first , 1428 to: DhuAlHijja thirtieth , 1428 everyDayNumber: 30.
	self assert: interval first = (Muharram thirtieth , 1428).
	self assert: interval last = (DhuAlHijja thirtieth , 1428).
	self assert: interval size = 7.
	expectedMonths := calendar months select: [ :month | (month lastDayNumberIn: 2004 asIslamicYear) = 30 ].
	interval
		inject: 1
		into: [ :index :date | 
			self assert: date month = (expectedMonths at: index).
			self assert: date dayNumber = 30.
			index + 1 ]