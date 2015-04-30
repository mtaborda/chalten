test accessing
testDates
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) dates first = (January first , 2004).
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) dates last = (January thirtyfirst , 2004)