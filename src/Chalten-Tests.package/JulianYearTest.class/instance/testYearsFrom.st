test querying
testYearsFrom
	self assert: (2007 asJulianYear distanceFrom: 2006 asJulianYear) = oneYear.
	self assert: (2007 asJulianYear distanceFrom: 2008 asJulianYear) = oneYear negated.
	self assert: (2007 asJulianYear distanceFrom: 2007 asJulianYear) = zeroYears.
	self assert: (1 asJulianYear distanceFrom: -1 asJulianYear) = oneYear.
	self assert: (-1 asJulianYear distanceFrom: 1 asJulianYear) = oneYear negated