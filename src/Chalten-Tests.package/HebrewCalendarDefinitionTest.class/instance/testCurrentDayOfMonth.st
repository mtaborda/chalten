test dates accessing
testCurrentDayOfMonth
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: GregorianCalendar.
	self assert: HebrewCalendar currentDayOfMonth 
				= (HebrewCalendar convertToHebrewDate: gregorianToday) dayOfMonth