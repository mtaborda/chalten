test printing
testPrintString

	self assert: buenosAiresTimeZone printString = '(GMT-03:00) Buenos Aires, Georgetown'.
	self assert: universalTimeZone printString = '(GMT00:00) Universal Time Zone'