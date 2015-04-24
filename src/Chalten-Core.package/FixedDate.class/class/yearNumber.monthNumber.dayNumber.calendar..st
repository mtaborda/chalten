instance creation
yearNumber: aYearNumber monthNumber: aMonthNumber dayNumber: aDayNumber calendar: aCalendar

	^self
		monthOfYear: (self monthOfYearWithYearNumber: aYearNumber monthNumber: aMonthNumber calendar: aCalendar)
		dayNumber: aDayNumber
		calendar: aCalendar