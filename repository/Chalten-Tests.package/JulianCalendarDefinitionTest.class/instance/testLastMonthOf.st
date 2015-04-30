test month of year accessing
testLastMonthOf
	| year |
	year := 2007 asJulianYear.
	self assert: (JulianCalendar lastMonthOf: year) = (JulianDecember , 2007)