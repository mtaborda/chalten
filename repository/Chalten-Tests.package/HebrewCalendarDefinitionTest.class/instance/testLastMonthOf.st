test month of year accessing
testLastMonthOf
	| year |
	year := 5767 asHebrewYear.
	self assert: (HebrewCalendar lastMonthOf: year) = (Elul , 5767).
	year := 5765 asHebrewYear.
	self assert: (HebrewCalendar lastMonthOf: year) = (Elul , 5765)