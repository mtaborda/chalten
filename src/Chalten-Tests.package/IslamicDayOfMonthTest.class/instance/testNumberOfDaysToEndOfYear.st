test accessing
testNumberOfDaysToEndOfYear
	self assert: Muharram first numberOfDaysToEndOfYear = 354 daysMeasure.
	self assert: DhuAlHijja thirtieth numberOfDaysToEndOfYear = 0 daysMeasure