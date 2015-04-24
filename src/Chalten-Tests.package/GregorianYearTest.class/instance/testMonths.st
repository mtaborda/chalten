test accessing
testMonths
	self assert: 2008 asGregorianYear months size = 12.
	self assert: 2008 asGregorianYear months first = (January , 2008).
	self assert: 2008 asGregorianYear months last = (December , 2008)