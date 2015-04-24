test enumerating
testNextInWeeks
	self assert: (January first , 2007 next: 1 weekMeasure) = (January first , 2007 next: 7 daysMeasure).
	self assert: (January first , 2007 next: 2 weeksMeasure) = (January first , 2007 next: 14 daysMeasure)