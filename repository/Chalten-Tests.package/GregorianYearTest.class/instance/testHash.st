test comparing
testHash
	self assert: 2007 asGregorianYear hash = 2007 asGregorianYear hash.
	self deny: 2007 asGregorianYear hash = 2008 asGregorianYear hash