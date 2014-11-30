test enumerating
testAdd

	| oneHour |
	oneHour := 1 hourMeasure.
	
	self assert: (januaryFirstOf2004On23Hours59Minutes59Seconds next: 1 secondMeasure) = januarySecondOf2004.
	self assert: (januaryFirstOf2004On23Hours59Minutes59Seconds next: 2 secondsMeasure) = januarySecondOf2004On00Hours00Minutes01Seconds.
	self assert: (januaryFirstOf2004 next: 24 hoursMeasure) = januarySecondOf2004.
	self assert: (januaryFirstOf2004 next: -1 secondMeasure) = december31Of2003On23Hours59Minutes59Seconds.
	self assert: (januaryFirstOf2004On23Hours59Minutes59Seconds next: 24 hoursMeasure negated) = december31Of2003On23Hours59Minutes59Seconds.
	
	self assert: (hourInBsAs next: oneHour) = (hourInGreenwich next: oneHour).
	self assert: (hourInGreenwich next: 24 hoursMeasure) = (hourInBsAs next: 24 hoursMeasure)