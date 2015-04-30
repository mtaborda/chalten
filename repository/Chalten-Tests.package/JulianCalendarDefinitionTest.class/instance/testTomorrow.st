test dates accessing
testTomorrow
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: GregorianCalendar.
	self assert: JulianCalendar tomorrow 
				= (JulianCalendar convertToJulianDate: gregorianToday) next