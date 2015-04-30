test instance creation
testCreation
	| year1428 muharramOf1428 |
	year1428 := 1428 asIslamicYear.
	muharramOf1428 := MonthOfYear muharramOf: year1428.
	self
		assert:
			(FixedDate
				yearNumber: 1428
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) monthOfYear = muharramOf1428.
	self
		assert:
			(FixedDate
				yearNumber: 1428
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) dayNumber = 1.
	self assert: (FixedDate monthOfYear: (MonthOfYear muharramOf: year1428) dayNumber: 1) monthOfYear = muharramOf1428.
	self assert: (FixedDate monthOfYear: (MonthOfYear muharramOf: year1428) dayNumber: 1) dayNumber = 1.
	self assert: (FixedDate year: year1428 month: self muharram dayNumber: 1) monthOfYear = muharramOf1428.
	self assert: (FixedDate year: year1428 month: self muharram dayNumber: 1) dayNumber = 1.
	self assert: (FixedDate yearNumber: 1428 month: self muharram dayNumber: 1) monthOfYear = muharramOf1428.
	self assert: (FixedDate yearNumber: 1428 month: self muharram dayNumber: 1) dayNumber = 1