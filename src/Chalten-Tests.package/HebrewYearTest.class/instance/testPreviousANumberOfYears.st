test querying
testPreviousANumberOfYears
	self assert: (5767 asHebrewYear previous: zeroYears) = 5767 asHebrewYear.
	self assert: (5767 asHebrewYear previous: oneYear) = 5766 asHebrewYear.
	self assert: (5767 asHebrewYear previous: tenYears) = 5757 asHebrewYear.
	self assert: (1 asHebrewYear previous: oneYear) = 0 asHebrewYear.
	self should: [ 5767 asHebrewYear previous: fourteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 5767 asHebrewYear previous: sixMonths ] raise: CanNotConvertMeasureException