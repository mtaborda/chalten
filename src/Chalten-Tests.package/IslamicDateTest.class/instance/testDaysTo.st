test querying
testDaysTo
	self assert: (Muharram first , 1428 distanceTo: Muharram first , 1428) = self zeroDays.
	self assert: (Muharram first , 1428 distanceTo: Safar first , 1428) = self thirtyDays.
	self assert: (Muharram first , 1428 distanceTo: RabiI first , 1428) = (30 + 29) daysMeasure.
	self assert: (Muharram first , 1428 distanceTo: Muharram first , 1429) = 355 daysMeasure.
	self assert: (Muharram first , 1427 distanceTo: Muharram first , 1428) = 354 daysMeasure.
	self assert: (Muharram first , 1428 distanceTo: Muharram first , 1427) = -354 daysMeasure.
	self assert: (Muharram first , 1429 distanceTo: Muharram first , 1428) = -355 daysMeasure.
	self assert: (Muharram first , 1429 distanceTo: TheBeginningOfTime) = MinusInfinity daysMeasure.
	self assert: (Muharram first , 1429 distanceTo: TheEndOfTime) = Infinity daysMeasure