instance creation - private
monthOfYearWithYearNumber: aYearNumber monthNumber: aMonthNumber calendar: aCalendar

	| year |
	year := ChaltenYear number: aYearNumber calendar: aCalendar.
	^year monthNumbered: aMonthNumber