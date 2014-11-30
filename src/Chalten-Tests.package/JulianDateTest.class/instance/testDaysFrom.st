test querying
testDaysFrom
	self assert: (JulianJanuary first , 2007 distanceFrom: JulianJanuary first , 2007) = self zeroDays.
	self assert: (JulianFebruary first , 2007 distanceFrom: JulianJanuary first , 2007) = self thirtyOneDays.
	self assert: (JulianMarch first , 2007 distanceFrom: JulianJanuary first , 2007) = (31 + 28) daysMeasure.
	self assert: (JulianJanuary first , 2008 distanceFrom: JulianJanuary first , 2007) = 365 daysMeasure.
	self assert: (JulianJanuary first , 2009 distanceFrom: JulianJanuary first , 2008) = 366 daysMeasure.
	self assert: (JulianJanuary first , 2003 distanceFrom: JulianJanuary first , 2004) = -365 daysMeasure.
	self assert: (JulianJanuary first , 2004 distanceFrom: JulianJanuary first , 2005) = -366 daysMeasure.
	self assert: (TheBeginningOfTime distanceFrom: JulianJanuary first , 2005) = MinusInfinity daysMeasure.
	self assert: (TheEndOfTime distanceFrom: JulianJanuary first , 2005) = Infinity daysMeasure