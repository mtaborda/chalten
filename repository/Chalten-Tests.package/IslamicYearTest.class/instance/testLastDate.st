test accessing
testLastDate
	self assert: 1428 asIslamicYear lastDate = (DhuAlHijja thirtieth , 1428).
	self assert: 1427 asIslamicYear lastDate = (DhuAlHijja twentyninth , 1427)