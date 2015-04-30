test querying
testTimeFrom

	self assert:
		(januaryFirstOf2004On00Hours00Minutes01Seconds distanceFrom: januaryFirstOf2004) = 1 secondMeasure.
	self assert:
		(januarySecondOf2004On23Hours distanceFrom: januaryFirstOf2004) = (1 dayMeasure + 23 hoursMeasure).
	self assert: (januarySecondOf2004 distanceFrom: januaryFirstOf2004) = 1 dayMeasure.
	self assert: (januaryThirdOf2004 distanceFrom: januaryFirstOf2004) = 2 daysMeasure.
	self assert:
		(januaryFirstOf2004 distanceFrom: januaryFirstOf2004On00Hours00Minutes01Seconds) = -1 secondMeasure.
	self assert: (januaryFirstOf2004 distanceFrom: januarySecondOf2004) = -1 dayMeasure.
	self assert: (januaryFirstOf2004 distanceFrom: januaryThirdOf2004) = -2 daysMeasure