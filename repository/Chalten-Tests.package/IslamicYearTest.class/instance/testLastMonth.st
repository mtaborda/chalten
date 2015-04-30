test accessing
testLastMonth
	self assert: 1428 asIslamicYear lastMonth = (DhuAlHijja , 1428).
	self assert: 1427 asIslamicYear lastMonth = (DhuAlHijja , 1427)