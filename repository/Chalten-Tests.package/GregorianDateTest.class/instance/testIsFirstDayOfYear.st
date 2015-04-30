test testing
testIsFirstDayOfYear

	self assert: (January first, 2007) isFirstDayOfYear.
	self deny: (February first, 2007) isFirstDayOfYear