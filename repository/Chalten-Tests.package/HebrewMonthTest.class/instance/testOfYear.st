test month of year creation
testOfYear
	self assert: (iyyar ofYear: 2003 asHebrewYear) = (MonthOfYear yearNumber: 2003 monthNumber: 2 calendar: calendar)