test year testing
testIsFirstMonthOfYear

	self assert: (IslamicCalendar isFirstMonthOfYear: Muharram).
	self deny: (IslamicCalendar isFirstMonthOfYear: Ramadan).
	self deny: (IslamicCalendar isFirstMonthOfYear: DhuAlHijja)