test testing
testIsLastDayOfMonth

	self assert: (JulianJanuary thirtyfirst, 2007) isLastDayOfMonth.
	self assert: (JulianFebruary twentyeighth, 2007) isLastDayOfMonth.
	self assert: (JulianFebruary twentyninth, 2008) isLastDayOfMonth.
	self assert: (JulianMarch thirtyfirst, 2007) isLastDayOfMonth.

	self deny: (JulianJanuary thirtieth, 2007) isLastDayOfMonth.
	self deny: (JulianFebruary twentyeighth, 2008) isLastDayOfMonth.
	self deny: (JulianMarch thirtieth, 2007) isLastDayOfMonth