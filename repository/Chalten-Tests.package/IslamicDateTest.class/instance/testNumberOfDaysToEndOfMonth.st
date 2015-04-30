test accessing
testNumberOfDaysToEndOfMonth
	self assert: (Muharram first , 1428) numberOfDaysToEndOfMonth = 29 daysMeasure.
	self assert: (Muharram thirtieth , 1428) numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: Safar twentyeighth numberOfDaysToEndOfMonth = 1 dayMeasure