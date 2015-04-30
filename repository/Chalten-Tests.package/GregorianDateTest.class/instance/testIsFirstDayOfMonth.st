test testing
testIsFirstDayOfMonth

	self assert: (January first, 2007) isFirstDayOfMonth.
	self deny: (January second, 2007) isFirstDayOfMonth