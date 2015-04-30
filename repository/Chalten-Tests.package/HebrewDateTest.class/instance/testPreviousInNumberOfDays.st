test enumerating
testPreviousInNumberOfDays
	self assert: (Nisan first , 1 previous: self tenDays) = (Adar twentieth , 1).
	self assert: (Nisan first , 5767 previous: self twentyNineDays) = (Adar first , 5767).
	self assert: (Nisan first , 5767 previous: self thirtyDays) = (Shevat thirtieth , 5767).
	self assert: (Nisan first , 5767 previous: 356 daysMeasure) = (Adar twentyninth , 5766).
	self assert: (Nisan first , 5766 previous: 356 daysMeasure) = (AdarII twentyeighth , 5765).
	self assert: (Nisan first , 5767 previous: 0 daysMeasure) = (Nisan first , 5767)