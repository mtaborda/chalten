test accessing
testNumberOfDaysFromEpoch
	self assert: (MonthOfYear nisanOf: 1 asHebrewYear) numberOfDaysFromEpoch = -1373250 daysMeasure.
	self assert: (MonthOfYear nisanOf: 2 asHebrewYear) numberOfDaysFromEpoch = -1372895 daysMeasure.
	self assert: (MonthOfYear nisanOf: 5767 asHebrewYear) numberOfDaysFromEpoch = 732754 daysMeasure