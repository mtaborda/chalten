test querying
testIsLeap
	self assert: 2 asIslamicYear isLeap.
	self assert: 5 asIslamicYear isLeap.
	self assert: 7 asIslamicYear isLeap.
	self assert: 10 asIslamicYear isLeap.
	self assert: 13 asIslamicYear isLeap.
	self assert: 16 asIslamicYear isLeap.
	self assert: 18 asIslamicYear isLeap.
	self assert: 21 asIslamicYear isLeap.
	self assert: 24 asIslamicYear isLeap.
	self assert: 26 asIslamicYear isLeap.
	self assert: 29 asIslamicYear isLeap.
	self assert: 2001 asIslamicYear isLeap.
	self assert: 2004 asIslamicYear isLeap.
	self deny: 1 asIslamicYear isLeap.
	self deny: 3 asIslamicYear isLeap.
	self deny: 4 asIslamicYear isLeap.
	self deny: 22 asIslamicYear isLeap.
	self deny: 2000 asIslamicYear isLeap.
	self deny: 2007 asIslamicYear isLeap