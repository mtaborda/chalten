test querying
testDaysTo
	self assert: (DhuAlHijja twentyninth distanceTo: DhuAlHijja twentyninth) = 0 daysMeasure.
	self assert: (DhuAlHijja twentyninth distanceTo: Muharram first) = 1 dayMeasure.
	self assert: (Muharram first distanceTo: DhuAlHijja twentyninth) = 353 daysMeasure.
	self assert: (Muharram tenth distanceTo: Muharram first) = 345 daysMeasure