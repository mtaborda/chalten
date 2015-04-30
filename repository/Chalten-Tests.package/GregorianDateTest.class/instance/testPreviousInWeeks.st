test enumerating
testPreviousInWeeks
	self assert: (January first , 2007 previous: 1 weekMeasure) = (January first , 2007 previous: 7 daysMeasure).
	self assert: (January first , 2007 previous: 2 weeksMeasure) = (January first , 2007 previous: 14 daysMeasure)