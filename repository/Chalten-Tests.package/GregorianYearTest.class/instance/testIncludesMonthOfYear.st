test includes
testIncludesMonthOfYear
	self assert: (2007 asGregorianYear includes: January , 2007).
	self assert: (2007 asGregorianYear includes: December , 2007).
	self deny: (2007 asGregorianYear includes: January , 2008).
	self deny: (2007 asGregorianYear includes: December , 2006)