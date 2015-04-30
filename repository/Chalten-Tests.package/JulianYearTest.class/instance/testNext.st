test querying
testNext
	self assert: 2007 asJulianYear next = 2008 asJulianYear.
	self assert: -1 asJulianYear next = 1 asJulianYear