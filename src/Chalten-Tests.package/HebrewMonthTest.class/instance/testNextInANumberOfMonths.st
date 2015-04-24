test enumerating
testNextInANumberOfMonths

	self assert: (adar next: oneMonth) = nisan.
	self assert: (adar next: elevenMonths) = shevat.
	self assert: (adar next: twelveMonths) = adar