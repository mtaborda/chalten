test comparing
testHash
	self assert: (MonthOfYear nisanOf: 5768 asHebrewYear) hash = (MonthOfYear nisanOf: 5768 asHebrewYear) hash.
	self assert: (MonthOfYear nisanOf: 5767 asHebrewYear) hash = (MonthOfYear nisanOf: 5767 asHebrewYear) hash