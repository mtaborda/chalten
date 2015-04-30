test comparing
testHash
	self assert: 2004 asIslamicYear hash = 2004 asIslamicYear hash.
	self deny: 2004 asIslamicYear hash = 2003 asIslamicYear hash