test querying
testMonthsTo

	self assert: (Muharram, 2004 distanceTo: DhuAlHijja, 2003) = oneMonth negated.
	self assert: (Muharram, 2004 distanceTo: DhuAlHijja, 2004) = elevenMonths.
	self assert: (Muharram, 2004 distanceTo: Muharram, 2004) = zeroMonths.
	self assert: (Muharram, 2004 distanceTo: Muharram, 2005) = twelveMonths