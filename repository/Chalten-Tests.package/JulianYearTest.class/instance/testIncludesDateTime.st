test includes
testIncludesDateTime
	self assert: (2007 asJulianYear includes: (JulianJanuary first , 2007) atMidnight).
	self assert: (2007 asJulianYear includes: (JulianDecember thirtyfirst , 2007) atLastTimeOfDay).
	self deny: (2007 asJulianYear includes: (JulianJanuary first , 2008) atMidnight).
	self deny: (2007 asJulianYear includes: (JulianDecember thirtyfirst , 2006) atLastTimeOfDay)