test month of year accessing
testFirstMonthOf
	| year |
	year := 1428 asIslamicYear.
	self assert: (IslamicCalendar firstMonthOf: year) = (Muharram , 1428)