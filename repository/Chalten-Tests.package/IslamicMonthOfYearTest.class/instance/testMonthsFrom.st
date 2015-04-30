test querying
testMonthsFrom

	self assert: (Muharram, 2004 distanceFrom: DhuAlHijja, 2003) = oneMonth.
	self assert: (Muharram, 2004 distanceFrom: DhuAlHijja, 2004) = elevenMonths negated.
	self assert: (Muharram, 2004 distanceFrom: Muharram, 2004) = zeroMonths.
	self assert: (Muharram, 2004 distanceFrom: Muharram, 2003) = twelveMonths