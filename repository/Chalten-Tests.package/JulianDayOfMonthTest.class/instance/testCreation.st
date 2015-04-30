test instance creation
testCreation

	self assert:
		(DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) month = calendar january.
	self assert: (DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) dayNumber = 1.
	self assert:
		(DayOfMonth month: calendar december dayNumber: 31) month = calendar december.
	self assert: (DayOfMonth month: calendar december dayNumber: 31) dayNumber = 31.
	self assert:
		(DayOfMonth month: calendar february dayNumber: 29) month = calendar february.
	self assert: (DayOfMonth month: calendar february dayNumber: 29) dayNumber = 29