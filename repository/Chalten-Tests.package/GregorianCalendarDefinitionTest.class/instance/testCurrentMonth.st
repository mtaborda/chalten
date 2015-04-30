test dates accessing
testCurrentMonth
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: GregorianCalendar.
	self assert: GregorianCalendar currentMonth = gregorianToday month