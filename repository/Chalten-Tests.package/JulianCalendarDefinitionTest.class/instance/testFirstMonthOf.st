test month of year accessing
testFirstMonthOf
	| year |
	year := 2007 asJulianYear.
	self assert: (JulianCalendar firstMonthOf: year) = (JulianJanuary , 2007)