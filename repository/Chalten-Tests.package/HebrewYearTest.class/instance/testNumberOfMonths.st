test accessing months
testNumberOfMonths

	| leapYear nonleapYear |
	leapYear := 5776 asHebrewYear.
	nonleapYear := 5775 asHebrewYear.
	
	self assert: leapYear numberOfMonths = 13 monthsMeasure.
	self assert: nonleapYear numberOfMonths = 12 monthsMeasure