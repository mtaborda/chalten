test accessing
testFirstMonth
	self assert: 1428 asIslamicYear firstMonth = (Muharram , 1428).
	self assert: 1427 asIslamicYear firstMonth = (Muharram , 1427)