test querying
testPreviousANumberOfMonths

	self assert: ((Nisan, 5768) previous: oneMonth) = (AdarII, 5768).
	self assert: ((Nisan, 5768) previous: elevenMonths) = (Sivan, 5767).
	self assert: ((Nisan, 5768) previous: twelveMonths) = (Iyyar, 5767).
	self assert: ((Iyyar, 5768) previous: thirteenMonths) = (Iyyar, 5767).
	self assert: ((Nisan, 5768) previous: thirteenMonths) = (Nisan, 5767).
	self assert: ((Nisan, 5768) previous: zeroMonths) = (Nisan, 5768).
	self assert: ((Nisan, 5768) previous: oneYear) = (Nisan, 5767).
	self assert: ((Tishri, 5768) previous: oneYear) = (Tishri, 5767).
	self assert: ((Tishri, 5768) previous: oneMonth) = (Elul, 5767).
	self assert: ((Elul, 5768) previous: elevenMonths) = (Marheshvan, 5768).
	self assert: ((Elul, 5768) previous: twelveMonths) = (Tishri, 5768)