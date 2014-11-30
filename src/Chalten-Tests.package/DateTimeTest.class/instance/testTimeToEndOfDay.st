test querying
testTimeToEndOfDay

	self assert: januaryFirstOf2004On03Hours timeToEndOfDay = 21 hoursMeasure.
	self assert: januaryFirstOf2004 timeToEndOfDay = 24 hoursMeasure.
	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds timeToEndOfDay = 1 secondMeasure