test month of year accessing
testLastMonthOf
	| year |
	year := 1428 asIslamicYear.
	self assert: (IslamicCalendar lastMonthOf: year) = (DhuAlHijja , 1428)