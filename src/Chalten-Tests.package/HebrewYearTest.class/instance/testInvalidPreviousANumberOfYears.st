test querying
testInvalidPreviousANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 5767 asHebrewYear previous: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 5767 asHebrewYear previous: (anyUnit with: 1) ] raise: CanNotConvertMeasureException