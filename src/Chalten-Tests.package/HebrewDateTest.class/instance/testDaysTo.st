test querying
testDaysTo
	self assert: (Nisan first , 5767 distanceTo: Nisan first , 5767) = self zeroDays.
	self assert: (Nisan first , 5767 distanceTo: Iyyar first , 5767) = self thirtyDays.
	self assert: (Nisan first , 5767 distanceTo: Sivan first , 5767) = (30 + 29) daysMeasure.
	self assert: (Nisan first , 5767 distanceTo: Nisan first , 5768) = 383 daysMeasure.
	self assert: (Nisan first , 5766 distanceTo: Nisan first , 5767) = 355 daysMeasure.
	self assert: (Nisan first , 5767 distanceTo: Nisan first , 5766) = -355 daysMeasure.
	self assert: (Nisan first , 5768 distanceTo: Nisan first , 5767) = -383 daysMeasure.
	self assert: (Nisan first , 5768 distanceTo: TheBeginningOfTime) = MinusInfinity daysMeasure.
	self assert: (Nisan first , 5768 distanceTo: TheEndOfTime) = Infinity daysMeasure