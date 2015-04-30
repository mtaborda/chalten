test querying
testDaysTo
	self assert: (January first , 2007 distanceTo: January first , 2007) = self zeroDays.
	self assert: (January first , 2007 distanceTo: February first , 2007) = self thirtyOneDays.
	self assert: (January first , 2007 distanceTo: March first , 2007) = (31 + 28) daysMeasure.
	self assert: (January first , 2007 distanceTo: January first , 2008) = 365 daysMeasure.
	self assert: (January first , 2008 distanceTo: January first , 2009) = 366 daysMeasure.
	self assert: (January first , 2004 distanceTo: January first , 2003) = -365 daysMeasure.
	self assert: (January first , 2005 distanceTo: January first , 2004) = -366 daysMeasure.
	self assert: (January first , 2005 distanceTo: TheBeginningOfTime) = MinusInfinity daysMeasure.
	self assert: (January first , 2005 distanceTo: TheEndOfTime) = Infinity daysMeasure