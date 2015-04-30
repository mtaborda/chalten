test
testIsValidDayNumber

	self assert: (adarDefinition isValidDayNumber: 29).
	self assert: (adarIDefinition isValidDayNumber: 30).
	self assert: (adarIIDefinition isValidDayNumber: 29).
	
	self deny: (adarDefinition isValidDayNumber: 0).
	self deny: (adarIDefinition isValidDayNumber: -1).
	self deny: (adarIIDefinition isValidDayNumber: 32)