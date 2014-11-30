test testing
testIsLastDayOfYear

	self assert: (December thirtyfirst, 2007) isLastDayOfYear.
	self assert: (December thirtyfirst, 2008) isLastDayOfYear.

	self deny: (December thirtieth, 2007) isLastDayOfYear.
	self deny: (November thirtieth, 2007) isLastDayOfYear.
	self deny: (October thirtyfirst, 2007) isLastDayOfYear