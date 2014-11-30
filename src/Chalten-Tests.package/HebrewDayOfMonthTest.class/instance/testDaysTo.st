test querying
testDaysTo
	self assert: (Adar twentyninth distanceTo: Adar twentyninth) = 0 daysMeasure.
	self assert: (Adar twentyninth distanceTo: Nisan first) = 1 dayMeasure.
	self assert: (Nisan first distanceTo: Adar twentyninth) = 354 daysMeasure.
	self assert: (Nisan tenth distanceTo: Nisan first) = 346 daysMeasure