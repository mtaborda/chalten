test month of year creation
testMonth

	| year |
	year := 2014 asGregorianYear.
	self assert: May, 2014 = (year month: May)