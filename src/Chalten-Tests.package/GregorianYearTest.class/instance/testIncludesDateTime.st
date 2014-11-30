test includes
testIncludesDateTime
	self assert: (2007 asGregorianYear includes: (January first , 2007) atMidnight).
	self assert: (2007 asGregorianYear includes: (December thirtyfirst , 2007) atLastTimeOfDay).
	self deny: (2007 asGregorianYear includes: (January first , 2008) atMidnight).
	self deny: (2007 asGregorianYear includes: (December thirtyfirst , 2006) atLastTimeOfDay)