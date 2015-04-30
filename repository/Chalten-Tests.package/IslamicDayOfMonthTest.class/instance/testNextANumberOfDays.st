test enumerating
testNextANumberOfDays
	self assert: (DhuAlHijja twentyninth next: 7 daysMeasure) = Muharram seventh.
	self assert: (Safar twentyninth next: 7 daysMeasure) = RabiI seventh.
	self assert: (Muharram first next: -1 dayMeasure) = DhuAlHijja twentyninth.
	self assert: (Muharram first next: -32 daysMeasure) = DhuAlQada twentyeighth