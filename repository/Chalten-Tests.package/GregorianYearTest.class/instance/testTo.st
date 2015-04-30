test interval protocol
testTo
	| interval |
	interval := 2007 asGregorianYear to: 2010 asGregorianYear.
	self assert: interval from = 2007 asGregorianYear.
	self assert: interval to = 2010 asGregorianYear.
	self assert: interval by = oneYear