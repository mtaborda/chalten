test querying
testYearsFrom
	self assert: (2007 asGregorianYear distanceFrom: 2006 asGregorianYear) = oneYear.
	self assert: (2007 asGregorianYear distanceFrom: 2008 asGregorianYear) = oneYear negated.
	self assert: (2007 asGregorianYear distanceFrom: 2007 asGregorianYear) = zeroYears.
	self assert: (-1 asGregorianYear distanceFrom: 0 asGregorianYear) = oneYear negated.
	self assert: (1 asGregorianYear distanceFrom: 0 asGregorianYear) = oneYear