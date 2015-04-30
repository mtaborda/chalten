test dates accessing
testTomorrow
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: GregorianCalendar.
	self assert: HebrewCalendar tomorrow 
				= (HebrewCalendar convertToHebrewDate: gregorianToday) next