test accessing
testFirstDate
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) firstDate = (January first , 2004)