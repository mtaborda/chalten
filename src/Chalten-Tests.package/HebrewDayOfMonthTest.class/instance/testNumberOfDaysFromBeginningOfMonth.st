test accessing
testNumberOfDaysFromBeginningOfMonth
	self assert: Nisan first numberOfDaysFromBeginningOfMonth = 0 daysMeasure.
	self assert: Nisan thirtieth numberOfDaysFromBeginningOfMonth = 29 daysMeasure.
	self assert: Iyyar twentyninth numberOfDaysFromBeginningOfMonth = 28 daysMeasure