test
testIsValidDayNumber

	self assert: (monthDefinition isValidDayNumber: 29).
	self assert: (monthDefinition isValidDayNumber: 30).
	self assert: (otherDefinition isValidDayNumber: 29).
	self assert: (otherDefinition isValidDayNumber: 30).
	
	self deny: (monthDefinition isValidDayNumber: 0).
	self deny: (monthDefinition isValidDayNumber: -1).
	self deny: (otherDefinition isValidDayNumber: 32).
	self deny: (otherDefinition isValidDayNumber: -2)
