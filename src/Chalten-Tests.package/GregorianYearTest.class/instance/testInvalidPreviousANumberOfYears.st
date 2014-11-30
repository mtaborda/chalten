test querying
testInvalidPreviousANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 2007 asGregorianYear previous: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asGregorianYear previous: (anyUnit with: 1) ] raise: CanNotConvertMeasureException