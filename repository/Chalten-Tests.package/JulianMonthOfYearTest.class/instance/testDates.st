test accessing
testDates
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) dates first = (JulianJanuary first , 2004).
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) dates last = (JulianJanuary thirtyfirst , 2004)