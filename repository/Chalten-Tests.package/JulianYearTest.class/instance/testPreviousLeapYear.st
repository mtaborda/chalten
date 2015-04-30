test querying
testPreviousLeapYear
	self assert: 2008 asJulianYear previousLeapYear = 2004 asJulianYear.
	self assert: 2003 asJulianYear previousLeapYear = 2000 asJulianYear.
	self assert: 1901 asJulianYear previousLeapYear = 1900 asJulianYear