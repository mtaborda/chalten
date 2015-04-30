test querying
testNextANumberOfMonths
	self assert: (Nisan , 5768 next: oneMonth) = (Iyyar , 5768).
	self assert: (Nisan , 5768 next: elevenMonths) = (Adar , 5769).
	self assert: (Nisan , 5768 next: twelveMonths) = (Nisan , 5769).
	self assert: (Nisan , 5768 next: thirteenMonths) = (Iyyar , 5769).
	self assert: (Nisan , 5768 next: zeroMonths) = (Nisan , 5768).
	self assert: (Nisan , 5768 next: oneYear) = (Nisan , 5769).
	self assert: (Sivan , 5768 next: oneYear) = (Sivan , 5769).
	self assert: (Nisan , 5768 next: 0.5 monthsMeasure) = (Nisan , 5768).
	self assert: (Nisan , 5768 next: 1.5 monthsMeasure) = (Iyyar , 5768)