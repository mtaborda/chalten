test accessing
testLastMonth
	self assert: 2008 asJulianYear lastMonth = (JulianDecember , 2008).
	self assert: 2007 asJulianYear lastMonth = (JulianDecember , 2007)