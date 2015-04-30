test querying
testMonthsFrom

	self assert: (JulianJanuary, 2004 distanceFrom: JulianDecember, 2003) = oneMonth.
	self assert: (JulianJanuary, 2004 distanceFrom: JulianDecember, 2004) = elevenMonths negated.
	self assert: (JulianJanuary, 2004 distanceFrom: JulianJanuary, 2004) = zeroMonths.
	self assert: (JulianJanuary, 2005 distanceFrom: JulianJanuary, 2004) = twelveMonths