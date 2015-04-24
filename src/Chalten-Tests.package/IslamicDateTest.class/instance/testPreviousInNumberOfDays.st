test enumerating
testPreviousInNumberOfDays
	self assert: (Muharram first , 1 previous: self tenDays) = (DhuAlHijja twentieth , 0).
	self assert: (Muharram first , 1428 previous: self twentyNineDays) = (DhuAlHijja first , 1427).
	self assert: (Muharram first , 1428 previous: self thirtyDays) = (DhuAlQada thirtieth , 1427).
	self assert: (Muharram first , 1428 previous: 355 daysMeasure) = (DhuAlHijja thirtieth , 1426).
	self assert: (Muharram first , 1427 previous: 355 daysMeasure) = (Muharram first , 1426).
	self assert: (Muharram first , 1428 previous: 0 daysMeasure) = (Muharram first , 1428)