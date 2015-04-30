test enumerating
testNextInANumberOfMonths

	self assert: (december next: oneMonth) = january.
	self assert: (december next: twelveMonths) = december