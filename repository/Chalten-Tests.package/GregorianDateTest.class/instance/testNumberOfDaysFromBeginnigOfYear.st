test accessing
testNumberOfDaysFromBeginnigOfYear
	self assert: (January first , 2007) numberOfDaysFromBeginningOfYear = 0 daysMeasure.
	self assert: (January thirtyfirst , 2007) numberOfDaysFromBeginningOfYear = 30 daysMeasure.
	self assert: (December thirtyfirst , 2007) numberOfDaysFromBeginningOfYear = 364 daysMeasure