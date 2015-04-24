test comparing
testHash
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) hash = (JulianJanuary , 2004) hash.
	self deny: (MonthOfYear januaryOf: 2004 asJulianYear) hash = (JulianJanuary , 2005) hash