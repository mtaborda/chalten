test accessing
testLastDay
	self assert: 2008 asGregorianYear lastDay = (December thirtyfirst , 2008) day.
	self assert: 2007 asGregorianYear lastDay = (December thirtyfirst , 2007) day