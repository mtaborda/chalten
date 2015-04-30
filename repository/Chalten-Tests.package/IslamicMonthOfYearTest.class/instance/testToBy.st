test interval protocol
testToBy
	| interval |
	interval := (MonthOfYear muharramOf: 2004 asIslamicYear) to: (MonthOfYear rabiIOf: 2004 asIslamicYear) by:
		twoMonths.
	self assert: interval from = (MonthOfYear muharramOf: 2004 asIslamicYear).
	self assert: interval to = (MonthOfYear rabiIOf: 2004 asIslamicYear).
	self assert: interval by = twoMonths