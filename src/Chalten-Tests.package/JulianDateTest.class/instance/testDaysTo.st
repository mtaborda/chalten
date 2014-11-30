test querying
testDaysTo
	self assert: (JulianJanuary first , 2007 distanceTo: JulianJanuary first , 2007) = self zeroDays.
	self assert: (JulianJanuary first , 2007 distanceTo: JulianFebruary first , 2007) = self thirtyOneDays.
	self assert: (JulianJanuary first , 2007 distanceTo: JulianMarch first , 2007) = (31 + 28) daysMeasure.
	self assert: (JulianJanuary first , 2007 distanceTo: JulianJanuary first , 2008) = 365 daysMeasure.
	self assert: (JulianJanuary first , 2008 distanceTo: JulianJanuary first , 2009) = 366 daysMeasure.
	self assert: (JulianJanuary first , 2004 distanceTo: JulianJanuary first , 2003) = -365 daysMeasure.
	self assert: (JulianJanuary first , 2005 distanceTo: JulianJanuary first , 2004) = -366 daysMeasure.
	self assert: (JulianJanuary first , 2005 distanceTo: TheBeginningOfTime) = MinusInfinity daysMeasure.
	self assert: (JulianJanuary first , 2005 distanceTo: TheEndOfTime) = Infinity daysMeasure