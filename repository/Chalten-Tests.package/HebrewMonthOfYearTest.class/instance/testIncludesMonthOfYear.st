test querying
testIncludesMonthOfYear

	self
		should: [(MonthOfYear yearNumber: 5767 monthNumber: 1) includes: Nisan, 5767]
		raise: Exception