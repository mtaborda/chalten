test
testMonthNumberedIn

	self assert: (leapYearType monthNumbered: 5 in: self) = May.
	self assert: (nonleapYearType monthNumbered: 5 in: self) = May