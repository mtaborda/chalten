test querying
testInvalidNextANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 2004 asIslamicYear next: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 2004 asIslamicYear next: (anyUnit with: 1) ] raise: CanNotConvertMeasureException