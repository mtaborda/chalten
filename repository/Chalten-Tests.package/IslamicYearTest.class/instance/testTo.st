test interval protocol
testTo
	self assert: (2004 asIslamicYear to: 2010 asIslamicYear) from = 2004 asIslamicYear.
	self assert: (2004 asIslamicYear to: 2010 asIslamicYear) to = 2010 asIslamicYear.
	self assert: (2004 asIslamicYear to: 2010 asIslamicYear) by = oneYear