test querying
testMonthsTo

	self assert: (January, 2004 distanceTo: December, 2003) = oneMonth negated.
	self assert: (January, 2004 distanceTo: December, 2004) = elevenMonths.
	self assert: (January, 2004 distanceTo: January, 2004) = zeroMonths.
	self assert: (January, 2004 distanceTo: January, 2005) = twelveMonths