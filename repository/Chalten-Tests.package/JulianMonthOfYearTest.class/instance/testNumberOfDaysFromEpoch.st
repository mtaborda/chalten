test accessing
testNumberOfDaysFromEpoch
	self assert: (MonthOfYear januaryOf: 1 asJulianYear) numberOfDaysFromEpoch = -2 daysMeasure.
	self assert: (MonthOfYear januaryOf: 2 asJulianYear) numberOfDaysFromEpoch = 363 daysMeasure.
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) numberOfDaysFromEpoch = 731593 daysMeasure