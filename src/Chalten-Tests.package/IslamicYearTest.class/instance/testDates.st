test accessing
testDates
	self assert: 1428 asIslamicYear dates first = (Muharram first , 1428).
	self assert: 1428 asIslamicYear dates last = (DhuAlHijja thirtieth , 1428).
	self assert: 1427 asIslamicYear dates first = (Muharram first , 1427).
	self assert: 1427 asIslamicYear dates last = (DhuAlHijja twentyninth , 1427)