test month of year accessing
testFirstMonthOf
	| year |
	year := 2007 asGregorianYear.
	self assert: (GregorianCalendar firstMonthOf: year) = (January , 2007)