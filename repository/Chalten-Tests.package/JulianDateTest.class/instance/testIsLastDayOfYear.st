test testing
testIsLastDayOfYear

	self assert: (JulianDecember thirtyfirst, 2007) isLastDayOfYear.
	self assert: (JulianDecember thirtyfirst, 2008) isLastDayOfYear.

	self deny: (JulianDecember thirtieth, 2007) isLastDayOfYear.
	self deny: (JulianNovember thirtieth, 2007) isLastDayOfYear.
	self deny: (JulianOctober thirtyfirst, 2007) isLastDayOfYear