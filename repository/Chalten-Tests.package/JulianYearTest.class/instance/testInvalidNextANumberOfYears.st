test querying
testInvalidNextANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 2007 asJulianYear next: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 2007 asJulianYear next: (anyUnit with: 1) ] raise: CanNotConvertMeasureException