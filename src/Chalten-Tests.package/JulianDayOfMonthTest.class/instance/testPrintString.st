test printing
testPrintString

	self assert: (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar) printString = 'December 31'