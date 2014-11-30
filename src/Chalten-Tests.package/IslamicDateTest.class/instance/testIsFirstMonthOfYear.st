test testing
testIsFirstMonthOfYear

	self assert: (Muharram first, 1428) isFirstMonthOfYear.
	self assert: (Muharram second, 1428) isFirstMonthOfYear.
	
	self deny: (Safar third, 1428) isFirstMonthOfYear.
	self deny: (DhuAlHijja fifteenth, 1428) isFirstMonthOfYear