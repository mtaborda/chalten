test year accessing
testYearNumberFromFixed

	self assert: (GregorianCalendar yearNumberFromFixed: 1) = 1.
	self assert: (GregorianCalendar yearNumberFromFixed: 36) = 1.
	self assert: (GregorianCalendar yearNumberFromFixed: 360) = 1.
	self assert: (GregorianCalendar yearNumberFromFixed: 365) = 1.
	self assert: (GregorianCalendar yearNumberFromFixed: 366) = 2.
	self assert: (GregorianCalendar yearNumberFromFixed: 370) = 2.
	self assert: (GregorianCalendar yearNumberFromFixed: 730) = 2.
	self assert: (GregorianCalendar yearNumberFromFixed: 731) = 3.
	self assert: (GregorianCalendar yearNumberFromFixed: 1095) = 3.
	self assert: (GregorianCalendar yearNumberFromFixed: 1096) = 4.
	self assert: (GregorianCalendar yearNumberFromFixed: 1461) = 4