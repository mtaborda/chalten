test accessing
testNumberOfDaysToEndOfMonth
	self assert: (Tishri first , 5767) numberOfDaysToEndOfMonth = 29 daysMeasure.
	self assert: (Tishri thirtieth , 5767) numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: (Iyyar twentyeighth , 5767) numberOfDaysToEndOfMonth = 1 dayMeasure