test accessing
testNumberOfDaysToEndOfMonth
	self assert: (JulianJanuary first , 2007) numberOfDaysToEndOfMonth = 30 daysMeasure.
	self assert: (JulianJanuary thirtyfirst , 2007) numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: (JulianFebruary twentyseventh , 2007) numberOfDaysToEndOfMonth = 1 dayMeasure