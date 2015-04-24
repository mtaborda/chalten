test accessing
testFirstDay
	self assert: 1428 asIslamicYear firstDay = (Muharram first , 1428) day.
	self assert: 1427 asIslamicYear firstDay = (Muharram first , 1427) day