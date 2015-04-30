test querying
testNext
	self assert: 2004 asIslamicYear next = 2005 asIslamicYear.
	self assert: -1 asIslamicYear next = 0 asIslamicYear