test querying
testDaysTo
	self assert: (JulianDecember thirtyfirst distanceTo: JulianDecember thirtyfirst) = 0 daysMeasure.
	self assert: (JulianDecember thirtyfirst distanceTo: JulianJanuary first) = 1 dayMeasure.
	self assert: (JulianJanuary first distanceTo: JulianDecember thirtyfirst) = 364 daysMeasure.
	self assert: (JulianJanuary tenth distanceTo: JulianJanuary first) = 356 daysMeasure