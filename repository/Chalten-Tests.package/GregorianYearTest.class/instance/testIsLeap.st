test querying
testIsLeap
	self assert: 2004 asGregorianYear isLeap.
	self assert: 2000 asGregorianYear isLeap.
	self assert: 2400 asGregorianYear isLeap.
	self deny: 1900 asGregorianYear isLeap.
	self deny: 2003 asGregorianYear isLeap.
	self deny: 2101 asGregorianYear isLeap