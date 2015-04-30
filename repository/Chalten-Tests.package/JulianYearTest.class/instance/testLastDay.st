test accessing
testLastDay
	self assert: 2008 asJulianYear lastDay = (JulianDecember thirtyfirst , 2008) day.
	self assert: 2007 asJulianYear lastDay = (JulianDecember thirtyfirst , 2007) day