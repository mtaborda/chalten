test comparing
testEqual
	self assert: (MonthOfYear muharramOf: 2004 asIslamicYear) = (MonthOfYear muharramOf: 2004 asIslamicYear).
	self assert: (MonthOfYear muharramOf: 2003 asIslamicYear) = (MonthOfYear muharramOf: 2003 asIslamicYear)