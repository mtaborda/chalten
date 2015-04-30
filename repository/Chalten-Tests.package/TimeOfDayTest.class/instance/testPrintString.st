test printing
testPrintString

	| time |
	
	time := TimeOfDay hours: 10 minutes: 11 seconds: 12.
	self assert: time printString = '10:11:12'.
	
	time := TimeOfDay hours: 07 minutes: 09 seconds: 05.
	self assert: time printString = '07:09:05'