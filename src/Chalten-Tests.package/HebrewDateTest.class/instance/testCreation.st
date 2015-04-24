test instance creation
testCreation
	| year5767 nisanOf5767 |
	year5767 := 5767 asHebrewYear.
	nisanOf5767 := MonthOfYear nisanOf: year5767.
	self
		assert:
			(FixedDate
				yearNumber: 5767
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) monthOfYear = nisanOf5767.
	self
		assert:
			(FixedDate
				yearNumber: 5767
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) dayNumber = 1.
	self assert: (FixedDate monthOfYear: (MonthOfYear nisanOf: year5767) dayNumber: 1) monthOfYear = nisanOf5767.
	self assert: (FixedDate monthOfYear: (MonthOfYear nisanOf: year5767) dayNumber: 1) dayNumber = 1.
	self assert: (FixedDate year: year5767 month: self nisan dayNumber: 1) monthOfYear = nisanOf5767.
	self assert: (FixedDate year: year5767 month: self nisan dayNumber: 1) dayNumber = 1.
	self assert: (FixedDate yearNumber: 5767 month: self nisan dayNumber: 1) monthOfYear = nisanOf5767.
	self assert: (FixedDate yearNumber: 5767 month: self nisan dayNumber: 1) dayNumber = 1