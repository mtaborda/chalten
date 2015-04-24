test accessing
testNumberOfDaysFromEpoch
	self assert: (MonthOfYear muharramOf: 1 asIslamicYear) numberOfDaysFromEpoch = 227014 daysMeasure.
	self assert: (MonthOfYear muharramOf: 2 asIslamicYear) numberOfDaysFromEpoch = 227368 daysMeasure.
	self assert: (MonthOfYear muharramOf: 1428 asIslamicYear) numberOfDaysFromEpoch = 732695 daysMeasure