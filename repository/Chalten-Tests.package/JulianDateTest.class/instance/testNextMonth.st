test enumerating
testNextMonth
	| date |
	date := JulianJanuary first , 2007.
	self assert: (date nextMonth: 1 monthMeasure) = (JulianFebruary first , 2007).
	self assert: (date nextMonth: 2 monthsMeasure) = (JulianMarch first , 2007).
	self assert: (date nextMonth: 3 monthsMeasure) = (JulianApril first , 2007).
	self assert: (date nextMonth: 4 monthsMeasure) = (JulianMay first , 2007).
	self assert: (date nextMonth: 5 monthsMeasure) = (JulianJune first , 2007).
	self assert: (date nextMonth: 6 monthsMeasure) = (JulianJuly first , 2007).
	self assert: (date nextMonth: 7 monthsMeasure) = (JulianAugust first , 2007).
	self assert: (date nextMonth: 8 monthsMeasure) = (JulianSeptember first , 2007).
	self assert: (date nextMonth: 9 monthsMeasure) = (JulianOctober first , 2007).
	self assert: (date nextMonth: 10 monthsMeasure) = (JulianNovember first , 2007).
	self assert: (date nextMonth: 11 monthsMeasure) = (JulianDecember first , 2007).
	self assert: (date nextMonth: 12 monthsMeasure) = (JulianJanuary first , 2008)