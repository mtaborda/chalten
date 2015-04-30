test accessing
testMonths
	self assert: 1428 asIslamicYear months size = 12.
	self assert: 1428 asIslamicYear months first = (Muharram , 1428).
	self assert: 1428 asIslamicYear months last = (DhuAlHijja , 1428)