test querying
testNextANumberOfYears
	self assert: (2004 asIslamicYear next: zeroYears) = 2004 asIslamicYear.
	self assert: (2004 asIslamicYear next: oneYear) = 2005 asIslamicYear.
	self assert: (2004 asIslamicYear next: tenYears) = 2014 asIslamicYear.
	self assert: (-1 asIslamicYear next: oneYear) = 0 asIslamicYear.
	self should: [ 2004 asIslamicYear next: thirteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 2004 asIslamicYear next: sixMonths ] raise: CanNotConvertMeasureException