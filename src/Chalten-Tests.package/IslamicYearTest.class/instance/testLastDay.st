test accessing
testLastDay
	self assert: 1428 asIslamicYear lastDay = (DhuAlHijja thirtieth , 1428) day.
	self assert: 1427 asIslamicYear lastDay = (DhuAlHijja twentyninth , 1427) day