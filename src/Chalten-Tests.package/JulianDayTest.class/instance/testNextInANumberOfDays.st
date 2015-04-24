test enumerating
testNextInANumberOfDays

	self assert: (monday next: oneDay) = tuesday.
	self assert: (monday next: twoDays) = wednesday.
	self assert: (monday next: 6 daysMeasure) = sunday.
	self assert: (monday next: sevenDays) = monday.
	self assert: (monday next: 14 daysMeasure) = monday.
	self assert: (sunday next: 21 daysMeasure) = sunday