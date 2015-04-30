test interval protocol
testToEveryDayNumber
	| expectedMonths interval |
	interval := JulianJanuary first , 2007 to: JulianDecember thirtyfirst , 2007 everyDayNumber: 31.
	self assert: interval first = (JulianJanuary thirtyfirst , 2007).
	self assert: interval last = (JulianDecember thirtyfirst , 2007).
	self assert: interval size = 7.
	expectedMonths := calendar months select: [ :month | (month lastDayNumberIn: 2007 asJulianYear) = 31 ].
	interval
		inject: 1
		into: [ :index :date | 
			self assert: date month = (expectedMonths at: index).
			self assert: date dayNumber = 31.
			index + 1 ]