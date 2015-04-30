test year testing
testIsFirstMonthOfYear

	self assert: (GregorianCalendar isFirstMonthOfYear: January).
	self deny: (GregorianCalendar isFirstMonthOfYear: May).
	self deny: (GregorianCalendar isFirstMonthOfYear: December)