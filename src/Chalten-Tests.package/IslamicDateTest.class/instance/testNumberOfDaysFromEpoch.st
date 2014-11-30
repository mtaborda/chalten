test accessing
testNumberOfDaysFromEpoch
	self assert: (Muharram first , 1) numberOfDaysFromEpoch = 227014 daysMeasure.
	self assert: (DhuAlHijja thirtieth , 1300) numberOfDaysFromEpoch = 687690 daysMeasure.
	self assert: (Muharram first , 1428) numberOfDaysFromEpoch = 732695 daysMeasure