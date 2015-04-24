test querying
testNext
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) next = (February , 2004).
	self assert: (MonthOfYear decemberOf: 2004 asGregorianYear) next = (January , 2005)