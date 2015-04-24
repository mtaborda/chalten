test accessing
testFirstDate
	self assert: (MonthOfYear nisanOf: 5767 asHebrewYear) firstDate = (Nisan first , 5767)