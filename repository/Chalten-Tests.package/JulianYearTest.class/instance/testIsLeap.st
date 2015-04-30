test querying
testIsLeap
	self assert: 2004 asJulianYear isLeap.
	self assert: 2000 asJulianYear isLeap.
	self assert: 2400 asJulianYear isLeap.
	self assert: 1900 asJulianYear isLeap.
	self deny: 2003 asJulianYear isLeap.
	self deny: 2101 asJulianYear isLeap