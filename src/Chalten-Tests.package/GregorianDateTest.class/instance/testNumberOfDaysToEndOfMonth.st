test accessing
testNumberOfDaysToEndOfMonth
	self assert: (January first , 2007) numberOfDaysToEndOfMonth = 30 daysMeasure.
	self assert: (January thirtyfirst , 2007) numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: (February twentyseventh , 2007) numberOfDaysToEndOfMonth = 1 dayMeasure