test
testIsPrintString

	self assert: leapYearType printString = 'Leap Year'.
	self assert: nonleapYearType printString = 'Nonleap Year'