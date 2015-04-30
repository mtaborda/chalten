test accessing
testNumberOfDaysFromBeginningOfMonth
	self assert: (Muharram first , 1) numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self assert: (Muharram thirtieth , 1428) numberOfDaysFromBeginningOfMonth = 29 daysMeasure.
	self assert: (Safar twentyninth , 1428) numberOfDaysFromBeginningOfMonth = 28 daysMeasure