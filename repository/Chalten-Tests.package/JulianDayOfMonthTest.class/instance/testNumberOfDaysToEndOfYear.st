test accessing
testNumberOfDaysToEndOfYear
	self assert: JulianJanuary first numberOfDaysToEndOfYear = 364 daysMeasure.
	self assert: JulianDecember thirtyfirst numberOfDaysToEndOfYear = 0 daysMeasure