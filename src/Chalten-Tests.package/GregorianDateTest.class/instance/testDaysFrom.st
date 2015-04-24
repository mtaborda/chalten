test querying
testDaysFrom
	self assert: (January first , 2007 distanceFrom: January first , 2007) = self zeroDays.
	self assert: (February first , 2007 distanceFrom: January first , 2007) = self thirtyOneDays.
	self assert: (March first , 2007 distanceFrom: January first , 2007) = (31 + 28) daysMeasure.
	self assert: (January first , 2008 distanceFrom: January first , 2007) = 365 daysMeasure.
	self assert: (January first , 2009 distanceFrom: January first , 2008) = 366 daysMeasure.
	self assert: (January first , 2003 distanceFrom: January first , 2004) = -365 daysMeasure.
	self assert: (January first , 2004 distanceFrom: January first , 2005) = -366 daysMeasure.
	self assert: (TheBeginningOfTime distanceFrom: January first , 2005) = MinusInfinity daysMeasure.
	self assert: (TheEndOfTime distanceFrom: January first , 2005) = Infinity daysMeasure