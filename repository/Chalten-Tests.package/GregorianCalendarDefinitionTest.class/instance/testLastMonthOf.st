test month of year accessing
testLastMonthOf
	| year |
	year := 2007 asGregorianYear.
	self assert: (GregorianCalendar lastMonthOf: year) = (December , 2007)