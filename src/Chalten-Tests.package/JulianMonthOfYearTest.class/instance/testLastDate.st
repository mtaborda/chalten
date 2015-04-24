test accessing
testLastDate
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) lastDate = (JulianJanuary thirtyfirst , 2004).
	self assert: (MonthOfYear februaryOf: 2004 asJulianYear) lastDate = (JulianFebruary twentyninth , 2004).
	self assert: (MonthOfYear februaryOf: 2005 asJulianYear) lastDate = (JulianFebruary twentyeighth , 2005)