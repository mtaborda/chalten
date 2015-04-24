test
testPrintOn

	| rule |

	rule := ArgentineLaw23555Rule monthNumber: 9 dayNumber: 16.
	
	self assert: rule printString = 'September 16 transferable holiday by Argentine Law 23555'