testing
testAccessing

	self assert: (TimeSpan from: midnight duration: oneHour) from = midnight.
	self assert: (TimeSpan from: midnight duration: oneHour) duration = oneHour