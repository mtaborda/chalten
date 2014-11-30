test printing
testPrintString
	self 
		assert: (Day 
				named: 'One Christian Day Name'
				positionInWeek: 1
				calendar: calendar) printString 
				= 'One Christian Day Name'