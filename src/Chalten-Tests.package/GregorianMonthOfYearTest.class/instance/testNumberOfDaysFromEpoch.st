test accessing
testNumberOfDaysFromEpoch
	self assert: (MonthOfYear januaryOf: 1 asGregorianYear) numberOfDaysFromEpoch = 0 daysMeasure.
	self assert: (MonthOfYear januaryOf: 2 asGregorianYear) numberOfDaysFromEpoch = 365 daysMeasure.
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) numberOfDaysFromEpoch = 731580 daysMeasure