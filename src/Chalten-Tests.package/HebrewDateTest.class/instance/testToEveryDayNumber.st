test interval protocol
testToEveryDayNumber
	| expectedMonths interval |
	interval := Tishri first , 5767 to: Elul twentyninth , 5767 everyDayNumber: 30.
	self assert: interval first = (Tishri thirtieth , 5767).
	self assert: interval last = (Av thirtieth , 5767).
	self assert: interval size = 7.
	expectedMonths := calendar months select: [ :month | (month lastDayNumberIn: 5767 asHebrewYear) = 30 ].
	interval
		inject: 4
		into: [ :index :date | 
			self assert: date month = (expectedMonths at: index).
			self assert: date dayNumber = 30.
			index = expectedMonths size
				ifTrue: [ index - expectedMonths size + 1 ]
				ifFalse: [ index + 1 ] ]