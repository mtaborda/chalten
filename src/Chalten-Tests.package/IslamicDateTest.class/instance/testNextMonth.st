test enumerating
testNextMonth
	| day |
	day := Muharram first , 1428.
	self assert: (day nextMonth: 1 monthMeasure) = (Safar first , 1428).
	self assert: (day nextMonth: 2 monthsMeasure) = (RabiI first , 1428).
	self assert: (day nextMonth: 3 monthsMeasure) = (RabiII first , 1428).
	self assert: (day nextMonth: 4 monthsMeasure) = (JumadaI first , 1428).
	self assert: (day nextMonth: 5 monthsMeasure) = (JumadaII first , 1428).
	self assert: (day nextMonth: 6 monthsMeasure) = (Rajab first , 1428).
	self assert: (day nextMonth: 7 monthsMeasure) = (Shaban first , 1428).
	self assert: (day nextMonth: 8 monthsMeasure) = (Ramadan first , 1428).
	self assert: (day nextMonth: 9 monthsMeasure) = (Shawwal first , 1428).
	self assert: (day nextMonth: 10 monthsMeasure) = (DhuAlQada first , 1428).
	self assert: (day nextMonth: 11 monthsMeasure) = (DhuAlHijja first , 1428).
	self assert: (day nextMonth: 12 monthsMeasure) = (Muharram first , 1429)