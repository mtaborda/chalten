test comparing
testHash
	self assert: (MonthOfYear muharramOf: 2004 asIslamicYear) hash = (MonthOfYear muharramOf: 2004 asIslamicYear) hash.
	self assert: (MonthOfYear muharramOf: 2003 asIslamicYear) hash = (MonthOfYear muharramOf: 2003 asIslamicYear) hash