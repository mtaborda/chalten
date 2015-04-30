test comparing
testHash
	self assert: 2007 asJulianYear hash = 2007 asJulianYear hash.
	self deny: 2007 asJulianYear hash = 2008 asJulianYear hash