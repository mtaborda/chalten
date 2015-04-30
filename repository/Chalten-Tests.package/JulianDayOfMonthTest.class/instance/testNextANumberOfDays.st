test enumerating
testNextANumberOfDays
	self assert: (JulianDecember thirtyfirst next: 7 daysMeasure) = JulianJanuary seventh.
	self assert: (JulianFebruary twentyeighth next: 7 daysMeasure) = JulianMarch seventh.
	self assert: (JulianJanuary first next: -1 dayMeasure) = JulianDecember thirtyfirst.
	self assert: (JulianJanuary first next: -32 daysMeasure) = JulianNovember thirtieth