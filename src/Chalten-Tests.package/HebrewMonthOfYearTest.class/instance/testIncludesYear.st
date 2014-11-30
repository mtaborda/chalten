test querying
testIncludesYear
	self should: [ (MonthOfYear yearNumber: 5767 monthNumber: 1) includes: 5767 asHebrewYear ] raise: Exception