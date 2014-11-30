test enumerating
testNextMonth
	| day |
	day := Nisan first , 5767.
	self assert: (day nextMonth: 1 monthMeasure) = (Iyyar first , 5767).
	self assert: (day nextMonth: 2 monthsMeasure) = (Sivan first , 5767).
	self assert: (day nextMonth: 3 monthsMeasure) = (Tammuz first , 5767).
	self assert: (day nextMonth: 4 monthsMeasure) = (Av first , 5767).
	self assert: (day nextMonth: 5 monthsMeasure) = (Elul first , 5767).
	self assert: (day nextMonth: 6 monthsMeasure) = (Tishri first , 5768).
	self assert: (day nextMonth: 7 monthsMeasure) = (Marheshvan first , 5768).
	self assert: (day nextMonth: 8 monthsMeasure) = (Kislev first , 5768).
	self assert: (day nextMonth: 9 monthsMeasure) = (Tevet first , 5768).
	self assert: (day nextMonth: 10 monthsMeasure) = (Shevat first , 5768).
	self assert: (day nextMonth: 11 monthsMeasure) = (AdarI first , 5768).
	self assert: (day nextMonth: 12 monthsMeasure) = (AdarII first , 5768).
	self assert: (day nextMonth: 13 monthsMeasure) = (Nisan first , 5768)