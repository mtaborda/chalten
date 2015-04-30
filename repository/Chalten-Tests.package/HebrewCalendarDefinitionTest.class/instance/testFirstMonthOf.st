test month of year accessing
testFirstMonthOf
	| year |
	year := 5767 asHebrewYear.
	self assert: (HebrewCalendar firstMonthOf: year) = (Tishri , 5767).
	year := 5765 asHebrewYear.
	self assert: (HebrewCalendar firstMonthOf: year) = (Tishri , 5765)