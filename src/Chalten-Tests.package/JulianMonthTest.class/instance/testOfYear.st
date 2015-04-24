test month of year creation
testOfYear
	self assert: (february ofYear: 2003 asJulianYear) = (MonthOfYear yearNumber: 2003 monthNumber: 2 calendar: calendar)