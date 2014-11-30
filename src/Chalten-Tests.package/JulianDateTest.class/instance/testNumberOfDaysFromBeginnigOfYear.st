test accessing
testNumberOfDaysFromBeginnigOfYear
	self assert: (JulianJanuary first , 2007) numberOfDaysFromBeginningOfYear = 0 daysMeasure.
	self assert: (JulianJanuary thirtyfirst , 2007) numberOfDaysFromBeginningOfYear = 30 daysMeasure.
	self assert: (JulianDecember thirtyfirst , 2007) numberOfDaysFromBeginningOfYear = 364 daysMeasure.
	self assert: (JulianJanuary first , 2008) numberOfDaysFromBeginningOfYear = 0 daysMeasure.
	self assert: (JulianJanuary thirtyfirst , 2008) numberOfDaysFromBeginningOfYear = 30 daysMeasure.
	self assert: (JulianDecember thirtyfirst , 2008) numberOfDaysFromBeginningOfYear = 365 daysMeasure