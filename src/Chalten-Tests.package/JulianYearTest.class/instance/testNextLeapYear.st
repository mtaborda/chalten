test querying
testNextLeapYear
	self assert: 2003 asJulianYear nextLeapYear = 2004 asJulianYear.
	self assert: 2004 asJulianYear nextLeapYear = 2008 asJulianYear.
	self assert: 1899 asJulianYear nextLeapYear = 1900 asJulianYear