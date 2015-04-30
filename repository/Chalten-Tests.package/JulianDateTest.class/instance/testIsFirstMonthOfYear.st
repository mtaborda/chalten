test testing
testIsFirstMonthOfYear

	self assert: (JulianJanuary first, 2007) isFirstMonthOfYear.
	self assert: (JulianJanuary second, 2007) isFirstMonthOfYear.
	
	self deny: (JulianFebruary third, 2007) isFirstMonthOfYear.
	self deny: (JulianDecember fifteenth, 2007) isFirstMonthOfYear