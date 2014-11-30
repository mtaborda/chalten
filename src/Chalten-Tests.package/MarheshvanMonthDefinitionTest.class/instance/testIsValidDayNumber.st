test
testIsValidDayNumber

	self assert: (shortDefinition isValidDayNumber: 29).
	self assert: (longDefinition isValidDayNumber: 30).
	
	self deny: (shortDefinition isValidDayNumber: 0).
	self deny: (longDefinition isValidDayNumber: -1).
	self deny: (longDefinition isValidDayNumber: 31)