test accessing
testNumberOfDaysFromEpoch
	self assert: (Tishri first , 1) numberOfDaysFromEpoch = -1373428 daysMeasure.
	self assert: (Elul twentyninth , 1300) numberOfDaysFromEpoch = -898607 daysMeasure.
	self assert: (Nisan first , 5767) numberOfDaysFromEpoch = 732754 daysMeasure