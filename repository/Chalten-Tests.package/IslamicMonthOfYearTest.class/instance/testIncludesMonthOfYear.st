test querying
testIncludesMonthOfYear

	self
		should: [(MonthOfYear yearNumber: 2005 monthNumber: 1) includes: (MonthOfYear yearNumber: 2005 monthNumber: 1)]
		raise: Exception