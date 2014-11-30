test accessing
testFirstMonth
	self assert: 2008 asGregorianYear firstMonth = (January , 2008).
	self assert: 2007 asGregorianYear firstMonth = (January , 2007)