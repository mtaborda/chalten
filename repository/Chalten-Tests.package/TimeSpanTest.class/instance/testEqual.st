testing
testEqual
	self assert: (TimeSpan from: midnight duration: oneHour) = (TimeSpan from: midnight duration: oneHour).
	self deny: (TimeSpan from: midnight duration: oneHour) = (TimeSpan from: noon duration: 13 hoursMeasure).
	self deny: (TimeSpan from: midnight duration: oneHour) = (TimeSpan from: midnight duration: twoSeconds)