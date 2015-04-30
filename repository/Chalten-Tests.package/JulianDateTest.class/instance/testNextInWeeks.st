test enumerating
testNextInWeeks
	self assert: (JulianJanuary first , 2007 next: 1 weekMeasure) = (JulianJanuary first , 2007 next: 7 daysMeasure).
	self assert: (JulianJanuary first , 2007 next: 2 weeksMeasure) = (JulianJanuary first , 2007 next: 14 daysMeasure)