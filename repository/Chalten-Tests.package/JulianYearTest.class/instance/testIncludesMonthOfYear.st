test includes
testIncludesMonthOfYear
	self assert: (2007 asJulianYear includes: JulianJanuary , 2007).
	self assert: (2007 asJulianYear includes: JulianDecember , 2007).
	self deny: (2007 asJulianYear includes: JulianJanuary , 2008).
	self deny: (2007 asJulianYear includes: JulianDecember , 2006)