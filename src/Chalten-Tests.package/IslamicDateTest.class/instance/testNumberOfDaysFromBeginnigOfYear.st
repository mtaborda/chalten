test accessing
testNumberOfDaysFromBeginnigOfYear
	self assert: (Muharram first , 1428) numberOfDaysFromBeginningOfYear = 0 daysMeasure.
	self assert: (Muharram thirtieth , 1428) numberOfDaysFromBeginningOfYear = 29 daysMeasure.
	self assert: (DhuAlHijja twentyninth , 1427) numberOfDaysFromBeginningOfYear = 353 daysMeasure.
	self assert: (DhuAlHijja thirtieth , 1428) numberOfDaysFromBeginningOfYear = 354 daysMeasure