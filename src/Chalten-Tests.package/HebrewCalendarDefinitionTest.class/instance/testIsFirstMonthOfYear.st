test year testing
testIsFirstMonthOfYear

	self assert: (HebrewCalendar isFirstMonthOfYear: Tishri).
	self deny: (HebrewCalendar isFirstMonthOfYear: Nisan).
	self deny: (HebrewCalendar isFirstMonthOfYear: Elul)