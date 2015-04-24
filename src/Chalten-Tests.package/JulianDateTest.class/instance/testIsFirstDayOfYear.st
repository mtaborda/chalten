test testing
testIsFirstDayOfYear

	self assert: (JulianJanuary first, 2007) isFirstDayOfYear.
	self deny: (JulianFebruary first, 2007) isFirstDayOfYear