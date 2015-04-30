test querying
testPreviousLeapYear
	self assert: 2008 asGregorianYear previousLeapYear = 2004 asGregorianYear.
	self assert: 2003 asGregorianYear previousLeapYear = 2000 asGregorianYear.
	self assert: 1901 asGregorianYear previousLeapYear = 1896 asGregorianYear