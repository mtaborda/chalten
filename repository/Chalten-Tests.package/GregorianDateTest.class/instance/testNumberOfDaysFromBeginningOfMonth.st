test accessing
testNumberOfDaysFromBeginningOfMonth
	self assert: (January first , 2007) numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self assert: (January thirtyfirst , 2007) numberOfDaysFromBeginningOfMonth = 30 daysMeasure.
	self assert: (February twentyeighth , 2007) numberOfDaysFromBeginningOfMonth = 27 daysMeasure.
	self assert: (February twentyninth , 2008) numberOfDaysFromBeginningOfMonth = 28 daysMeasure