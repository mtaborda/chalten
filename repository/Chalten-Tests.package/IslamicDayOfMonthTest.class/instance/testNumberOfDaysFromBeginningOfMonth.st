test accessing
testNumberOfDaysFromBeginningOfMonth
	self assert: Muharram first numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self assert: Muharram thirtieth numberOfDaysFromBeginningOfMonth = 29 daysMeasure.
	self assert: Safar twentyninth numberOfDaysFromBeginningOfMonth = 28 daysMeasure