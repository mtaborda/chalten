test enumerating
testNextANumberOfDays
	self assert: (December thirtyfirst next: 7 daysMeasure) = January seventh.
	self assert: (February twentyeighth next: 7 daysMeasure) = March seventh.
	self assert: (January first next: -1 dayMeasure) = December thirtyfirst.
	self assert: (January first next: -32 daysMeasure) = November thirtieth