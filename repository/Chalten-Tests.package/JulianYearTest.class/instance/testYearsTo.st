test querying
testYearsTo
	self assert: (2007 asJulianYear distanceTo: 2008 asJulianYear) = oneYear.
	self assert: (2007 asJulianYear distanceTo: 2006 asJulianYear) = oneYear negated.
	self assert: (2007 asJulianYear distanceTo: 2007 asJulianYear) = zeroYears.
	self assert: (-1 asJulianYear distanceTo: 1 asJulianYear) = oneYear.
	self assert: (1 asJulianYear distanceTo: -1 asJulianYear) = oneYear negated.
	self assert: (1 asJulianYear distanceTo: -10 asJulianYear) = tenYears negated