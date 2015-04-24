test querying
testMonthsTo

	self assert: (JulianJanuary, 2004 distanceTo: JulianDecember, 2003) = oneMonth negated.
	self assert: (JulianJanuary, 2004 distanceTo: JulianDecember, 2004) = elevenMonths.
	self assert: (JulianJanuary, 2004 distanceTo: JulianJanuary, 2004) = zeroMonths.
	self assert: (JulianJanuary, 2004 distanceTo: JulianJanuary, 2005) = twelveMonths