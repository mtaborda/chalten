test querying
testDaysFrom
	self assert: (Muharram first , 1428 distanceFrom: Muharram first , 1428) = self zeroDays.
	self assert: (Safar first , 1428 distanceFrom: Muharram first , 1428) = self thirtyDays.
	self assert: (RabiI first , 1428 distanceFrom: Muharram first , 1428) = (30 + 29) daysMeasure.
	self assert: (Muharram first , 1429 distanceFrom: Muharram first , 1428) = 355 daysMeasure.
	self assert: (Muharram first , 1428 distanceFrom: Muharram first , 1427) = 354 daysMeasure.
	self assert: (Muharram first , 1427 distanceFrom: Muharram first , 1428) = -354 daysMeasure.
	self assert: (Muharram first , 1428 distanceFrom: Muharram first , 1429) = -355 daysMeasure.
	self assert: (TheBeginningOfTime distanceFrom: Muharram first , 1429) = MinusInfinity daysMeasure.
	self assert: (TheEndOfTime distanceFrom: Muharram first , 1429) = Infinity daysMeasure