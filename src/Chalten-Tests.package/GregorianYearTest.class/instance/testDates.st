test accessing
testDates
	self assert: 2007 asGregorianYear dates first = (January first , 2007).
	self assert: 2007 asGregorianYear dates last = (December thirtyfirst , 2007).
	self assert: 2003 asGregorianYear dates first = (January first , 2003).
	self assert: 2003 asGregorianYear dates last = (December thirtyfirst , 2003)