test includes
testIncludesMonthOfYear
	self assert: (1429 asIslamicYear includes: Muharram , 1429).
	self assert: (1429 asIslamicYear includes: DhuAlHijja , 1429).
	self assert: (1428 asIslamicYear includes: Muharram , 1428).
	self assert: (1428 asIslamicYear includes: DhuAlHijja , 1428).
	self deny: (1428 asIslamicYear includes: Muharram , 1429).
	self deny: (1428 asIslamicYear includes: DhuAlHijja , 1427)