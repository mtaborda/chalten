test instance creation
testCreation

	self assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) month = calendar nisan.
	self assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) dayNumber = 1.
	self assert: (DayOfMonth month: calendar adarII dayNumber: 29) month = calendar adarII.
	self assert: (DayOfMonth month: calendar adarII dayNumber: 29) dayNumber = 29