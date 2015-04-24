test querying
testPreviousANumberOfYears
	self assert: (2007 asGregorianYear previous: zeroYears) = 2007 asGregorianYear.
	self assert: (2007 asGregorianYear previous: oneYear) = 2006 asGregorianYear.
	self assert: (2007 asGregorianYear previous: tenYears) = 1997 asGregorianYear.
	self assert: (1 asGregorianYear previous: oneYear) = 0 asGregorianYear.
	self should: [ 2007 asGregorianYear previous: thirteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asGregorianYear previous: sixMonths ] raise: CanNotConvertMeasureException