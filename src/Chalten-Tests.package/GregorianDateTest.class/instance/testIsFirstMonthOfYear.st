test testing
testIsFirstMonthOfYear

	self assert: (January first, 2007) isFirstMonthOfYear.
	self assert: (January second, 2007) isFirstMonthOfYear.
	
	self deny: (February third, 2007) isFirstMonthOfYear.
	self deny: (December fifteenth, 2007) isFirstMonthOfYear