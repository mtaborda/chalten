test dates accessing
testYesterday
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: GregorianCalendar.
	self assert: JulianCalendar yesterday 
				= (JulianCalendar convertToJulianDate: gregorianToday) previous