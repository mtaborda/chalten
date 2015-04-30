test month of year creation
testComma

	self assert: (iyyar, 2003) = (MonthOfYear yearNumber: 2003 monthNumber: 2 calendar: calendar)