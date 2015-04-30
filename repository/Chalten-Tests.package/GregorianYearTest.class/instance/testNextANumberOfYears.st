test querying
testNextANumberOfYears
	self assert: (2007 asGregorianYear next: zeroYears) = 2007 asGregorianYear.
	self assert: (2007 asGregorianYear next: oneYear) = 2008 asGregorianYear.
	self assert: (2007 asGregorianYear next: tenYears) = 2017 asGregorianYear.
	self assert: (-1 asGregorianYear next: oneYear) = 0 asGregorianYear.
	self should: [ 2007 asGregorianYear next: thirteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asGregorianYear next: sixMonths ] raise: CanNotConvertMeasureException