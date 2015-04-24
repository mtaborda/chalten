test accessing
testLastMonth
	self assert: 2008 asGregorianYear lastMonth = (December , 2008).
	self assert: 2007 asGregorianYear lastMonth = (December , 2007)