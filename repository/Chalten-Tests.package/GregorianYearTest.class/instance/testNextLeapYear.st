test querying
testNextLeapYear
	self assert: 2003 asGregorianYear nextLeapYear = 2004 asGregorianYear.
	self assert: 2004 asGregorianYear nextLeapYear = 2008 asGregorianYear.
	self assert: 1899 asGregorianYear nextLeapYear = 1904 asGregorianYear