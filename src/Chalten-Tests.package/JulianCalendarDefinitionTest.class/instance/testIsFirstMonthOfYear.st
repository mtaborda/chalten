test year testing
testIsFirstMonthOfYear

	self assert: (JulianCalendar isFirstMonthOfYear: JulianJanuary).
	self deny: (JulianCalendar isFirstMonthOfYear: JulianMay).
	self deny: (JulianCalendar isFirstMonthOfYear: JulianDecember)