test includes
testIncludesDateTime

	self assert: (JulianJanuary first, 2007 includes: (JulianJanuary first, 2007) atMidnight).
	self assert: (JulianJanuary first, 2007 includes: (JulianJanuary first, 2007) atLastTimeOfDay).

	self deny: (JulianJanuary first, 2007 includes: (JulianFebruary first, 2007) atMidnight).
	self deny: (JulianJanuary first, 2007 includes: (JulianDecember thirtyfirst, 2006) atLastTimeOfDay)