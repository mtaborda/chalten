test includes
testIncludesDate
	self assert: (2007 asGregorianYear includes: January first , 2007).
	self assert: (2007 asGregorianYear includes: December thirtyfirst , 2007).
	self deny: (2007 asGregorianYear includes: January first , 2008).
	self deny: (2007 asGregorianYear includes: December thirtyfirst , 2006)