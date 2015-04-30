test accessing months
testNumberOfMonths

	| leapYear nonleapYear |
	leapYear := 2016 asGregorianYear.
	nonleapYear := 2015 asGregorianYear.
	
	self assert: leapYear numberOfMonths = 12 monthsMeasure.
	self assert: nonleapYear numberOfMonths = 12 monthsMeasure