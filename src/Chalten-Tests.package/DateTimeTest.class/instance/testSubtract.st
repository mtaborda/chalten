test enumerating
testSubtract

	| oneHour |
	oneHour := 1 hourMeasure.

	self assert: (januaryFirstOf2004On23Hours59Minutes59Seconds previous: 1 secondMeasure) = januaryFirstOf2004On23Hours59Minutes58Seconds.
	self assert: (januaryFirstOf2004On23Hours59Minutes59Seconds previous: 24 hoursMeasure) = december31Of2003On23Hours59Minutes59Seconds.
	self assert: (januaryFirstOf2004 previous: 24 hoursMeasure) = december31Of2003.
	self assert: (januaryFirstOf2004 previous: -1 secondMeasure) = januaryFirstOf2004On00Hours00Minutes01Seconds.
	self assert: (januaryFirstOf2004 previous: -1 dayMeasure) = januarySecondOf2004.
	self assert: (januaryFirstOf2004On23Hours59Minutes59Seconds previous: 24 hoursMeasure negated)
		= januarySecondOf2004On23Hours59Minutes59Seconds.
	
	self assert: (hourInBsAs previous: oneHour) = (hourInGreenwich previous: oneHour).
	self assert: (hourInGreenwich previous: 24 hoursMeasure) = (hourInBsAs previous: 24 hoursMeasure)