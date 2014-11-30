test instance creation
testCreation
	| year2007 januaryOf2007 |
	year2007 := 2007 asGregorianYear.
	januaryOf2007 := January ofYear: year2007.
	self
		assert:
			(FixedDate
				yearNumber: 2007
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) monthOfYear = januaryOf2007.
	self
		assert:
			(FixedDate
				yearNumber: 2007
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) dayNumber = 1.
	self assert: (FixedDate monthOfYear: (January ofYear: year2007) dayNumber: 1) monthOfYear = januaryOf2007.
	self assert: (FixedDate monthOfYear: (January ofYear: year2007) dayNumber: 1) dayNumber = 1.
	self assert: (FixedDate year: year2007 month: self january dayNumber: 1) monthOfYear = januaryOf2007.
	self assert: (FixedDate year: year2007 month: self january dayNumber: 1) dayNumber = 1.
	self assert: (FixedDate yearNumber: 2007 month: self january dayNumber: 1) monthOfYear = januaryOf2007.
	self assert: (FixedDate yearNumber: 2007 month: self january dayNumber: 1) dayNumber = 1