test includes
testIncludesDate
	self assert: (2007 asJulianYear includes: JulianJanuary first , 2007).
	self assert: (2007 asJulianYear includes: JulianDecember thirtyfirst , 2007).
	self deny: (2007 asJulianYear includes: JulianJanuary first , 2008).
	self deny: (2007 asJulianYear includes: JulianDecember thirtyfirst , 2006)