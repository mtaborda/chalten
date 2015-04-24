test accessing
testFirstMonth
	self assert: 2008 asJulianYear firstMonth = (JulianJanuary , 2008).
	self assert: 2007 asJulianYear firstMonth = (JulianJanuary , 2007)