test querying
testPreviousANumberOfMonths

	self assert: ((Muharram, 2004) previous: oneMonth) = (DhuAlHijja, 2003).
	self assert: ((Muharram, 2004) previous: elevenMonths) = (Safar, 2003).
	self assert: ((Muharram, 2004) previous: twelveMonths) = (Muharram, 2003).
	self assert: ((Safar, 2004) previous: thirteenMonths) = (Muharram, 2003).
	self assert: ((Muharram, 2004) previous: thirteenMonths) = (DhuAlHijja, 2002).
	self assert: ((Muharram, 2004) previous: zeroMonths) = (Muharram, 2004).
	self assert: ((Muharram, 2004) previous: oneYear) = (Muharram, 2003).
	self assert: ((Rajab, 2004) previous: oneYear) = (Rajab, 2003).
	self assert: ((RabiII, 2004) previous: oneMonth) = (RabiI, 2004).
	self assert: ((Rajab, 2004) previous: elevenMonths) = (Shaban, 2003).
	self assert: ((Rajab, 2004) previous: twelveMonths) = (Rajab, 2003)