test accessing
testNumberOfDays
	self assert: 2008 asGregorianYear numberOfDays = 366 daysMeasure.
	self assert: 2007 asGregorianYear numberOfDays = 365 daysMeasure