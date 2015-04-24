test includes
testIncludesDateTime
	self assert: (1429 asIslamicYear includes: (Muharram first , 1429) atMidnight).
	self assert: (1429 asIslamicYear includes: (DhuAlHijja twentyninth , 1429) atLastTimeOfDay).
	self assert: (1428 asIslamicYear includes: (Muharram first , 1428) atMidnight).
	self assert: (1428 asIslamicYear includes: (DhuAlHijja thirtieth , 1428) atLastTimeOfDay).
	self deny: (1428 asIslamicYear includes: (Muharram first , 1429) atMidnight).
	self deny: (1428 asIslamicYear includes: (DhuAlHijja twentyninth , 1427) atLastTimeOfDay)