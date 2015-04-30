test querying
testInvalidPreviousANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 2004 asIslamicYear previous: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 2004 asIslamicYear previous: (anyUnit with: 1) ] raise: CanNotConvertMeasureException