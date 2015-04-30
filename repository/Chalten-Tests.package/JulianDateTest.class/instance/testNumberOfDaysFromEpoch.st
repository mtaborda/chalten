test accessing
testNumberOfDaysFromEpoch
	self assert: (JulianJanuary first , 1) numberOfDaysFromEpoch = -2 daysMeasure.
	self assert: (JulianDecember thirtyfirst , 1901) numberOfDaysFromEpoch = 694337 daysMeasure.
	self assert: (JulianJanuary first , 2007) numberOfDaysFromEpoch = 732689 daysMeasure