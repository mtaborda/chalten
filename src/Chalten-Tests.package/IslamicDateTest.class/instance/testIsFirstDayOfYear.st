test testing
testIsFirstDayOfYear

	self assert: (Muharram first, 1428) isFirstDayOfYear.
	self deny: (Muharram second, 1428) isFirstDayOfYear