test accessing
testNumberOfDaysToEndOfYear
	self assert: (Muharram first , 1428) numberOfDaysToEndOfYear = 354 daysMeasure.
	self assert: (DhuAlHijja thirtieth , 1428) numberOfDaysToEndOfYear = 0 daysMeasure