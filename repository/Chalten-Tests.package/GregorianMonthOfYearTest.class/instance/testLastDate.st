test accessing
testLastDate
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) lastDate = (January thirtyfirst , 2004).
	self assert: (MonthOfYear februaryOf: 2004 asGregorianYear) lastDate = (February twentyninth , 2004).
	self assert: (MonthOfYear februaryOf: 2005 asGregorianYear) lastDate = (February twentyeighth , 2005)