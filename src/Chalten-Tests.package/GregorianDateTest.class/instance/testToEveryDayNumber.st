test interval protocol
testToEveryDayNumber
	| expectedMonths interval |
	interval := January first , 2007 to: December thirtyfirst , 2007 everyDayNumber: 31.
	self assert: interval first = (January thirtyfirst , 2007).
	self assert: interval last = (December thirtyfirst , 2007).
	self assert: interval size = 7.
	expectedMonths := calendar months select: [ :month | (month lastDayNumberIn: 2007 asGregorianYear) = 31 ].
	interval
		inject: 1
		into: [ :index :date | 
			self assert: date month = (expectedMonths at: index).
			self assert: date dayNumber = 31.
			index + 1 ]