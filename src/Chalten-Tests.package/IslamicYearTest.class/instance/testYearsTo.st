test querying
testYearsTo
	self assert: (2004 asIslamicYear distanceTo: 2005 asIslamicYear) = oneYear.
	self assert: (2005 asIslamicYear distanceTo: 2004 asIslamicYear) = oneYear negated.
	self assert: (2005 asIslamicYear distanceTo: 2005 asIslamicYear) = zeroYears.
	self assert: (-1 asIslamicYear distanceTo: 0 asIslamicYear) = oneYear.
	self assert: (1 asIslamicYear distanceTo: 0 asIslamicYear) = oneYear negated.
	self assert: (1 asIslamicYear distanceTo: -9 asIslamicYear) = tenYears negated