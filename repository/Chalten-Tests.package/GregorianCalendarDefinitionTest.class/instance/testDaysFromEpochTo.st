test days accessing
testDaysFromEpochTo
	| januaryFirstOf0 januaryFirstOf1 januarySecondOf1 januaryFifteenthOf1 januaryFirstOf2 januaryFirstOf5 |
	januaryFirstOf0 := January first , 0.
	januaryFirstOf1 := January first , 1.
	januarySecondOf1 := January second , 1.
	januaryFifteenthOf1 := January fifteenth , 1.
	januaryFirstOf2 := January first , 2.
	januaryFirstOf5 := January first , 5.
	self assert: (GregorianCalendar numberOfDaysFromEpochTo: januaryFirstOf0) = 366 daysMeasure negated.
	self assert: (GregorianCalendar numberOfDaysFromEpochTo: januaryFirstOf1) = 0 daysMeasure.
	self assert: (GregorianCalendar numberOfDaysFromEpochTo: januarySecondOf1) = 1 dayMeasure.
	self assert: (GregorianCalendar numberOfDaysFromEpochTo: januaryFifteenthOf1) = 14 daysMeasure.
	self assert: (GregorianCalendar numberOfDaysFromEpochTo: januaryFirstOf2) = 365 daysMeasure.
	self assert: (GregorianCalendar numberOfDaysFromEpochTo: januaryFirstOf5) = 1461 daysMeasure