test querying
testNextANumberOfYears
	self assert: (2007 asJulianYear next: zeroYears) = 2007 asJulianYear.
	self assert: (2007 asJulianYear next: oneYear) = 2008 asJulianYear.
	self assert: (2007 asJulianYear next: tenYears) = 2017 asJulianYear.
	self assert: (-1 asJulianYear next: oneYear) = 1 asJulianYear.
	self should: [ 2007 asJulianYear next: thirteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asJulianYear next: sixMonths ] raise: CanNotConvertMeasureException