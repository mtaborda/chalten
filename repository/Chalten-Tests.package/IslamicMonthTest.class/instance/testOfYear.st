test month of year creation
testOfYear
	self assert: (safar ofYear: 2003 asIslamicYear) = (MonthOfYear yearNumber: 2003 monthNumber: 2 calendar: calendar)