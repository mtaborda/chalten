test accessing
testNumberOfDaysFromBeginningOfMonth
	self assert: (JulianJanuary first , 2007) numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self assert: (JulianJanuary thirtyfirst , 2007) numberOfDaysFromBeginningOfMonth = 30 daysMeasure.
	self assert: (JulianFebruary twentyeighth , 2007) numberOfDaysFromBeginningOfMonth = 27 daysMeasure.
	self assert: (JulianFebruary twentyninth , 2008) numberOfDaysFromBeginningOfMonth = 28 daysMeasure