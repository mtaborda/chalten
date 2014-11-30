test accessing
testFirstDate
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) firstDate = (JulianJanuary first , 2004)