test accessing
testFirstDate
	self assert: 2008 asGregorianYear firstDate = (January first , 2008).
	self assert: 2007 asGregorianYear firstDate = (January first , 2007)