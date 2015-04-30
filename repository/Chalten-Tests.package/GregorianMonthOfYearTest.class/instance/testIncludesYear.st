test querying
testIncludesYear
	self
		should: [ (MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar) includes: 2005 asGregorianYear ]
		raise: Exception