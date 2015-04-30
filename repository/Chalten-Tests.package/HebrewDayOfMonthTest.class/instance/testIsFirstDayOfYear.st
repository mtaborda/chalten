test querying
testIsFirstDayOfYear

	self assert: Tishri first isFirstDayOfYear.
	self deny: Nisan second isFirstDayOfYear