test accessing
testMonths
	self assert: 2008 asJulianYear months size = 12.
	self assert: 2008 asJulianYear months first = (JulianJanuary , 2008).
	self assert: 2008 asJulianYear months last = (JulianDecember , 2008)