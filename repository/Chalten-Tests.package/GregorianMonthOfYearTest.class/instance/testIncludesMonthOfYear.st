test querying
testIncludesMonthOfYear

	self
		should: [(MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar)
			includes: (MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar)]
		raise: Exception