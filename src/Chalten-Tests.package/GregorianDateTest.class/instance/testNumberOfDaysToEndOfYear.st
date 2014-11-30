test accessing
testNumberOfDaysToEndOfYear
	self assert: (January first , 2007) numberOfDaysToEndOfYear = 364 daysMeasure.
	self assert: (December thirtyfirst , 2007) numberOfDaysToEndOfYear = 0 daysMeasure