test querying
testDaysFrom
	self assert: (Adar twentyninth distanceFrom: Adar twentyninth) = 0 daysMeasure.
	self assert: (Adar twentyninth distanceFrom: Nisan first) = 354 daysMeasure