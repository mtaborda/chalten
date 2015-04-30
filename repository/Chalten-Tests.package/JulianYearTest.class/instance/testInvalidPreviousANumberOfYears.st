test querying
testInvalidPreviousANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 2007 asJulianYear previous: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asJulianYear previous: (anyUnit with: 1) ] raise: CanNotConvertMeasureException