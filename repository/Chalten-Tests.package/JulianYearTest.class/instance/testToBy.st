test interval protocol
testToBy
	| interval |
	interval := 2007 asJulianYear to: 2010 asJulianYear by: twoYears.
	self assert: interval from = 2007 asJulianYear.
	self assert: interval to = 2010 asJulianYear.
	self assert: interval by = twoYears