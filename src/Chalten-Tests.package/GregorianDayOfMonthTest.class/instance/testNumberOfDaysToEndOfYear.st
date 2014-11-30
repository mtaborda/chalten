test accessing
testNumberOfDaysToEndOfYear
	self assert: January first numberOfDaysToEndOfYear = 364 daysMeasure.
	self assert: December thirtyfirst numberOfDaysToEndOfYear = 0 daysMeasure