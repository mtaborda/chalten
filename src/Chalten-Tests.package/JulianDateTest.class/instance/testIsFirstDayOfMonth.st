test testing
testIsFirstDayOfMonth

	self assert: (JulianJanuary first, 2007) isFirstDayOfMonth.
	self deny: (JulianJanuary second, 2007) isFirstDayOfMonth