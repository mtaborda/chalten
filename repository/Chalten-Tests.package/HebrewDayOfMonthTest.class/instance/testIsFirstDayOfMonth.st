test querying
testIsFirstDayOfMonth

	self assert: Nisan first isFirstDayOfMonth.
	self deny: Nisan second isFirstDayOfMonth