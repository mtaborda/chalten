test enumerating
testPreviousInANumberOfMonths

	self assert: (january previous: oneMonth) = december.
	self assert: (january previous: twelveMonths) = january.
	self assert: (february previous: twoMonths) = december