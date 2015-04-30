test querying
testDaysFrom
	self assert: (Nisan first , 5767 distanceFrom: Nisan first , 5767) = self zeroDays.
	self assert: (Iyyar first , 5767 distanceFrom: Nisan first , 5767) = self thirtyDays.
	self assert: (Sivan first , 5767 distanceFrom: Nisan first , 5767) = (30 + 29) daysMeasure.
	self assert: (Nisan first , 5768 distanceFrom: Nisan first , 5767) = 383 daysMeasure.
	self assert: (Nisan first , 5767 distanceFrom: Nisan first , 5766) = 355 daysMeasure.
	self assert: (Nisan first , 5766 distanceFrom: Nisan first , 5767) = -355 daysMeasure.
	self assert: (Nisan first , 5767 distanceFrom: Nisan first , 5768) = -383 daysMeasure.
	self assert: (TheBeginningOfTime distanceFrom: Nisan first , 5768) = MinusInfinity daysMeasure.
	self assert: (TheEndOfTime distanceFrom: Nisan first , 5768) = Infinity daysMeasure