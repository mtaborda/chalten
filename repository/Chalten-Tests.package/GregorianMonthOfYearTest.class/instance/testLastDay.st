test accessing
testLastDay
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) lastDay = calendar saturday.
	self assert: (MonthOfYear februaryOf: 2004 asGregorianYear) lastDay = calendar sunday.
	self assert: (MonthOfYear februaryOf: 2005 asGregorianYear) lastDay = calendar monday