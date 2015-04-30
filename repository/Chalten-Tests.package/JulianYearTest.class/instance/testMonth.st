test month of year creation
testMonth

	| year |
	year := 2014 asJulianYear.
	self assert: JulianMay, 2014 = (year month: JulianMay)