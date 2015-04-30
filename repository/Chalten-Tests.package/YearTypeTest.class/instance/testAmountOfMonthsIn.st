test
testAmountOfMonthsIn

	self assert: (leapYearType amountOfMonthsIn: self) = 12.
	self assert: (nonleapYearType amountOfMonthsIn: self) = 12