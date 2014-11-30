test querying
testMonthsTo
	self assert: (Tishri , 5768 distanceTo: AdarII , 5768) = 6 monthsMeasure.
	self assert: (Nisan , 5768 distanceTo: AdarII , 5768) = oneMonth negated.
	self assert: (Nisan , 5768 distanceTo: Adar , 5767) = 14 monthsMeasure negated.
	self assert: (Nisan , 5768 distanceTo: Nisan , 5768) = zeroMonths.
	self assert: (Nisan , 5768 distanceTo: Nisan , 5769) = twelveMonths