test querying
testNextANumberOfYears
	self assert: (5767 asHebrewYear next: zeroYears) = 5767 asHebrewYear.
	self assert: (5767 asHebrewYear next: oneYear) = 5768 asHebrewYear.
	self assert: (5767 asHebrewYear next: tenYears) = 5777 asHebrewYear.
	self assert: (-1 asHebrewYear next: oneYear) = 0 asHebrewYear.
	self should: [ 5767 asHebrewYear next: fourteenMonths ] raise: CanNotConvertMeasureException.
	self should: [ 5767 asHebrewYear next: sixMonths ] raise: CanNotConvertMeasureException