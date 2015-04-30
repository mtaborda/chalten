test querying
testInvalidNextANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 2007 asGregorianYear next: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asGregorianYear next: (anyUnit with: 1) ] raise: CanNotConvertMeasureException