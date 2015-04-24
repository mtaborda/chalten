test year testing
testAmountOfMonthsInYear
	self assert: (HebrewCalendar amountOfMonthsInYear: 5767 asHebrewYear) = 12.
	self assert: (HebrewCalendar amountOfMonthsInYear: 5768 asHebrewYear) = 13