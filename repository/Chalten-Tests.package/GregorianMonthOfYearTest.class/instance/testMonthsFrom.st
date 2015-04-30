test querying
testMonthsFrom

	self assert: (January, 2004 distanceFrom: December, 2003) = oneMonth.
	self assert: (January, 2004 distanceFrom: December, 2004) = elevenMonths negated.
	self assert: (January, 2004 distanceFrom: January, 2004) = zeroMonths.
	self assert: (January, 2005 distanceFrom: January, 2004) = twelveMonths