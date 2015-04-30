test accessing
testNumberOfDaysFromBeginningOfMonth
	self assert: (Nisan first , 1) numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self assert: (Nisan thirtieth , 5767) numberOfDaysFromBeginningOfMonth = 29 daysMeasure.
	self assert: (Iyyar twentyninth , 5767) numberOfDaysFromBeginningOfMonth = 28 daysMeasure