test querying
testDaysFrom
	self assert: (DhuAlHijja twentyninth distanceFrom: DhuAlHijja twentyninth) = 0 daysMeasure.
	self assert: (DhuAlHijja twentyninth distanceFrom: Muharram first) = 353 daysMeasure