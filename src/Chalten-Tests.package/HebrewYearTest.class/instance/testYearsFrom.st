test querying
testYearsFrom
	self assert: (5767 asHebrewYear distanceFrom: 5766 asHebrewYear) = oneYear.
	self assert: (5767 asHebrewYear distanceFrom: 5768 asHebrewYear) = oneYear negated.
	self assert: (5767 asHebrewYear distanceFrom: 5767 asHebrewYear) = zeroYears.
	self assert: (-1 asHebrewYear distanceFrom: 0 asHebrewYear) = oneYear negated.
	self assert: (1 asHebrewYear distanceFrom: 0 asHebrewYear) = oneYear