test querying
testPreviousLeapYear
	self assert: 2005 asIslamicYear previousLeapYear = 2004 asIslamicYear.
	self assert: 2004 asIslamicYear previousLeapYear = 2001 asIslamicYear.
	self assert: 1901 asIslamicYear previousLeapYear = 1900 asIslamicYear