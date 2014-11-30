test comparing
testEqual
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) = (JulianJanuary , 2004).
	self deny: (MonthOfYear januaryOf: 2004 asJulianYear) = (JulianJanuary , 2005)