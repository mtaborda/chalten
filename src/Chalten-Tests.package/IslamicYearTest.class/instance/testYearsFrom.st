test querying
testYearsFrom
	self assert: (2004 asIslamicYear distanceFrom: 2003 asIslamicYear) = oneYear.
	self assert: (2004 asIslamicYear distanceFrom: 2005 asIslamicYear) = oneYear negated.
	self assert: (2005 asIslamicYear distanceFrom: 2005 asIslamicYear) = zeroYears.
	self assert: (-1 asIslamicYear distanceFrom: 0 asIslamicYear) = oneYear negated.
	self assert: (1 asIslamicYear distanceFrom: 0 asIslamicYear) = oneYear