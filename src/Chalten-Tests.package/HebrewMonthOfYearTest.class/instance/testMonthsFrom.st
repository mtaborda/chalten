test querying
testMonthsFrom
	self assert: (Nisan , 5768 distanceFrom: AdarII , 5768) = oneMonth.
	self assert: (Nisan , 5768 distanceFrom: Adar , 5767) = 14 monthsMeasure.
	self assert: (Nisan , 5768 distanceFrom: Nisan , 5768) = zeroMonths.
	self assert: (Nisan , 5768 distanceFrom: Nisan , 5767) = thirteenMonths