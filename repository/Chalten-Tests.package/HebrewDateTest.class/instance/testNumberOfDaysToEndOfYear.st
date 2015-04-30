test accessing
testNumberOfDaysToEndOfYear
	self assert: (Tishri first , 5767) numberOfDaysToEndOfYear = 354 daysMeasure.
	self assert: (Elul twentyninth , 5767) numberOfDaysToEndOfYear = 0 daysMeasure