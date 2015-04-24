test accessing
testFirstDate
	self assert: 2008 asJulianYear firstDate = (JulianJanuary first , 2008).
	self assert: 2007 asJulianYear firstDate = (JulianJanuary first , 2007)