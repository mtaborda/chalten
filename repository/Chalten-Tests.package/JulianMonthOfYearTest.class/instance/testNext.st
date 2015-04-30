test querying
testNext
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) next = (JulianFebruary , 2004).
	self assert: (MonthOfYear decemberOf: 2004 asJulianYear) next = (JulianJanuary , 2005)