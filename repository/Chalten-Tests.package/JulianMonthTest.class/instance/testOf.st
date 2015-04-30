test month of year creation
testOf

	self assert: (february of: 2003) = (MonthOfYear yearNumber: 2003 monthNumber: 2 calendar: calendar)