test accessing
testNumberOfDaysFromBeginnigOfYear
	self assert: (Tishri first , 5767) numberOfDaysFromBeginningOfYear = 0 daysMeasure.
	self assert: (Tishri thirtieth , 5767) numberOfDaysFromBeginningOfYear = 29 daysMeasure.
	self assert: (Elul twentyninth , 5767) numberOfDaysFromBeginningOfYear = 354 daysMeasure.
	self assert: (Elul twentyninth , 5768) numberOfDaysFromBeginningOfYear = 382 daysMeasure