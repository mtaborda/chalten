test accessing
testNumberOfDaysToEndOfYear
	self assert: (JulianJanuary first , 2007) numberOfDaysToEndOfYear = 364 daysMeasure.
	self assert: (JulianDecember thirtyfirst , 2007) numberOfDaysToEndOfYear = 0 daysMeasure