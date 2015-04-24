test dates accessing
testCurrentMonthOfYear
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: GregorianCalendar.
	self assert: HebrewCalendar currentMonthOfYear 
				= (HebrewCalendar convertToHebrewDate: gregorianToday) monthOfYear