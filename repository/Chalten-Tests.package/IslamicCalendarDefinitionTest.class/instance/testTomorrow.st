test dates accessing
testTomorrow
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: GregorianCalendar.
	self assert: IslamicCalendar tomorrow 
				= (IslamicCalendar convertToIslamicDate: gregorianToday) next