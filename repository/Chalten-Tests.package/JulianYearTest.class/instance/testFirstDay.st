test accessing
testFirstDay
	self assert: 2008 asJulianYear firstDay = (JulianJanuary first , 2008) day.
	self assert: 2007 asJulianYear firstDay = (JulianJanuary first , 2007) day