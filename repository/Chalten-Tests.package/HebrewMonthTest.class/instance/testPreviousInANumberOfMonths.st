test enumerating
testPreviousInANumberOfMonths

	self assert: (nisan previous: oneMonth) = adar.
	self assert: (nisan previous: elevenMonths) = iyyar.
	self assert: (nisan previous: twelveMonths) = nisan