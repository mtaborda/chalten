test printing
testPrintString

	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds printString = 'January 1, 2004 23:59:59 {(GMT-03:00) Local Time}'.
	self assert: hourInBsAs printString = 'March 8, 2008 17:05:00 {(GMT-03:00) Buenos Aires, Georgetown}'.
	self assert: hourInGreenwich printString = 'March 8, 2008 20:05:00 {(GMT00:00) Greenwich}'