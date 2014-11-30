test querying
testPreviousANumberOfYears
	self assert: (2004 asIslamicYear previous: zeroYears) = 2004 asIslamicYear.
	self assert: (2004 asIslamicYear previous: oneYear) = 2003 asIslamicYear.
	self assert: (2004 asIslamicYear previous: tenYears) = 1994 asIslamicYear.
	self assert: (1 asIslamicYear previous: oneYear) = 0 asIslamicYear.
	self should: [ 2004 asIslamicYear previous: thirteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 2004 asIslamicYear previous: sixMonths ] raise: CanNotConvertMeasureException