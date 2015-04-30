test accessing
testLastDate
	self assert: (MonthOfYear muharramOf: 1428 asIslamicYear) lastDate = (Muharram thirtieth , 1428).
	self assert: (MonthOfYear dhuAlHijjaOf: 1428 asIslamicYear) lastDate = (DhuAlHijja thirtieth , 1428).
	self assert: (MonthOfYear dhuAlHijjaOf: 1427 asIslamicYear) lastDate = (DhuAlHijja twentyninth , 1427)