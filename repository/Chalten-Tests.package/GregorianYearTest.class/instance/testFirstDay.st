test accessing
testFirstDay
	self assert: 2008 asGregorianYear firstDay = (January first , 2008) day.
	self assert: 2007 asGregorianYear firstDay = (January first , 2007) day