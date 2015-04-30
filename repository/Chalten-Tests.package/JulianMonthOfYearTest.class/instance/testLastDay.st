test accessing
testLastDay
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) lastDay = calendar friday.
	self assert: (MonthOfYear februaryOf: 2004 asJulianYear) lastDay = calendar saturday.
	self assert: (MonthOfYear februaryOf: 2005 asJulianYear) lastDay = calendar sunday