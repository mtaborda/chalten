test querying
testIsFirstDayOfMonth

	self assert: Muharram first isFirstDayOfMonth.
	self deny: Muharram second isFirstDayOfMonth