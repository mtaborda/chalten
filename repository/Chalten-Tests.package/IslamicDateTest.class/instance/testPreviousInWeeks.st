test enumerating
testPreviousInWeeks
	self assert: (Muharram first , 1428 previous: 1 weekMeasure) = (Muharram first , 1428 previous: 7 daysMeasure).
	self assert: (Muharram first , 1428 previous: 2 weeksMeasure) = (Muharram first , 1428 previous: 14 daysMeasure)