test interval protocol
testTo
	| interval |
	interval := 2007 asJulianYear to: 2010 asJulianYear.
	self assert: interval from = 2007 asJulianYear.
	self assert: interval to = 2010 asJulianYear.
	self assert: interval by = oneYear