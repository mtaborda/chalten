testing
testValue

	self assert: (TimeSpan from: midnight duration: oneHour) value = (TimeSpan from: midnight duration: oneHour).
	self assert: (TimeSpan from: midnight duration: oneHour) value = (TimeSpan from: midnight duration: oneHour)