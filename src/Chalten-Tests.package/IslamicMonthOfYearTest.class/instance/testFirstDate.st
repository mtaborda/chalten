test accessing
testFirstDate
	self assert: (MonthOfYear muharramOf: 1428 asIslamicYear) firstDate = (Muharram first , 1428)