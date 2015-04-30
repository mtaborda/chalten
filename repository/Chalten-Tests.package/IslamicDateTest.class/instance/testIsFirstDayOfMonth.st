test testing
testIsFirstDayOfMonth

	self assert: (Muharram first, 1428) isFirstDayOfMonth.
	self deny: (Muharram second, 1428) isFirstDayOfMonth