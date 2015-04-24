test accessing
testFirstDate
	self assert: 1428 asIslamicYear firstDate = (Muharram first , 1428).
	self assert: 1427 asIslamicYear firstDate = (Muharram first , 1427)