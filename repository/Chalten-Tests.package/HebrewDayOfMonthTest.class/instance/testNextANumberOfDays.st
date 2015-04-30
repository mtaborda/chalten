test enumerating
testNextANumberOfDays
	self assert: (Adar twentyninth next: 7 daysMeasure) = Nisan seventh.
	self assert: (Iyyar twentyninth next: 7 daysMeasure) = Sivan seventh.
	self assert: (Nisan first next: -1 dayMeasure) = Adar twentyninth.
	self assert: (Nisan first next: -32 daysMeasure) = Shevat twentyeighth