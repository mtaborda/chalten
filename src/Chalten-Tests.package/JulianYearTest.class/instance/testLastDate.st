test accessing
testLastDate
	self assert: 2008 asJulianYear lastDate = (JulianDecember thirtyfirst , 2008).
	self assert: 2007 asJulianYear lastDate = (JulianDecember thirtyfirst , 2007)