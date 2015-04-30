test enumerating
testNextInNumberOfDays
	self assert: (Nisan first , 1 next: self tenDays) = (Nisan eleventh , 1).
	self assert: (Nisan first , 5767 next: self twentyNineDays) = (Nisan thirtieth , 5767).
	self assert: (Nisan first , 5767 next: self thirtyDays) = (Iyyar first , 5767).
	self assert: (Nisan first , 5767 next: 353 daysMeasure) = (AdarI thirtieth , 5768).
	self assert: (Nisan first , 5766 next: 355 daysMeasure) = (Nisan first , 5767).
	self assert: (Nisan first , 5767 next: 0 daysMeasure) = (Nisan first , 5767)