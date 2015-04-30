test enumerating
testPreviousInWeeks
	self
		assert: (JulianJanuary first , 2007 previous: 1 weekMeasure) = (JulianJanuary first , 2007 previous: 7 daysMeasure).
	self
		assert: (JulianJanuary first , 2007 previous: 2 weeksMeasure) = (JulianJanuary first , 2007 previous: 14 daysMeasure)