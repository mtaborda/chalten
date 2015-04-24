test year accessing
testYearNumberFromFixed

	self assert: (JulianCalendar yearNumberFromFixed: 1) = 1.
	self assert: (JulianCalendar yearNumberFromFixed: 36) = 1.
	self assert: (JulianCalendar yearNumberFromFixed: 360) = 1.
	self assert: (JulianCalendar yearNumberFromFixed: 365) = 2.
	self assert: (JulianCalendar yearNumberFromFixed: 366) = 2.
	self assert: (JulianCalendar yearNumberFromFixed: 370) = 2.
	self assert: (JulianCalendar yearNumberFromFixed: 730) = 3.
	self assert: (JulianCalendar yearNumberFromFixed: 731) = 3.
	self assert: (JulianCalendar yearNumberFromFixed: 1095) = 4.
	self assert: (JulianCalendar yearNumberFromFixed: 1096) = 4.
	self assert: (JulianCalendar yearNumberFromFixed: 1461) = 5