test querying
testPreviousANumberOfMonths

	self assert: (JulianJanuary, 2004 previous: oneMonth) = (JulianDecember, 2003).
	self assert: (JulianJanuary, 2004 previous: elevenMonths) = (JulianFebruary, 2003).
	self assert: (JulianJanuary, 2004 previous: twelveMonths) = (JulianJanuary, 2003).
	self assert: (JulianFebruary, 2004 previous: thirteenMonths) = (JulianJanuary, 2003).
	self assert: (JulianJanuary, 2004 previous: thirteenMonths) = (JulianDecember, 2002).
	self assert: (JulianJanuary, 2004 previous: zeroMonths) = (JulianJanuary, 2004).
	self assert: (JulianJanuary, 2004 previous: oneYear) = (JulianJanuary, 2003).
	self assert: (JulianApril, 2004 previous: oneYear) = (JulianApril, 2003).
	self assert: (JulianJuly, 2004 previous: oneMonth) = (JulianJune, 2004).
	self assert: (JulianJuly, 2004 previous: elevenMonths) = (JulianAugust, 2003).
	self assert: (JulianJuly, 2004 previous: twelveMonths) = (JulianJuly, 2003)