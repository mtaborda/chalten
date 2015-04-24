test accessing days
testNumberOfDaysFromEpoch

	self assert: TheBeginningOfTime numberOfDaysFromEpoch = MinusInfinity daysMeasure.
	self assert: TheEndOfTime numberOfDaysFromEpoch = Infinity daysMeasure