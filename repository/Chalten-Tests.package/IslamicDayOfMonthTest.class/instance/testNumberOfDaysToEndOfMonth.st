test accessing
testNumberOfDaysToEndOfMonth
	self assert: Muharram twentyfirst numberOfDaysToEndOfMonth = 9 daysMeasure.
	self assert: Muharram thirtieth numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: Safar twentyeighth numberOfDaysToEndOfMonth = 1 dayMeasure