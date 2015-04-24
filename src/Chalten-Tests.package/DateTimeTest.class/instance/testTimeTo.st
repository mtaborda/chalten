test querying
testTimeTo

	self assert:
		(januaryFirstOf2004 distanceTo: januaryFirstOf2004On00Hours00Minutes01Seconds) = 1 secondMeasure.
	self assert:
		(januaryFirstOf2004 distanceTo: januarySecondOf2004On23Hours) = (1 dayMeasure + 23 hoursMeasure).
	self assert: (januaryFirstOf2004 distanceTo: januarySecondOf2004) = 1 dayMeasure.
	self assert: (januaryFirstOf2004 distanceTo: januaryThirdOf2004) = 2 daysMeasure.
	self assert:
		(januaryFirstOf2004On00Hours00Minutes01Seconds distanceTo: januaryFirstOf2004) = -1 secondMeasure.
	self assert: (januarySecondOf2004 distanceTo: januaryFirstOf2004) = -1 dayMeasure.
	self assert: (januaryThirdOf2004 distanceTo: januaryFirstOf2004) = -2 daysMeasure