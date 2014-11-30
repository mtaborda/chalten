test accessing
testDates
	self assert: 2007 asJulianYear dates first = (JulianJanuary first , 2007).
	self assert: 2007 asJulianYear dates last = (JulianDecember thirtyfirst , 2007).
	self assert: 2003 asJulianYear dates first = (JulianJanuary first , 2003).
	self assert: 2003 asJulianYear dates last = (JulianDecember thirtyfirst , 2003)