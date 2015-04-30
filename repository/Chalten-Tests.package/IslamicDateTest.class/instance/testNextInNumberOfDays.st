test enumerating
testNextInNumberOfDays
	self assert: (Muharram first , 1 next: self tenDays) = (Muharram eleventh , 1).
	self assert: (Muharram first , 1428 next: self twentyNineDays) = (Muharram thirtieth , 1428).
	self assert: (Muharram first , 1428 next: self thirtyDays) = (Safar first , 1428).
	self assert: (Muharram first , 1428 next: 355 daysMeasure) = (Muharram first , 1429).
	self assert: (Muharram first , 1427 next: 354 daysMeasure) = (Muharram first , 1428).
	self assert: (Muharram first , 1428 next: 0 daysMeasure) = (Muharram first , 1428)