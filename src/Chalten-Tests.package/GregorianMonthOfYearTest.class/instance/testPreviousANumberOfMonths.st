test querying
testPreviousANumberOfMonths

	self assert: (January, 2004 previous: oneMonth) = (December, 2003).
	self assert: (January, 2004 previous: elevenMonths) = (February, 2003).
	self assert: (January, 2004 previous: twelveMonths) = (January, 2003).
	self assert: (February, 2004 previous: thirteenMonths) = (January, 2003).
	self assert: (January, 2004 previous: thirteenMonths) = (December, 2002).
	self assert: (January, 2004 previous: zeroMonths) = (January, 2004).
	self assert: (January, 2004 previous: oneYear) = (January, 2003).
	self assert: (April, 2004 previous: oneYear) = (April, 2003).
	self assert: (July, 2004 previous: oneMonth) = (June, 2004).
	self assert: (July, 2004 previous: elevenMonths) = (August, 2003).
	self assert: (July, 2004 previous: twelveMonths) = (July, 2003)