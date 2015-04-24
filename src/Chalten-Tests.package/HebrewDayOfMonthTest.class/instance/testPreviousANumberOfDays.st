test enumerating
testPreviousANumberOfDays
	self assert: (AdarI thirtieth previous: 7 daysMeasure) = AdarI twentythird.
	self assert: (Iyyar twentyninth previous: 7 daysMeasure) = Iyyar twentysecond.
	self assert: (Nisan first previous: -1 dayMeasure) = Nisan second.
	self assert: (Nisan first previous: -32 daysMeasure) = Iyyar third