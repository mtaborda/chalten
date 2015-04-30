testing
testTo
	self assert: (TimeSpan from: midnight duration: oneHour) to = (TimeOfDay hours: 1).
	self assert: (TimeSpan from: TimeOfDay noon duration: oneHour) to = (TimeOfDay hours: 13).
	self assert: (TimeSpan from: (TimeOfDay hours: 1) duration: 10 hoursMeasure) to = (TimeOfDay hours: 11)