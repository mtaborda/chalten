test querying
testIncludesYear
	self should: [ (MonthOfYear yearNumber: 2005 monthNumber: 1) includes: 2005 asIslamicYear ] raise: Exception