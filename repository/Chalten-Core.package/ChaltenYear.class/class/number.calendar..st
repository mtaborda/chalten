instance creation
number: aNumber calendar: aCalendar

	aCalendar assertYearNumber: aNumber.
	^self createYear: aNumber calendar: aCalendar