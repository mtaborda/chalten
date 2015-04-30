test enumerating
testNextInWeeks
	self assert: (Nisan first , 5767 next: 1 weekMeasure) = (Nisan first , 5767 next: 7 daysMeasure).
	self assert: (Nisan first , 5767 next: 2 weeksMeasure) = (Nisan first , 5767 next: 14 daysMeasure)