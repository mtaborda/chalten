test accessing months
testNumberOfMonths

	| leapYear nonleapYear |
	leapYear := 2012 asJulianYear.
	nonleapYear := 2014 asJulianYear.
	
	self assert: leapYear numberOfMonths = 12 monthsMeasure.
	self assert: nonleapYear numberOfMonths = 12 monthsMeasure