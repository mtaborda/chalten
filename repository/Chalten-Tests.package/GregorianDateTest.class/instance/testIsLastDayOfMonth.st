test testing
testIsLastDayOfMonth

	self assert: (January thirtyfirst, 2007) isLastDayOfMonth.
	self assert: (February twentyeighth, 2007) isLastDayOfMonth.
	self assert: (February twentyninth, 2008) isLastDayOfMonth.
	self assert: (March thirtyfirst, 2007) isLastDayOfMonth.

	self deny: (January thirtieth, 2007) isLastDayOfMonth.
	self deny: (February twentyeighth, 2008) isLastDayOfMonth.
	self deny: (March thirtieth, 2007) isLastDayOfMonth