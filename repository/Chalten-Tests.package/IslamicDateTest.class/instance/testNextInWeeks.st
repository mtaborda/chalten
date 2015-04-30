test enumerating
testNextInWeeks
	self assert: (Muharram first , 1428 next: 1 weekMeasure) = (Muharram first , 1428 next: 7 daysMeasure).
	self assert: (Muharram first , 1428 next: 2 weeksMeasure) = (Muharram first , 1428 next: 14 daysMeasure)