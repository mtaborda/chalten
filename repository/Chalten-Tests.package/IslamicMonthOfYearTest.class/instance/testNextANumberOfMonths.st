test querying
testNextANumberOfMonths
	self assert: (Muharram , 2004 next: oneMonth) = (Safar , 2004).
	self assert: (Muharram , 2004 next: elevenMonths) = (DhuAlHijja , 2004).
	self assert: (Muharram , 2004 next: twelveMonths) = (Muharram , 2005).
	self assert: (Muharram , 2004 next: thirteenMonths) = (Safar , 2005).
	self assert: (Muharram , 2004 next: zeroMonths) = (Muharram , 2004).
	self assert: (Muharram , 2004 next: oneYear) = (Muharram , 2005).
	self assert: (RabiII , 2004 next: oneYear) = (RabiII , 2005).
	self assert: (Muharram , 2004 next: 0.5 monthsMeasure) = (Muharram , 2004).
	self assert: (Muharram , 2004 next: 1.5 monthsMeasure) = (Safar , 2004)