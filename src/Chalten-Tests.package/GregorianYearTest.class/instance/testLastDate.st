test accessing
testLastDate
	self assert: 2008 asGregorianYear lastDate = (December thirtyfirst , 2008).
	self assert: 2007 asGregorianYear lastDate = (December thirtyfirst , 2007)