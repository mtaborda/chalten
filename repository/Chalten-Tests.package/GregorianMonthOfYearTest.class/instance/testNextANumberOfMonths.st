test querying
testNextANumberOfMonths
	self assert: (January , 2004 next: oneMonth) = (February , 2004).
	self assert: (January , 2004 next: elevenMonths) = (December , 2004).
	self assert: (January , 2004 next: twelveMonths) = (January , 2005).
	self assert: (January , 2004 next: thirteenMonths) = (February , 2005).
	self assert: (January , 2004 next: zeroMonths) = (January , 2004).
	self assert: (January , 2004 next: oneYear) = (January , 2005).
	self assert: (April , 2004 next: oneYear) = (April , 2005).
	self assert: (January , 2004 next: 0.5 monthsMeasure) = (January , 2004).
	self assert: (January , 2004 next: 1.5 monthsMeasure) = (February , 2004)