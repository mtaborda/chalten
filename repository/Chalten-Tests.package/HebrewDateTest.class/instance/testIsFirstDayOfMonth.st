test testing
testIsFirstDayOfMonth

	self assert: (Nisan first, 5767) isFirstDayOfMonth.
	self deny: (Nisan second, 5767) isFirstDayOfMonth