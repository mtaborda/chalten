test interval protocol
testToBy
	self assert: (2004 asIslamicYear to: 2010 asIslamicYear by: twoYears) from = 2004 asIslamicYear.
	self assert: (2004 asIslamicYear to: 2010 asIslamicYear by: twoYears) to = 2010 asIslamicYear.
	self assert: (2004 asIslamicYear to: 2010 asIslamicYear by: twoYears) by = twoYears