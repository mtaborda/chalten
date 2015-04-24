test includes
testIncludesDate
	self assert: (1429 asIslamicYear includes: Muharram first , 1429).
	self assert: (1429 asIslamicYear includes: DhuAlHijja twentyninth , 1429).
	self assert: (1428 asIslamicYear includes: Muharram first , 1428).
	self assert: (1428 asIslamicYear includes: DhuAlHijja thirtieth , 1428).
	self deny: (1428 asIslamicYear includes: Muharram first , 1429).
	self deny: (1428 asIslamicYear includes: DhuAlHijja twentyninth , 1427)