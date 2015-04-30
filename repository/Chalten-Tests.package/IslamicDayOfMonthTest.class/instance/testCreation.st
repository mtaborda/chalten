test instance creation
testCreation

	self assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) month = calendar muharram.
	self assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) dayNumber = 1.
	self assert: (DayOfMonth month: calendar dhuAlHijja dayNumber: 30) month = calendar dhuAlHijja.
	self assert: (DayOfMonth month: calendar dhuAlHijja dayNumber: 30) dayNumber = 30