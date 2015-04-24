test querying
testYearsTo
	self assert: (2007 asGregorianYear distanceTo: 2008 asGregorianYear) = oneYear.
	self assert: (2007 asGregorianYear distanceTo: 2006 asGregorianYear) = oneYear negated.
	self assert: (2007 asGregorianYear distanceTo: 2007 asGregorianYear) = zeroYears.
	self assert: (-1 asGregorianYear distanceTo: 0 asGregorianYear) = oneYear.
	self assert: (1 asGregorianYear distanceTo: 0 asGregorianYear) = oneYear negated.
	self assert: (1 asGregorianYear distanceTo: -9 asGregorianYear) = tenYears negated