test testing
testIsFirstDayOfYear

	self assert: (Tishri first, 5767) isFirstDayOfYear.
	self deny: (Nisan first, 5767) isFirstDayOfYear