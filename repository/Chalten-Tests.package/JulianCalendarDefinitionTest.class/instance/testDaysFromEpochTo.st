test days accessing
testDaysFromEpochTo
	| januaryFirstOf1 januarySecondOf1 januaryFifteenthOf1 januaryFirstOf2 januaryFirstOf5 |
	januaryFirstOf1 := JulianJanuary first , 1.
	januarySecondOf1 := JulianJanuary second , 1.
	januaryFifteenthOf1 := JulianJanuary fifteenth , 1.
	januaryFirstOf2 := JulianJanuary first , 2.
	januaryFirstOf5 := JulianJanuary first , 5.
	self assert: (JulianCalendar numberOfDaysFromEpochTo: januaryFirstOf1) = 2 daysMeasure negated.
	self assert: (JulianCalendar numberOfDaysFromEpochTo: januarySecondOf1) = 1 dayMeasure negated.
	self assert: (JulianCalendar numberOfDaysFromEpochTo: januaryFifteenthOf1) = 12 daysMeasure.
	self assert: (JulianCalendar numberOfDaysFromEpochTo: januaryFirstOf2) = 363 daysMeasure.
	self assert: (JulianCalendar numberOfDaysFromEpochTo: januaryFirstOf5) = 1459 daysMeasure