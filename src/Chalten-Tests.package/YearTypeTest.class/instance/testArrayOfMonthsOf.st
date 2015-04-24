test
testArrayOfMonthsOf

	| array |
	array := Array new: 3.
	array
		at: 1 put: January;
		at: 2 put: February;
		at: 3 put: March.
	self assert: (leapYearType arrayOfMonthsOf: self) = array.
	self assert: (nonleapYearType arrayOfMonthsOf: self) = array