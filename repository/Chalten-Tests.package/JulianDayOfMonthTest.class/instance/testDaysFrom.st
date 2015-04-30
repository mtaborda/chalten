test querying
testDaysFrom
	self assert: (JulianDecember thirtyfirst distanceFrom: JulianDecember thirtyfirst) = 0 daysMeasure.
	self assert: (JulianDecember thirtyfirst distanceFrom: JulianJanuary first) = 364 daysMeasure