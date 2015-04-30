test enumerating
testPreviousInANumberOfDays

	self assert: (monday previous: oneDay) = sunday.
	self assert: (monday previous: twoDays) = saturday.
	self assert: (monday previous: 6 daysMeasure) = tuesday.
	self assert: (monday previous: sevenDays) = monday.
	self assert: (sunday previous: 6 daysMeasure) = monday.
	self assert: (sunday previous: 7 daysMeasure) = sunday.
	self assert: (sunday previous: 14 daysMeasure) = sunday.
	self assert: (saturday previous: 6 daysMeasure) = sunday.
	self assert: (saturday previous: 7 daysMeasure) = saturday.
	self assert: (saturday previous: 14 daysMeasure) = saturday