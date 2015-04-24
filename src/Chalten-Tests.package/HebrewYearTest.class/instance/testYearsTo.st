test querying
testYearsTo
	self assert: (5767 asHebrewYear distanceTo: 5768 asHebrewYear) = oneYear.
	self assert: (5767 asHebrewYear distanceTo: 5766 asHebrewYear) = oneYear negated.
	self assert: (5767 asHebrewYear distanceTo: 5767 asHebrewYear) = zeroYears.
	self assert: (-1 asHebrewYear distanceTo: 0 asHebrewYear) = oneYear.
	self assert: (1 asHebrewYear distanceTo: 0 asHebrewYear) = oneYear negated.
	self assert: (1 asHebrewYear distanceTo: -9 asHebrewYear) = tenYears negated