instance creation
monthOfYear: aMonthOfYear dayNumber: aDayNumber calendar: aCalendar

	(aMonthOfYear isValidDayNumber: aDayNumber) 
		ifFalse: [InvalidDateException signalMonthOfYear: aMonthOfYear dayNumber: aDayNumber].
	^ self new
		initializeMonthOfYear: aMonthOfYear
		dayNumber: aDayNumber
		calendar: aCalendar