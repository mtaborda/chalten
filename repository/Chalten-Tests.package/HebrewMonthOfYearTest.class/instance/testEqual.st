test comparing
testEqual
	self assert: (MonthOfYear nisanOf: 5768 asHebrewYear) = (MonthOfYear nisanOf: 5768 asHebrewYear).
	self assert: (MonthOfYear nisanOf: 5767 asHebrewYear) = (MonthOfYear nisanOf: 5767 asHebrewYear)