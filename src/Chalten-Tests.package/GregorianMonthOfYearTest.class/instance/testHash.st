test comparing
testHash
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) hash = (January , 2004) hash.
	self deny: (MonthOfYear januaryOf: 2004 asGregorianYear) hash = (January , 2005) hash