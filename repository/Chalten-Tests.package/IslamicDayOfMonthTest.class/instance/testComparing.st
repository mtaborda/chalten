test comparing
testComparing

	| firstDayOfFirstMonth secondDayOfFirstMonth lastDayOfFirstMonth firstDayOfSecondMonth |
	firstDayOfFirstMonth := DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar.
	secondDayOfFirstMonth := DayOfMonth monthNumber: 1 dayNumber: 2 calendar: calendar.
	lastDayOfFirstMonth := DayOfMonth monthNumber: 1 dayNumber: 30 calendar: calendar.
	firstDayOfSecondMonth := DayOfMonth monthNumber: 2 dayNumber: 1 calendar: calendar.
	
	self assert: firstDayOfFirstMonth < secondDayOfFirstMonth.
	self assert: lastDayOfFirstMonth < firstDayOfSecondMonth.
	self deny: firstDayOfFirstMonth < firstDayOfFirstMonth.
	
	self should: [ firstDayOfFirstMonth > YaumAlAhad ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YaumAlAhad class
				with: YaumAlAhad
				with: firstDayOfFirstMonth class
				with: firstDayOfFirstMonth) ].
	
	self should: [ lastDayOfFirstMonth < Muharram ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: lastDayOfFirstMonth class
				with: lastDayOfFirstMonth
				with: Muharram class
				with: Muharram) ]