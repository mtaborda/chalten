test accessing
testNumberOfDaysToEndOfMonth
	self assert: Nisan twentyfirst numberOfDaysToEndOfMonth = 9 daysMeasure.
	self assert: Nisan thirtieth numberOfDaysToEndOfMonth = 0 daysMeasure.
	self assert: Iyyar twentyeighth numberOfDaysToEndOfMonth = 1 dayMeasure