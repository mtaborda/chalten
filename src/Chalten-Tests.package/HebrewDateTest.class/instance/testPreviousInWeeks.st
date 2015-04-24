test enumerating
testPreviousInWeeks
	self assert: (Nisan first , 5767 previous: 1 weekMeasure) = (Nisan first , 5767 previous: 7 daysMeasure).
	self assert: (Nisan first , 5767 previous: 2 weeksMeasure) = (Nisan first , 5767 previous: 14 daysMeasure)