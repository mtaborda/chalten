test comparing
testEqual
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) = (January , 2004).
	self deny: (MonthOfYear januaryOf: 2004 asGregorianYear) = (January , 2005)