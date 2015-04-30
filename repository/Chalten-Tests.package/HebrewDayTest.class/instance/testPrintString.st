test printing
testPrintString
	self 
		assert: (Day 
				named: 'One Hebrew Day Name'
				positionInWeek: 1
				calendar: calendar) printString 
				= 'One Hebrew Day Name'