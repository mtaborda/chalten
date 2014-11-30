testing
testPrintString

	self assert: (TimeSpan from: midnight duration: oneHour) printString = '1 hour from 00:00:00'