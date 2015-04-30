test querying
testNext
	self assert: 2007 asGregorianYear next = 2008 asGregorianYear.
	self assert: -1 asGregorianYear next = 0 asGregorianYear