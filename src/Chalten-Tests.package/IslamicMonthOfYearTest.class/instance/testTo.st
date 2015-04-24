test interval protocol
testTo
	| interval |
	interval := (MonthOfYear muharramOf: 2004 asIslamicYear) to: (MonthOfYear safarOf: 2004 asIslamicYear).
	self assert: interval from = (MonthOfYear muharramOf: 2004 asIslamicYear).
	self assert: interval to = (MonthOfYear safarOf: 2004 asIslamicYear).
	self assert: interval by = oneMonth