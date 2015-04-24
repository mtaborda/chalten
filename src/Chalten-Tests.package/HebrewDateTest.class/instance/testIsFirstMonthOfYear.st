test testing
testIsFirstMonthOfYear

	self assert: (Tishri first, 5767) isFirstMonthOfYear.
	self assert: (Tishri second, 5767) isFirstMonthOfYear.
	
	self deny: (Nisan third, 5767) isFirstMonthOfYear.
	self deny: (Iyyar fifteenth, 5767) isFirstMonthOfYear