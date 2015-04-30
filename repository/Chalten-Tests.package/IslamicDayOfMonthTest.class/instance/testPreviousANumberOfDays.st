test enumerating
testPreviousANumberOfDays
	self assert: (DhuAlQada thirtieth previous: 7 daysMeasure) = DhuAlQada twentythird.
	self assert: (Safar twentyninth previous: 7 daysMeasure) = Safar twentysecond.
	self assert: (Muharram first previous: -1 dayMeasure) = Muharram second.
	self assert: (Muharram first previous: -32 daysMeasure) = Safar third