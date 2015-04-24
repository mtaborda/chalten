test querying
testNextLeapYear
	self assert: 2003 asIslamicYear nextLeapYear = 2004 asIslamicYear.
	self assert: 2004 asIslamicYear nextLeapYear = 2006 asIslamicYear.
	self assert: 1899 asIslamicYear nextLeapYear = 1900 asIslamicYear