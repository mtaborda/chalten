test querying
testInvalidNextANumberOfYears
	| anyUnit |
	anyUnit := BaseUnit named: 'Any Unit'.
	self should: [ 5767 asHebrewYear next: 1 ] raise: CanNotConvertMeasureException.
	self should: [ 5767 asHebrewYear next: (anyUnit with: 1) ] raise: CanNotConvertMeasureException