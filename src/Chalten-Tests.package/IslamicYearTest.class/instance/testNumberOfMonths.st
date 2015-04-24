test accessing months
testNumberOfMonths

	| leapYear nonleapYear |
	leapYear := 1535 asIslamicYear.
	nonleapYear := 1536 asIslamicYear.
	
	self assert: leapYear numberOfMonths = 12 monthsMeasure.
	self assert: nonleapYear numberOfMonths = 12 monthsMeasure