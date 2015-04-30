test querying
testPreviousANumberOfYears
	self assert: (2007 asJulianYear previous: zeroYears) = 2007 asJulianYear.
	self assert: (2007 asJulianYear previous: oneYear) = 2006 asJulianYear.
	self assert: (2007 asJulianYear previous: tenYears) = 1997 asJulianYear.
	self assert: (1 asJulianYear previous: oneYear) = -1 asJulianYear.
	self should: [ 2007 asJulianYear previous: thirteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asJulianYear previous: sixMonths ] raise: CanNotConvertMeasureException